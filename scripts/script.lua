var_s_text_initialization = 'Please wait until the next minute' 
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

var_s_curve_day4_opacity = 0
var_s_curve_day3_opacity = 0
var_s_curve_day2_opacity = 0
var_s_curve_day1_opacity = 0
var_s_curve_night1_opacity = 0
var_s_curve_night2_opacity = 0
var_s_curve_night3_opacity = 0
var_s_curve_night4_opacity = 0



-- lookup table for different day (sunshine) lenghts
curves_data_table = {}
curves_data_table['day4'] = {}
curves_data_table['day4']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 8, 8, 9, 9, 10, 11, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 28, 29, 31, 33, 34, 36, 38, 40, 42, 44, 46, 48, 51, 53, 55, 58, 60, 62, 65, 67, 69, 72, 74, 76, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 104, 106, 108, 109, 111, 113, 114, 116, 117, 118, 120, 121, 122, 124, 125, 126, 127, 128, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 140, 141, 142, 143, 144, 145, 145, 146, 147, 148, 148, 149, 150, 150, 151, 152, 152, 153, 154, 154, 155, 155, 156, 156, 157, 157, 158, 158, 159, 159, 160, 160, 161, 161, 162, 162, 163, 163, 163, 164, 164, 164, 165, 165, 166, 166, 166, 167, 167, 167, 168, 168, 168, 168, 169, 169, 169, 169, 170, 170, 170, 170, 171, 171, 171, 171, 172, 172, 172, 172, 172, 173, 173, 173, 173, 173, 173, 174, 174, 174, 174, 174, 174, 174, 175, 175, 175, 175, 175, 175, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['day4']['intersection'] = 70


curves_data_table['day3'] = {}
curves_data_table['day3']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 12, 12, 13, 14, 15, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 27, 28, 29, 30, 32, 33, 34, 36, 37, 39, 40, 42, 44, 45, 47, 49, 50, 52, 54, 56, 57, 59, 61, 63, 65, 67, 69, 70, 72, 74, 76, 78, 80, 81, 83, 85, 87, 89, 90, 92, 94, 95, 97, 99, 100, 102, 104, 105, 107, 108, 110, 111, 112, 114, 115, 117, 118, 119, 121, 122, 123, 124, 125, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 144, 145, 146, 147, 148, 148, 149, 150, 151, 151, 152, 153, 153, 154, 155, 155, 156, 156, 157, 157, 158, 159, 159, 160, 160, 161, 161, 162, 162, 163, 163, 163, 164, 164, 165, 165, 166, 166, 166, 167, 167, 167, 168, 168, 168, 169, 169, 169, 170, 170, 170, 170, 171, 171, 171, 172, 172, 172, 172, 172, 173, 173, 173, 173, 173, 174, 174, 174, 174, 174, 174, 174, 175, 175, 175, 175, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['day3']['intersection'] = 81

curves_data_table['day2'] = {}
curves_data_table['day2']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 13, 13, 14, 15, 15, 16, 17, 18, 19, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 34, 35, 36, 37, 38, 40, 41, 42, 44, 45, 46, 48, 49, 51, 52, 53, 55, 56, 58, 59, 61, 62, 64, 65, 67, 68, 70, 72, 73, 75, 76, 78, 79, 81, 82, 84, 86, 87, 89, 90, 92, 93, 95, 96, 98, 99, 101, 102, 103, 105, 106, 108, 109, 110, 112, 113, 114, 116, 117, 118, 119, 121, 122, 123, 124, 125, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 145, 146, 147, 148, 149, 150, 150, 151, 152, 152, 153, 154, 155, 155, 156, 157, 157, 158, 158, 159, 160, 160, 161, 161, 162, 162, 163, 163, 164, 164, 165, 165, 166, 166, 167, 167, 167, 168, 168, 168, 169, 169, 169, 170, 170, 171, 171, 171, 171, 172, 172, 172, 172, 173, 173, 173, 173, 174, 174, 174, 174, 174, 174, 175, 175, 175, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['day2']['intersection'] = 93

