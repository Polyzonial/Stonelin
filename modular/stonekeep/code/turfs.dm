/* * * * * * * * * * * **
 *						*
 *		 Turfs			*
 *						*
 *						*
 * * * * * * * * * * * **/
// NOTE : the smoothing works like this. cansmooth with = this turf will allow the indicated turfs to overlay it with edges
// It will look in the icon file IN ITS OWN PATH for that one. So need to be in the same DMI as the indicated turfs edge icon.

/*--------------\
| Better Floors |
\--------------*/
/*
/turf/open/floor/wood
	smooth_icon = 'modular/stonekeep/icons/wood.dmi'
/turf/open/floor/wood/nosmooth
	smooth_icon = 'modular/stonekeep/icons/wood.dmi'

/turf/open/floor/woodturned
	smooth_icon = 'modular/stonekeep/icons/wood_turned.dmi'
/turf/open/floor/woodturned/nosmooth/saiga
	smooth_icon = 'modular/stonekeep/icons/wood_turned.dmi'
*/
/turf/open/floor/ruinedwood

/turf/open/floor/ruinedwood/spiral

/turf/open/floor/ruinedwood/decayed
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "wood_decayed"

/turf/open/floor/ruinedwood/decayed/Initialize()
	. = ..()
	dir = pick(GLOB.alldirs)

/turf/open/floor/raisedwood
	name = "wood platform"
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "stageoak"
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	damage_deflection = 8
	max_integrity = 800
	color = "#beb9c5"

/*	..................   Stone floors   ................... */
/turf/open/floor/hexstone
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/cobble
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/herringbone
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/carpet/green
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/cobblerock
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "cobblerock"


/turf/open/floor/cobblerock/alt
	icon_state = "cobblerock_alt"
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "cobblerock_alt"

/turf/open/floor/cobblerock/alt/Initialize()
	. = ..()
	dir = pick(GLOB.alldirs)

/turf/open/floor/cobblerock/red
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "cobblerock_red"
	neighborlay = "cobblerock_red"

/turf/open/floor/cobble/mossy
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "mossystone1"
	neighborlay = "mossyedge"

/turf/open/floor/cobble/mossy/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)

/turf/open/floor/blocks/carved
	icon_state = "carvedstone"

/turf/open/floor/sandstone
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "sandstone"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.ogg'


/turf/open/floor/sandstone/shaded
	color = "#e5dfdf"

/turf/open/floor/sandstone/temple
	icon_state = "temple"
/turf/open/floor/sandstone/temple/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()

/turf/open/floor/sandstone/old
	icon_state = "sandstone_old"

/turf/open/floor/churchrough
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/cobblemoss
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "cobstonemoss"
	footstep = FOOTSTEP_STONE
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/stoneland.ogg'
	neighborlay = "cobstonemoss"
	max_integrity = 1200

/turf/open/floor/cobblemoss/turf_destruction(damage_flag)
	. = ..()
	ChangeTurf(/turf/open/floor/dirt, flags = CHANGETURF_INHERIT_AIR)
	new /obj/item/natural/stone(src)

/turf/open/floor/cobblemoss/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)

/turf/open/floor/blocks/moss
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "blockmoss"

/turf/open/floor/herringbone
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "herringedge"

/turf/open/floor/tile/masonic
	icon_state = "masonic"



/*	..................   Grasses   ................... */
/turf/open/floor/grass
	desc = "Grass, sodden in mud and bogwater."
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "grass"

/turf/open/floor/grass/Initialize()
	. = ..()
	if(icon_state == "grass")
		dir = pick(GLOB.alldirs)


/turf/open/floor/grass/mixyel/under_tree
	color = "#ff3535"
/turf/open/floor/grass/mixyel/under_tree/Initialize()
	color = "#ffffff"
	. = ..()

/turf/open/floor/grass/mixyel
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "grass_yelmix"
/*
	canSmoothWith = list(
	/turf/open/floor/grass/yel,
	/turf/open/floor/grass/red,
	/turf/open/floor/snow)
*/
/turf/open/floor/grass/mixyel/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)

/turf/open/floor/grass/transition
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "grass_transy"
	neighborlay = "grass_transy"


