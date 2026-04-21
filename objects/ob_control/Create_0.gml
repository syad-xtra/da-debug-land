randomize();
rating = 3;
customer_mad = false;
difficulty = 60;
range_min = 600;
range_max = 1200;
range_tmax = 600;
range_tmin = 600;
x_customer = 372;
y_customer = 14;
window_set_cursor(cr_none);
instance_create_layer(mouse_x, mouse_y, "Mouse_Layer", ob_cursor);

// BLOOD
combo[0][0][0] = "ob_blood" // object name
combo[0][0][1] = "Blood" // name
combo[0][0][2] = true // unlock status
combo[0][0][3] = false // request status

// BILE
combo[1][0][0] = "ob_bile"
combo[1][0][1] = "Bile"
combo[1][0][2] = true
combo[1][0][3] = false

// BRAIN
combo[2][0][0] = "ob_brain"
combo[2][0][1] = "Brain"
combo[2][0][2] = true
combo[2][0][3] = false

// EYEBALL
combo[3][0][0] = "ob_eye"
combo[3][0][1] = "Eyeball"
combo[3][0][2] = true
combo[3][0][3] = false

// SEWER ALGAE
combo[4][0][0] = "ob_sw_alg"
combo[4][0][1] = "Sewer Algae"
combo[4][0][2] = true
combo[4][0][3] = false

// MUSHROOM
combo[5][0][0] = "ob_shroom"
combo[5][0][1] = "Mushroom"
combo[5][0][2] = true
combo[5][0][3] = false

// BLOOD SAUCE
combo[6][0][0] = "ob_bld_sc"
combo[6][0][1] = "Blood Sauce"
combo[6][0][2] = false
combo[6][0][3] = true

combo[6][1][0] = "ob_bile"
combo[6][1][1] = "ob_blood"

// CONGEALED BLOOD
combo[7][0][0] = "ob_con_bld"
combo[7][0][1] = "Congealed Blood"
combo[7][0][2] = false
combo[7][0][3] = true

combo[7][1][0] = "ob_blood"
combo[7][1][1] = "ob_blood"

// CLOT SOUP
combo[8][0][0] = "ob_clt_sp"
combo[8][0][1] = "Clot Soup"
combo[8][0][2] = false
combo[8][0][3] = true

combo[8][1][0] = "ob_con_bld"
combo[8][1][1] = "ob_sw_alg"

// ROT
combo[9][0][0] = "ob_rot"
combo[9][0][1] = "Rot"
combo[9][0][2] = false
combo[9][0][3] = true

combo[9][1][0] = "ob_blood"
combo[9][1][1] = "ob_shroom"

// BLOODY STEAMED EYE
combo[10][0][0] = "ob_bld_eye"
combo[10][0][1] = "Blood Steamed Eye"
combo[10][0][2] = false
combo[10][0][3] = true

combo[10][1][0] = "ob_blood"
combo[10][1][1] = "ob_eye"

// FRIED EYE
combo[11][0][0] = "ob_fried_eye"
combo[11][0][1] = "Fried Eye"
combo[11][0][2] = false
combo[11][0][3] = true

combo[11][1][0] = "ob_bile"
combo[11][1][1] = "ob_eye"

// EYE WRAP
combo[12][0][0] = "ob_eye_wrap"
combo[12][0][1] = "Wrapped Eye"
combo[12][0][2] = false
combo[12][0][3] = true

combo[12][1][0] = "ob_eye"
combo[12][1][1] = "ob_sw_alg"

// ATROPHIED BRAIN
combo[13][0][0] = "ob_at_brain"
combo[13][0][1] = "Atrophied Brain"
combo[13][0][2] = false
combo[13][0][3] = true

combo[13][1][0] = "ob_brain"
combo[13][1][1] = "ob_shroom"

// FRIED SHROOM
combo[13][0][0] = "ob_fried_shroom"
combo[13][0][1] = "Fried Shroom"
combo[13][0][2] = false
combo[13][0][3] = true

combo[13][1][0] = "ob_bile"
combo[13][1][1] = "ob_shroom"