curves_data_table['day1'] = {}
curves_data_table['day1']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 7, 7, 8, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 14, 14, 15, 15, 16, 17, 17, 18, 19, 20, 20, 21, 22, 23, 24, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55, 57, 58, 59, 60, 62, 63, 64, 66, 67, 68, 70, 71, 72, 74, 75, 76, 78, 79, 80, 82, 83, 84, 86, 87, 88, 90, 91, 92, 94, 95, 96, 98, 99, 100, 102, 103, 104, 106, 107, 108, 109, 111, 112, 113, 114, 116, 117, 118, 119, 120, 122, 123, 124, 125, 126, 127, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 146, 147, 148, 149, 150, 151, 151, 152, 153, 154, 155, 155, 156, 157, 157, 158, 159, 159, 160, 161, 161, 162, 162, 163, 164, 164, 165, 165, 166, 166, 167, 167, 168, 168, 169, 169, 169, 170, 170, 171, 171, 171, 172, 172, 172, 172, 173, 173, 173, 174, 174, 174, 174, 174, 175, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['day1']['intersection'] = 104

curves_data_table['night1'] = {}
curves_data_table['night1']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 17, 17, 18, 18, 19, 20, 21, 21, 22, 23, 23, 24, 25, 26, 26, 27, 28, 29, 30, 31, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 64, 65, 66, 67, 68, 69, 70, 72, 73, 74, 75, 76, 77, 79, 80, 81, 82, 83, 85, 86, 87, 88, 89, 91, 92, 93, 94, 95, 97, 98, 99, 100, 101, 103, 104, 105, 106, 107, 109, 110, 111, 112, 113, 115, 116, 117, 118, 119, 120, 121, 123, 124, 125, 126, 127, 128, 129, 130, 131, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 147, 148, 149, 150, 151, 152, 153, 154, 154, 155, 156, 157, 158, 158, 159, 160, 161, 161, 162, 163, 163, 164, 165, 165, 166, 166, 167, 168, 168, 169, 169, 170, 170, 171, 171, 171, 172, 172, 173, 173, 173, 174, 174, 174, 175, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['night1']['intersection'] = 116

curves_data_table['night2'] = {}
curves_data_table['night2']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 8, 8, 8, 8, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 17, 17, 18, 18, 19, 20, 20, 21, 21, 22, 23, 23, 24, 25, 26, 26, 27, 28, 28, 29, 30, 31, 32, 32, 33, 34, 35, 36, 37, 38, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61, 62, 64, 65, 66, 67, 68, 70, 71, 72, 73, 75, 76, 77, 79, 80, 81, 82, 84, 85, 86, 88, 89, 90, 92, 93, 95, 96, 97, 99, 100, 101, 103, 104, 105, 107, 108, 109, 111, 112, 114, 115, 116, 118, 119, 120, 122, 123, 124, 125, 127, 128, 129, 131, 132, 133, 134, 136, 137, 138, 139, 140, 141, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 159, 160, 161, 162, 163, 163, 164, 165, 165, 166, 167, 167, 168, 168, 169, 170, 170, 171, 171, 172, 172, 172, 173, 173, 174, 174, 174, 174, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['night2']['intersection'] = 127

curves_data_table['night3'] = {}
curves_data_table['night3']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 10, 10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 20, 21, 21, 22, 22, 23, 23, 24, 25, 25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 33, 33, 34, 35, 36, 37, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 57, 58, 59, 60, 61, 62, 64, 65, 66, 67, 69, 70, 71, 73, 74, 76, 77, 78, 80, 81, 83, 84, 86, 87, 89, 90, 92, 93, 95, 96, 98, 100, 101, 103, 104, 106, 107, 109, 111, 112, 114, 115, 117, 119, 120, 122, 123, 125, 126, 128, 129, 131, 132, 134, 135, 137, 138, 140, 141, 142, 144, 145, 146, 147, 149, 150, 151, 152, 153, 155, 156, 157, 158, 159, 160, 161, 161, 162, 163, 164, 165, 166, 166, 167, 168, 168, 169, 169, 170, 171, 171, 172, 172, 172, 173, 173, 174, 174, 174, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['night3']['intersection'] = 139

