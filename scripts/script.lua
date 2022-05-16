var_s_orbx = 0
var_s_orby = 0
var_s_sun_trans = 0

var_s_sun_color_r = 0
var_s_sun_color_g = 0
var_s_sun_color_b = 0

var_s_bg_dawn_opacity = 0

var_ms_flare_angle = 0
var_ms_flare_b_angle = 0

var_s_bg_dawn_opacity = 0
var_s_bg_bluesky_opacity = 0
var_s_bg_dusk_opacity = 0
var_s_bg_moonshine_opacity = 0
var_s_bg_moonshine_bright_opacity = 0
var_s_bg_moonshine_bright_x = 0

function on_minute()

    var_s_orbx = calc_orb_x()
    var_s_orby = calc_orb_y()
    var_s_sun_trans = calc_sun_trans()

    sun_color = calc_sun_color()
    var_s_sun_color_r = sun_color[1]
    var_s_sun_color_g = sun_color[2]
    var_s_sun_color_b = sun_color[3]

    bg_opacity = calc_bg_opacity()
    var_s_bg_dawn_opacity = bg_opacity [1]
    var_s_bg_bluesky_opacity = bg_opacity[2]
    var_s_bg_dusk_opacity = bg_opacity[3]
	var_s_bg_moonshine_opacity = bg_opacity[4]
	var_s_bg_moonshine_bright_opacity = bg_opacity[5]
var_s_bg_moonshine_bright_x	 = calc_moonshine_bg_bright_x(var_s_orbx)

end


function calc_orb_x()

    local now={dtp}
    local sunrise={wsrp}
    local sunset={wssp}

    local width_px=432

    local pos_x=0

    if now < sunrise then
        pos_x =(-width_px/2)+((now/sunrise)*(width_px/4))
    elseif now >= sunrise and now < sunset then
        pos_x = (-width_px/4)+(((now-sunrise)/(sunset-sunrise))*(width_px/2))
    else
        pos_x = (width_px/4)+(((now-sunset)/(1-sunset))*(width_px/4))
    end

    return pos_x

end


function calc_orb_y()

    local now={dtp}
    local sunrise= {wsrp}
    local sunset= {wssp}

    local pos_y=0
    local height_px_offset = 38
    local heigh_px = 80

    local pi = 3.1416

    if now < sunrise then
        pos_y = math.cos(-pi+((now/sunrise)*(pi/2)))
    elseif now >= sunrise and now < sunset then
        pos_y = math.cos(-pi/2+(((now-sunrise)/(sunset-sunrise))*pi))
    else
        pos_y = math.cos((pi/2)+(((now-sunset)/(1-sunset))*(pi/2)))
    end

    pos_y = height_px_offset+(pos_y*heigh_px)*-1
    return pos_y

end

function calc_moonshine_bg_bright_x(x)

	local moonphase = {wmp}

	if(moonphase == 3) then
		return x+15
	elseif(moonphase == 5) then
		return x-15
	end

	return x
end

function calc_sun_trans()

    local now = {dtp}
    local sunrise= {wsrp}
    local sunset= {wssp}
	
	local half_hour = 0.021

    local sunrise = sunrise-half_hour
    local sunset = sunset+half_hour

    local orbstart = sunrise-half_hour
    local orbend = sunset+half_hour

    if (now >= orbstart and now <= sunrise) then
        return ((now-orbstart)/half_hour)*100

    elseif (now > sunrise and now < sunset) then
        return 100

    elseif (now >= sunset and now <= orbend) then
        return 100-((now-sunset)/half_hour)*100
    end
    return 0
end


function calc_sun_color()

    local now = {dtp}
    local sunrise= {wsrp}
    local sunset= {wssp}
    local day_sixth = (sunset-sunrise)/6

    local bright_start = sunrise+day_sixth
    local bright_end = sunset-day_sixth

    local sun_color = {100, 0, -30}

    if (now >= sunrise and now < bright_start) then
        way = ((now-sunrise)/day_sixth)
        sun_color[1] =  sun_color[1]-(sun_color[1]*way)
        sun_color[3] =  sun_color[3]-(sun_color[3]*way)

    elseif (now >= bright_start and now < bright_end) then
        sun_color = {0, 0, 0}

    elseif (now >= bright_end and now < sunset) then
        way = ((now-sunset)/day_sixth)
        sun_color[1] =  sun_color[1]+(sun_color[1]*way)
        sun_color[3] =  sun_color[3]+(sun_color[3]*way)
    end

    return sun_color

end


function calc_bg_opacity()

    local now = {dtp}
    local sunrise= {wsrp}
    local sunset= {wssp}
	local moonphase = {wmp}

    local bg_opacity = {0, 0, 0, 0, 0}
	
	local five_min = 0.0035
	local half_hour = 0.021
	local day_sixth = (sunset-sunrise)/6
	

    local dawn_start = sunrise-half_hour
	local dawn_climax = sunrise 
    local dawn_end = sunrise+day_sixth

    local skyblue_in_start = sunrise
    local skyblue_in_end = sunrise+day_sixth
    local skyblue_out_start = sunset-day_sixth
	local skyblue_out_end = sunset

    local dusk_start = sunset-day_sixth
	local dusk_climax = sunset
    local dusk_end = sunset+half_hour

    local moonset_start = sunrise-half_hour
    local moonset_end = sunrise
    local moonrise_start = sunset
    local moonrise_end = sunset+half_hour

    if(now < moonset_start or now > moonrise_end) then
        bg_opacity[4] = 100
    elseif (now >= moonset_start and now < moonset_end) then
        bg_opacity[4] = 100-(now-moonset_start)/(moonset_end - moonset_start)*100
    elseif(now > moonrise_start and now <= moonrise_end) then
        bg_opacity[4] = (now-moonrise_start)/(moonrise_end - moonrise_start)*100
    end
	
	if(moonphase == 5) then
        bg_opacity[5] = bg_opacity[4]
    elseif(moonphase == 4 or moonphase == 6) then
        bg_opacity[5] = bg_opacity[4]/2
    end

    moon_opacity_percent = 100-math.abs(5-moonphase)*10
    bg_opacity[4] = (bg_opacity[4]/100)*moon_opacity_percent


    if (now >= dawn_start and now < dawn_climax) then
        bg_opacity[1] = (now-dawn_start)/(dawn_climax-dawn_start)*100
    elseif (now >= dawn_climax and now < dawn_end) then
        bg_opacity[1] = 100-(now-dawn_climax)/(dawn_end-dawn_climax)*100
    end


    if (now >= skyblue_in_start and now < skyblue_in_end) then
        bg_opacity[2] = (now-skyblue_in_start)/(skyblue_in_end-skyblue_in_start)*100
    elseif (now >= skyblue_in_end and now < skyblue_out_start) then
        bg_opacity[2] = 100
    elseif (now >= skyblue_out_start and now < skyblue_out_end) then
        bg_opacity[2] = 100-(now-skyblue_out_start)/(skyblue_out_end-skyblue_out_start)*100
    end


    if (now >= dusk_start and now < dusk_climax) then
        bg_opacity[3] = (now-dusk_start)/(dusk_climax-dusk_start)*100
    elseif (now >= dusk_climax and now < dusk_end) then
        bg_opacity[3] = 100-(now-dusk_climax)/(dusk_end-dusk_climax)*100
    end

    return bg_opacity

end