/turf/open/floor/grass/yel
	icon = 'modular/stonekeep/icons/turfs.dmi'
/*
	canSmoothWith = list(
	/turf/open/floor/snow,
	)
*/
/turf/open/floor/grass/red
	name = "red grass"
	desc = "Grass, ripe with Dendor's blood."
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "grass_bog"
	neighborlay = "grass_bog"


/turf/open/floor/grass/cold
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "grass_cold"
/*
	canSmoothWith = list(/turf/open/floor/grass,
						/turf/open/floor/snow,
						/turf/open/floor/snow/rough)
*/
	smoothing_groups = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
	temperature = 250

/turf/open/floor/grass/hell
	icon = 'icons/turf/floors.dmi'


/turf/open/floor/grass/leaves
	name = "leaves"
	icon = 'icons/turf/floors.dmi'
	icon_state = "treetop1"
/turf/open/floor/grass/leaves/Initialize()
	dir = pick(GLOB.cardinals)
	icon_state = pick("treetop1", "treetop2")
	. = ..()


/*	..................   Snow   ................... */
/turf/open/floor/snow/patchy
	icon = 'modular/stonekeep/icons/turfs.dmi'
	smoothing_groups = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
//	smoothing_list = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
/*
	canSmoothWith = list(
						/turf/open/floor/snow,
						/turf/open/floor/grass/cold
						)
*/
//	neighborlay = "snowpatchy"
	neighborlay = ""

/turf/open/floor/snow
	icon = 'icons/turf/floors.dmi'
	smoothing_groups = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
	smoothing_list = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
	smoothing_flags = SMOOTH_EDGE
/*
	canSmoothWith = list(
						/turf/open/floor/snow)
*/
	temperature = 250

/turf/open/floor/snow/rough
	icon = 'icons/turf/floors.dmi'
	smoothing_groups = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
//	smoothing_list = SMOOTH_GROUP_OPEN_FLOOR + SMOOTH_GROUP_FLOOR_SNOW
	neighborlay = ""

/obj/effect/decal/rockedge
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "rockedge1"
	mouse_opacity = 0
/obj/effect/decal/rockedge/Initialize()
	. = ..()
	icon_state = pick("rockedge1", "rockedge2", "rockedge3")

/*	..................   Dirt   ................... */

/turf/open/floor/dirt
	icon = 'modular/stonekeep/icons/turfs.dmi'
/*
	canSmoothWith = list(
						/turf/open/floor/cobblerock/alt,
						/turf/open/floor/grass,
						/turf/open/floor/snow,
						/turf/open/floor/dirt/muddie,
						/turf/open/floor/dirt/road,
						/turf/open/floor/snow/patchy,
						/turf/open/floor/grass/cold,
						)
*/
	spread_chance = 0.1


/turf/open/floor/dirt/Initialize()
	if(icon_state == "olddirt")
		if(istype(loc, /area/rogue/outdoors/bog/wetlands))
			icon = 'modular/stonekeep/icons/turfs.dmi'
			icon_state = "olddirt"
			neighborlay = "olddirt"
	..()

/turf/open/floor/dirt/road
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "oldroad"
/*
	canSmoothWith = list(/turf/open/floor/grass,
						/turf/open/floor/snow,
						/turf/open/floor/dirt/,
						/turf/open/floor/dirt/muddie,
						)
*/
/turf/open/floor/dirt/road/Initialize()
	. = ..()
	hidden_truffles = FALSE
	hidden_toxicshrooms = FALSE
	if(istype(loc, /area/rogue/outdoors/bog/wetlands))
		icon_state = "oldroad"

/turf/open/floor/dirt/muddie
	desc = "Your feet sink into this soft ground easily."
	icon_state = "mud1"
	icon = 'modular/stonekeep/icons/turfs.dmi'
	neighborlay = "mud"
	muddy = TRUE
	footstep = FOOTSTEP_MUD
	barefootstep = FOOTSTEP_MUD
	heavyfootstep = FOOTSTEP_MUD
	spread_chance = 0

/turf/open/floor/dirt/muddie/Initialize()
	. = ..()
	icon_state = "mud[rand (1,3)]"
	dir = pick(GLOB.cardinals)
	hidden_truffles = FALSE
	hidden_toxicshrooms = FALSE

