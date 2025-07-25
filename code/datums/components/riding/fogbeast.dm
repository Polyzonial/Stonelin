/datum/component/riding/fogbeast/Initialize()
	. = ..()
	vehicle_move_delay = 1 // Requires one less level to cap speed. Fast.
	set_riding_offsets(RIDING_OFFSET_ALL, list(
			TEXT_NORTH = list(0, 8),
			TEXT_SOUTH = list(0, 8),
			TEXT_EAST = list(-2, 8),
			TEXT_WEST = list(2, 8)))
	set_vehicle_dir_layer(SOUTH, ABOVE_MOB_LAYER)
	set_vehicle_dir_layer(NORTH, OBJ_LAYER)
	set_vehicle_dir_layer(EAST, OBJ_LAYER)
	set_vehicle_dir_layer(WEST, OBJ_LAYER)
