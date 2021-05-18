

	if not PAUSE then exit;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	rot = (rot + 5) % 360;
	
	draw_text(
		display_get_gui_width()/2 + lengthdir_x(20, rot),
		display_get_gui_height()/2 + lengthdir_y(20, rot),
		"PAUSE"
	);