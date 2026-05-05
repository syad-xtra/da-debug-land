x += x_dir;
y += y_dir;

if image_alpha = 0{instance_destroy();}
if image_alpha = 1{final_state = true}
if final_state{
	scaleGradual(-0.01, 2);
}
else{scaleGradual(0.01, 1.5);}