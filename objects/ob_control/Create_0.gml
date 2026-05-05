randomize();
rating = 3;
end_text = "Placeholder";
game_ending = false
customer_mad = false;
difficulty = 60;
range_min = 600;
range_max = 1200;
range_tmax = 3600;
range_tmin = 2800;
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

combo[10][2][0] = "ob_bld_sc"
combo[10][2][1] = "ob_eye"

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
combo[14][0][0] = "ob_fried_shroom"
combo[14][0][1] = "Fried Shroom"
combo[14][0][2] = false
combo[14][0][3] = true

combo[14][1][0] = "ob_bile"
combo[14][1][1] = "ob_shroom"

// FRIED ALGAE
combo[15][0][0] = "ob_fried_alg"
combo[15][0][1] = "Fried Algae"
combo[15][0][2] = false
combo[15][0][3] = true

combo[15][1][0] = "ob_bile"
combo[15][1][1] = "ob_sw_alg"

// FRIED WRAP
combo[16][0][0] = "ob_fried_wrap"
combo[16][0][1] = "Fried Wrap"
combo[16][0][2] = false
combo[16][0][3] = true

combo[16][1][0] = "ob_eye_wrap"
combo[16][1][1] = "ob_bile"

// FRIED ALGAE WRAP
combo[17][0][0] = "ob_fried_alg_wrap"
combo[17][0][1] = "Fried Algae Wrap"
combo[17][0][2] = false
combo[17][0][3] = true

combo[17][1][0] = "ob_fried_alg"
combo[17][1][1] = "ob_eye"

// MARINATED Wrap
combo[18][0][0] = "ob_mar_eye"
combo[18][0][1] = "Marinated Wrap"
combo[18][0][2] = false
combo[18][0][3] = true

combo[18][1][0] = "ob_eye_wrap"
combo[18][1][1] = "ob_blood"

combo[18][2][0] = "ob_eye_wrap"
combo[18][2][1] = "ob_bld_sc"

combo[18][3][0] = "ob_eye_wrap"
combo[18][3][1] = "ob_con_bld"

// MOLD DINNER
combo[19][0][0] = "ob_mold_dinner"
combo[19][0][1] = "Mold Dinner"
combo[19][0][2] = false
combo[19][0][3] = true

combo[19][1][0] = "ob_rot"
combo[19][1][1] = "ob_fried_shroom"

combo[19][2][0] = "ob_rot"
combo[19][2][1] = "ob_fried_alg"

// SICKLY SYRUP
combo[20][0][0] = "ob_sick"
combo[20][0][1] = "Sickly Syrup"
combo[20][0][2] = false
combo[20][0][3] = true

combo[20][1][0] = "ob_rot"
combo[20][1][1] = "ob_con_bld"

// ROTTING EYE
combo[21][0][0] = "ob_rot_eye"
combo[21][0][1] = "Rotting Eye"
combo[21][0][2] = false
combo[21][0][3] = true

combo[21][1][0] = "ob_rot"
combo[21][1][1] = "ob_eye"

// SHRIVELLING ALGAE
combo[22][0][0] = "ob_shriv_alg"
combo[22][0][1] = "Shrivelling Algae"
combo[22][0][2] = false
combo[22][0][3] = true

combo[22][1][0] = "ob_rot"
combo[22][1][1] = "ob_sw_alg"

// BRAIN BURRITO
combo[23][0][0] = "ob_brain_bur"
combo[23][0][1] = "Brain Burrito"
combo[23][0][2] = false
combo[23][0][3] = true

combo[23][1][0] = "ob_fried_alg"
combo[23][1][1] = "ob_brain"

// TOP CLOT
combo[24][0][0] = "ob_top_clot"
combo[24][0][1] = "Topped Clot"
combo[24][0][2] = false
combo[24][0][3] = true

combo[24][1][0] = "ob_con_bld"
combo[24][1][1] = "ob_fried_alg"

// DRY SNACK
combo[25][0][0] = "ob_dry_snack"
combo[25][0][1] = "Dry Snack"
combo[25][0][2] = false
combo[25][0][3] = true

combo[25][1][0] = "ob_fried_alg"
combo[25][1][1] = "ob_sw_alg"