curves_data_table['night4'] = {}
curves_data_table['night4']['coordinates'] = {3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 12, 12, 12, 13, 13, 13, 14, 14, 15, 15, 15, 16, 16, 17, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 23, 24, 25, 25, 26, 26, 27, 28, 28, 29, 30, 30, 31, 32, 33, 33, 34, 35, 36, 36, 37, 38, 39, 40, 41, 42, 43, 43, 44, 45, 46, 47, 48, 49, 51, 52, 53, 54, 55, 56, 57, 59, 60, 61, 62, 64, 65, 66, 68, 69, 71, 72, 74, 75, 77, 78, 80, 81, 83, 85, 86, 88, 90, 92, 93, 95, 97, 99, 101, 103, 104, 106, 108, 110, 112, 114, 116, 118, 120, 122, 124, 126, 128, 130, 131, 133, 135, 137, 139, 140, 142, 144, 145, 147, 148, 150, 151, 153, 154, 155, 156, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 167, 168, 169, 169, 170, 171, 171, 172, 172, 173, 173, 174, 174, 174, 175, 175, 175, 175, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176, 176}
curves_data_table['night4']['intersection'] = 150

curve_width_px = 458
curve_image_x_offset = -229 --moving image to coodinates system of the watch (0/0 is in the mid)
curve_image_y_offset = 130

hour = 0.042
half_hour = 0.021
quater_hour = 0.01
five_min = 0.0035

-- called automatically every second/minute depending on the name
function on_minute(dt)

    local curve_name = get_actual_curve_name()
    calc_curves_opacity(curve_name)

    local x_pos = calc_orb_x(curve_name)
    local y_pos = calc_orb_y(curve_name, x_pos)

    var_s_orbx = x_pos + curve_image_x_offset
    var_s_orby = (y_pos * -1) + curve_image_y_offset

    var_s_sun_trans = calc_sun_trans()
    
    sun_color = calc_sun_color()
    var_s_sun_color_r = sun_color[1]
    var_s_sun_color_g = sun_color[2]
    var_s_sun_color_b = sun_color[3]

    var_s_bg_dawn_opacity = calc_dawn_bg_opacity()
    var_s_bg_bluesky_opacity = calc_skyblue_bg_opacity()
    var_s_bg_dusk_opacity = calc_dust_bg_opacity()
    var_s_bg_moonshine_opacity = calc_moonshine_bg_opacity()
    var_s_bg_moonshine_bright_opacity = calc_moonshine_bright_bg_opacity(var_s_bg_moonshine_opacity)
    var_s_text_initialization = ''
end

-- calculates the appropriate x value as a function of the appropriate day length
function calc_orb_x(curve_name)

    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}

    local pos_x = 0

    local intersection_px = get_curve_intersection(curve_name)

    local distance = 0
    local daylenght = 0
    -- sunrise
    if now < sunrise then
        pos_x = math.floor((intersection_px / sunrise) * now)
        -- day
    elseif now >= sunrise and now < sunset then
        distance = curve_width_px - (2 * intersection_px)
        daylenght = sunset - sunrise
        pos_x = math.floor((distance / daylenght) * (now - sunrise)) + intersection_px
        -- sunset
    else
        pos_x = math.floor((intersection_px / (1 - sunset)) * (now - sunset)) + (curve_width_px - intersection_px)
    end
    return pos_x
end