// =================================================================
// ====================		Misc floors		========================

/turf/open/water/cavepond
	name = "water"
	desc = "Clear water in a muddy pond."
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "pond"
//	neighborlay_override = "grass_yeledge"
/*
	canSmoothWith = list(
						/turf/open/floor/grass/yel,
						)
*/
/turf/open/water/cavepond/Initialize()
	.  = ..()
	icon_state = "pond"

/turf/open/water/bath
	wash_in = FALSE

/turf/open/floor/naturalstone
	icon = 'modular/stonekeep/icons/turfs.dmi'

/turf/open/floor/naturalstone/rough
	icon_state = "digstone_rough"
	slowdown = 3
/turf/open/floor/naturalstone/rough/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)


/turf/open/floor/hay
	name = "hay"
	desc = "Mostly clean straw provides padding and insulation from the cold."
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "hay"
	footstep = FOOTSTEP_GRASS
	barefootstep = FOOTSTEP_SOFT_BAREFOOT
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/grassland.ogg'
	slowdown = 0

/obj/effect/decal/haycorner
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "hayedge-se"
	mouse_opacity = 0

/*	..................   Kaizoku Sand   ................... */
/turf/open/floor/sand
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "sand"
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SOFT_BAREFOOT
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	landsound = 'sound/foley/jumpland/dirtland.ogg'
	neighborlay = "sandedges"

/turf/open/floor/sand/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()


/turf/open/floor/carpet/hamlet
	icon = 'modular/stonekeep/icons/carpet_hamlet.dmi'
	smoothing_flags = SMOOTH_BITMASK

// more roofing
/turf/open/floor/rooftop/dark
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "roofd-arw"
/turf/open/floor/rooftop/dark/Initialize()
	. = ..()
	icon_state = "roofd"

/turf/open/floor/rooftop/dark/corner1
	icon_state = "roofdc-arw"
/turf/open/floor/rooftop/dark/corner1/Initialize()
	. = ..()
	icon_state = "roofdc"

// =================================================================
// =========================	WALLS	============================
// Sandstone brick wall
/turf/closed/wall/mineral/stonebrick/sandstone
	name = "sandstone wall"
	icon = 'modular/stonekeep/icons/sandstonebrick.dmi'


// Nonsmooth brick wall
/turf/closed/wall/mineral/sbrick_nonsmooth
	name = "stonebrick wall"
	desc = ""
	icon = 'icons/turf/walls.dmi'
	icon_state = "stonebrick"
	blade_dulling = DULLING_BASH
	max_integrity = 1200
	sheet_type = /obj/item/natural/stone
	break_sound = 'sound/combat/hits/onstone/stonedeath.ogg'
	attacked_sound = list('sound/combat/hits/onstone/wallhit.ogg', 'sound/combat/hits/onstone/wallhit2.ogg', 'sound/combat/hits/onstone/wallhit3.ogg')
	above_floor = /turf/open/floor/blocks
	baseturfs = list(/turf/open/floor/blocks)
	neighborlay = "dirtedge"
	climbdiff = 1
	damage_deflection = 10
	hardness = 3


/turf/closed/wall/mineral/sbrick_nonsmooth/alt
	icon_state = "stonebrick1"
/turf/closed/wall/mineral/sbrick_nonsmooth/alto
	icon_state = "stonebrick2"

/turf/closed/wall/mineral/sbrick_nonsmooth/window
	name = "stonebrick wall"
	desc = ""
	opacity = FALSE
	max_integrity = 800
	explosion_block = 2


// Windows mapping help

/turf/closed/wall/mineral/stone/window
	color = "#706b6a"
/turf/closed/wall/mineral/stone/window/Initialize()
	. = ..()
	color = "#ffffff"

/turf/closed/wall/mineral/wood/window
	color = "#706b6a"
/turf/closed/wall/mineral/wood/window/Initialize()
	. = ..()
	color = "#ffffff"


//added missing states
/turf/closed/wall/mineral/decostone/moss
	icon = 'modular/stonekeep/icons/turfs.dmi'