-- fetches the appropriate y-value from the lookup tables depending on x and the day length
function calc_orb_y(curve_name, x)

    local x_pos = x
    local y_pos = 0
    local curve = curve_name
    local now = {dtp}

    -- only the half the the curve is defined to save some memory
    if (now > 0.5) then
        x_pos = (curve_width_px - x_pos)
    end

    y_pos = (curves_data_table[curve]['coordinates'][x_pos])
    return y_pos
end

-- returns the intersection point between curve and horizon (sunrise and sunset are symmetrical)
function get_curve_intersection(curve_name)
    local curve = curve_name
    return curves_data_table[curve]['intersection']
end

-- hides unused curves
-- not possible to use arrays in the frontend
-- there is no other way than to use globals

function calc_curves_opacity(curve_name)
    local curve_opacity = 42;

    var_s_curve_day4_opacity = 0
    var_s_curve_day3_opacity = 0
    var_s_curve_day2_opacity = 0
    var_s_curve_day1_opacity = 0
    var_s_curve_night1_opacity = 0
    var_s_curve_night2_opacity = 0
    var_s_curve_night3_opacity = 0
    var_s_curve_night4_opacity = 0

    if (curve_name == 'day4') then
        var_s_curve_day4_opacity = curve_opacity
    elseif (curve_name == 'day3') then
        var_s_curve_day3_opacity = curve_opacity
    elseif (curve_name == 'day2') then
        var_s_curve_day2_opacity = curve_opacity
    elseif (curve_name == 'day1') then
        var_s_curve_day1_opacity = curve_opacity
    elseif (curve_name == 'night1') then
        var_s_curve_night1_opacity = curve_opacity
    elseif (curve_name == 'night2') then
        var_s_curve_night2_opacity = curve_opacity
    elseif (curve_name == 'night3') then
        var_s_curve_night3_opacity = curve_opacity
    elseif (curve_name == 'night4') then
        var_s_curve_night4_opacity = curve_opacity
    end
end

-- returns the name of the curve that matches the length of day
function get_actual_curve_name()
    local sunrise = {wsrp}
    local sunset = {wssp}
    local daylenghthours = (sunset - sunrise) / hour

    if (daylenghthours >= 15) then
        return 'day4'
    elseif (daylenghthours >= 14 and daylenghthours < 15) then
        return 'day3'
    elseif (daylenghthours >= 13 and daylenghthours < 14) then
        return 'day2'
    elseif (daylenghthours >= 12 and daylenghthours < 13) then
        return 'day1'
    elseif (daylenghthours >= 11 and daylenghthours < 12) then
        return 'night1'
    elseif (daylenghthours >= 10 and daylenghthours < 11) then
        return 'night2'
    elseif (daylenghthours >= 9 and daylenghthours < 10) then
        return 'night3'
    elseif (daylenghthours < 9) then
        return 'night4'
    else
        return 'horizon'
    end
end

-- fades the sun in and out (the sun always overshines the moon)
function calc_sun_trans()

    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}

    local sunrisestart = sunrise - half_hour
    local sunriseend = sunrise + quater_hour
    local sunsetstart = sunset - quater_hour
    local sunsetend = sunset + half_hour

    if (now >= sunrisestart and now <= sunriseend) then
        return (((now - sunrisestart) / (sunriseend - sunrisestart)) * 100)
    elseif (now > sunriseend and now < sunsetstart) then
        return 100
    elseif (now >= sunsetstart and now <= sunsetend) then
        return 100 - (((now - sunsetstart) / (sunsetend - sunsetstart)) * 100)
    end
    return 0
end

-- colors the sun red at sunrise and sunset
function calc_sun_color()

    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}
    local day_segment = (sunset - sunrise) / 7

    local bright_start = sunrise + day_segment
    local bright_end = sunset - day_segment

    local sun_color = {100, 0, -30}

    if (now >= sunrise and now < bright_start) then
        way = ((now - sunrise) / day_segment)
        sun_color[1] = sun_color[1] - (sun_color[1] * way)
        sun_color[3] = sun_color[3] - (sun_color[3] * way)

    elseif (now >= bright_start and now < bright_end) then
        sun_color = {0, 0, 0}

    elseif (now >= bright_end and now < sunset) then
        way = ((now - sunset) / day_segment)
        sun_color[1] = sun_color[1] + (sun_color[1] * way)
        sun_color[3] = sun_color[3] + (sun_color[3] * way)
    end

    return sun_color

end

-- sky coloring sunrise
function calc_dawn_bg_opacity()

    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}
    local day_segment = (sunset - sunrise) / 7

    local dawn_start = sunrise - half_hour
    local dawn_climax = sunrise
    local dawn_end = sunrise + day_segment

    local bg_opacity = 0

    if (now >= dawn_start and now < dawn_climax) then
        bg_opacity = (now - dawn_start) / (dawn_climax - dawn_start) * 100
    elseif (now >= dawn_climax and now < dawn_end) then
        bg_opacity = 100 - (now - dawn_climax) / (dawn_end - dawn_climax) * 100
    end
    return bg_opacity

end

-- sky coloring daylight
function calc_skyblue_bg_opacity()
    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}
    local day_segment = (sunset - sunrise) / 7

    local skyblue_in_start = sunrise
    local skyblue_in_end = sunrise + day_segment
    local skyblue_out_start = sunset - day_segment
    local skyblue_out_end = sunset

    local bg_opacity = 0

    if (now >= skyblue_in_start and now < skyblue_in_end) then
        bg_opacity = (now - skyblue_in_start) / (skyblue_in_end - skyblue_in_start) * 100
    elseif (now >= skyblue_in_end and now < skyblue_out_start) then
        bg_opacity = 100
    elseif (now >= skyblue_out_start and now < skyblue_out_end) then
        bg_opacity = 100 - (now - skyblue_out_start) / (skyblue_out_end - skyblue_out_start) * 100
    end
    return bg_opacity
end

-- sky coloring sunset
function calc_dust_bg_opacity()
    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}
    local day_segment = (sunset - sunrise) / 7

    local dusk_start = sunset - day_segment
    local dusk_climax = sunset
    local dusk_end = sunset + half_hour

    local bg_opacity = 0

    if (now >= dusk_start and now < dusk_climax) then
        bg_opacity = (now - dusk_start) / (dusk_climax - dusk_start) * 100
    elseif (now >= dusk_climax and now < dusk_end) then
        bg_opacity = 100 - (now - dusk_climax) / (dusk_end - dusk_climax) * 100
    end
    return bg_opacity

end

-- bright blue sky around the moon
function calc_moonshine_bg_opacity()
    local now = {dtp}
    local sunrise = {wsrp}
    local sunset = {wssp}
    local moonphase = {wmp}

    local moonset_start = sunrise - half_hour
    local moonset_end = sunrise
    local moonrise_start = sunset
    local moonrise_end = sunset + half_hour

    local moon_opacity_percent = 100 - math.abs(5 - moonphase) * 10

    local bg_opacity = 0

    if (now < moonset_start or now > moonrise_end) then
        bg_opacity = 100
    elseif (now >= moonset_start and now < moonset_end) then
        bg_opacity = 100 - (now - moonset_start) / (moonset_end - moonset_start) * 100
    elseif (now > moonrise_start and now <= moonrise_end) then
        bg_opacity = (now - moonrise_start) / (moonrise_end - moonrise_start) * 100
    end

    bg_opacity = (bg_opacity / 100) * moon_opacity_percent

    return bg_opacity

end

-- if the moon is almost full or full then make the moon shine around the moon brighter
function calc_moonshine_bright_bg_opacity(moonwhite_bg_opacity)

    local moonphase = {wmp}

    local bg_opacity = 0

    if (moonphase == 5) then -- full moon
        bg_opacity = moonwhite_bg_opacity
    elseif (moonphase == 4 or moonphase == 6) then
        bg_opacity = moonwhite_bg_opacity / 2
    end

    return bg_opacity
end
