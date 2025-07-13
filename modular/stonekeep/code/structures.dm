/* * * * * * * * * * * **
 *						*
 *		 Structures		*
 *						*
 *						*
 * * * * * * * * * * * **/

// =================================================================================
/*--------\
| Closets |
\--------*/

/obj/structure/closet/crate/crafted_closet
	icon = 'modular/stonekeep/icons/structure.dmi'

/obj/structure/rack/shelf
	icon = 'modular/stonekeep/icons/structure.dmi'



/obj/structure/throne
	name = "throne"

// =================================================================================
/*----------------\
| Lighting tweaks |
\----------------*/
// base was 8, 5 for torches

/obj/machinery/light/fueled/firebowl
	brightness = 10
	bulb_power = 1.5

/obj/machinery/light/fueled/firebowl/standing
	brightness = 9
	bulb_power = 1.2
/obj/machinery/light/fueled/firebowl/standing/blue
	brightness = 10
	bulb_power = 1.3

/obj/machinery/light/fueled/wallfire
	brightness = 10
	bulb_power = 1.3

/obj/machinery/light/fueled/wallfire/candle
	brightness = 9
	bulb_power = 1.1

/obj/machinery/light/fueled/hearth/big_fireplace
	brightness = 10
	bulb_power = 1.4

/obj/machinery/light/fueled/torchholder
	brightness = 7
	bulb_power = 1.1

/obj/machinery/light/fueled/campfire
	brightness = 8
	bulb_power = 1.2

/obj/machinery/light/fueled/torchholder/cold
	unlit_torch = TRUE
	pixel_y = 32

/obj/machinery/light/fueled/firebowl/cold/Initialize(mapload)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(extinguish)), 10)

/obj/machinery/light/fueled/wallfire/candle/open	// starts cold, light it when open is the idea.
	name = "open candle"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "storecandle1"
	base_state = "storecandle"
/obj/machinery/light/fueled/wallfire/candle/open/Initialize(mapload)
	. = ..()
	addtimer(CALLBACK(src, PROC_REF(extinguish)), 10)

/obj/machinery/light/fueled/firebowl/standing/lamp
	name = "standing lamp"
	icon = 'modular/stonekeep/icons/structure.dmi'

// =================================================================================
/*-------\
| Tables |
\-------*/

/obj/structure/table/wood/plain
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/plain_alt
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/reinforced_alt
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/vtable // modify with varedit for map1 big one
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/nice/decorated
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "tablefine"
/obj/structure/table/wood/nice/decorated_alt
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "tablefine2"

/obj/structure/table/wood/large_new
	icon = 'modular/stonekeep/icons/tables.dmi'
/obj/structure/table/wood/large_new/red
	icon_state = "largetable"
/obj/structure/table/wood/large_new/blue
	icon_state = "largetable_alt2"
/obj/structure/table/wood/large_new/yellow
	icon_state = "largetable_alt"
/obj/structure/table/wood/large/corner_new
	icon = 'modular/stonekeep/icons/tables.dmi'
/obj/structure/table/wood/large/corner_new/red
	icon_state = "largetable"
/obj/structure/table/wood/large/corner_new/blue
	icon_state = "largetable_alt2"
/obj/structure/table/wood/large/corner_new/yellow
	icon_state = "largetable_alt"


/obj/structure/table/vtable
	icon = 'modular/stonekeep/icons/tables.dmi'
/obj/structure/table/vtable/v2
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/wood/crafted
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "wsmall_poor"
/obj/structure/table/wood/crafted/better
	icon_state = "wsmall_average"
/obj/structure/table/wood/crafted/good
	icon_state = "wsmall_good"

/obj/structure/table/wood/reinf_long
	icon = 'modular/stonekeep/icons/tables.dmi'

/obj/structure/table/church
	name = "altar"
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "church_r"
	debris = list(/obj/item/natural/stoneblock = 1)

/obj/structure/table/church/m
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "church_mid"

/obj/structure/table/church/left
	icon_state = "church_l"

/obj/structure/table/stone
	name = "stone table"
	desc = ""
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "stonetable_mid"
	max_integrity = 300
	climb_offset = 10
/obj/structure/table/stone/OnCrafted(dirin, user)
	if(dirin == NORTH)
		dir = NORTH
	if(dirin == SOUTH)
		dir = SOUTH
	if(dirin == WEST)
		dir = WEST
	if(dirin == EAST)
		dir = EAST
	. = ..()

/obj/structure/table/stone_end
	name = "stone table"
	desc = ""
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "stonetable_end"
	max_integrity = 300
	climb_offset = 10
/obj/structure/table/stone_end/OnCrafted(dirin, user)
	if(dirin == NORTH)
		dir = NORTH
	if(dirin == SOUTH)
		dir = SOUTH
	if(dirin == WEST)
		dir = WEST
	if(dirin == EAST)
		dir = EAST
	. = ..()

/obj/structure/table/wood/long
	name = "table"
	desc = ""
	icon = 'modular/stonekeep/icons/tables.dmi'
	icon_state = "longtable"
	max_integrity = 100
	climb_offset = 8

/obj/structure/table/stone_small/gravekeeper
	name = "body preparation slate"
	color = "#b4b4b6"

// Temple pillars. Default is offset to north
/obj/structure/fluff/walldeco/pillar
	icon = 'modular/stonekeep/icons/temple.dmi'
	icon_state = "sandstone"
	pixel_y = 32
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/structure/fluff/walldeco/pillar/doric
	icon_state = "doric"
/obj/structure/fluff/walldeco/pillar/aztec
	icon_state = "aztec"
/obj/structure/fluff/walldeco/pillar/ionic
	icon_state = "ionic"
/obj/structure/fluff/walldeco/pillar/solomon
	icon_state = "solomon"
/obj/structure/fluff/walldeco/pillar/solomonalt
	icon_state = "solomon2"
/obj/structure/fluff/walldeco/pillar/egypt
	icon_state = "egypt"
/obj/structure/fluff/walldeco/pillar/nordic
	icon_state = "nordic"

// Placeholder shrines. Migth get better code at some point but use for now
/obj/machinery/light/fueled/wallfire/candle/lamp/temple
	icon = 'modular/stonekeep/icons/temple.dmi'
	brightness = 10
	bulb_power = 1.1

/obj/machinery/light/fueled/wallfire/candle/lamp/temple/noc
	name = "shrine to Noc"
	icon_state = "noc1"
	base_state = "noc"
/obj/machinery/light/fueled/wallfire/candle/lamp/temple/pestra
	name = "shrine to Pestra"
	icon_state = "pestra1"
	base_state = "pestra"
/obj/machinery/light/fueled/wallfire/candle/lamp/temple/xylix
	name = "shrine to Xylix"
	icon_state = "xylix1"
	base_state = "xylix"
/obj/machinery/light/fueled/wallfire/candle/lamp/temple/eora
	name = "shrine to Eora"
	icon_state = "eora1"
	base_state = "eora"
/obj/machinery/light/fueled/wallfire/candle/lamp/temple/malum
	name = "shrine to Malum"
	icon_state = "malum1"
	base_state = "malum"
/obj/machinery/light/fueled/wallfire/candle/lamp/temple/ravox
	name = "shrine to Ravox"
	icon_state = "ravox1"
	base_state = "ravox"


/obj/machinery/light/fueled/wallfire/candle/lamp/lamptern
	name = "wall lamptern"
	icon = 'modular/stonekeep/icons/misc.dmi'
	icon_state = "wallcandle1"
	base_state = "wallcandle"
	layer = WALL_OBJ_LAYER+0.1
	light_power = 0.9
	light_outer_range =  6

//AKA cryosleep.

/obj/structure/far_travel //Shamelessly jury-rigged from the way Fallout13 handles this and shamelessly borrowed from AzurePeak's further iteraiton of this system
	name = "far travel"
	desc = "Your heart yearns to wander.\n(Drag your sprite onto this to exit the round!)"
	icon = 'modular/stonekeep/icons/turfs.dmi'
	icon_state = "fartravel"
	layer = TABLE_LAYER
	density = TRUE
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	var/in_use = FALSE
	var/static/list/uncryoable = list(
		/datum/job/lord,
		/datum/job/hand,
		/datum/job/prince,
		/datum/job/consort,
		/datum/job/priest,
		/datum/job/captain,
	)

/obj/structure/far_travel/MouseDrop_T(atom/dropping, mob/user)
	if(!isliving(user) || user.incapacitated())
		return //No ghosts or incapacitated folk allowed to do this.
	if(!ishuman(dropping))
		return //Only humans have job slots to be freed.
	if(in_use) // Someone's already going in.
		return
	var/mob/living/carbon/human/departing_mob = dropping
	if(departing_mob != user && departing_mob.client)
		to_chat(user, span_warning("This one retains their free will. It's their choice if they want to leave for Kingsfield or not."))
		return //prevents people from forceghosting others
	if(departing_mob.stat == DEAD)
		say("The dead cannot leave on a journey, ensure they get a proper burial in these lands.")
		return
	if(is_type_in_list(departing_mob.mind?.assigned_role, uncryoable))
		var/title = departing_mob.gender == FEMALE ? "lady" : "lord"
		say("Surely you jest, my [title], you have a kingdom to rule over!")
		return //prevents noble roles from cryoing as per request of Aberra
	if(alert("Are you sure you want to [departing_mob == user ? "leave for Kingsfield (you" : "send this person to Kingfield (they"] will be removed from the current round, the job slot freed)?", "Departing", "Confirm", "Cancel") != "Confirm")
		return //doublechecks that people actually want to leave the round
	if(user.incapacitated() || QDELETED(departing_mob) || (departing_mob != user && departing_mob.client) || get_dist(src, dropping) > 2 || get_dist(src, user) > 2)
		return //Things have changed since the alert happened.
	say("[user] [departing_mob == user ? "is departing for Kingsfield" : "is sending [departing_mob] to Kingsfield!"]")
	in_use = TRUE //Just sends a simple message to chat that some-one is leaving
	if(!do_after(user, 5 SECONDS, src))
		in_use = FALSE
		return
	in_use = FALSE
	update_icon() //the section below handles roles and admin logging
	var/dat = "[key_name(user)] has despawned [departing_mob == user ? "themselves" : departing_mob], job [departing_mob.job], at [AREACOORD(src)]. Contents despawned along:"
	if(!length(departing_mob.contents))
		dat += " none."
	else
		var/atom/movable/content = departing_mob.contents[1]
		dat += " [content.name]"
		for(var/i in 2 to length(departing_mob.contents))
			content = departing_mob.contents[i]
			dat += ", [content.name]"
		dat += "."
	message_admins(dat)
	log_admin(dat)
	say(span_notice("[departing_mob == user ? "Out of their own volition, " : "Ushered by [user], "][departing_mob] is departing."))
	cryo_mob(departing_mob)
	var/mob/dead/new_player/newguy = new()
	newguy.ckey = departing_mob.ckey
	qdel(departing_mob)



/obj/structure/chimney
	desc = "Too narrow for a normal sized person to squeeze through. Covered in soot."
	density = TRUE
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "chimney"
/obj/structure/chimney/MouseDrop_T(obj/O, mob/living/carbon/user)
	. = ..()
	if(!in_range(src, user))
		return
	if(user.get_skill_level(/datum/skill/misc/climbing) <= 4)	// Climb 4 and above can chimney climb
		to_chat(user, "<span class='warning'>I would not fit in a chimney, stop thinking foolish things.</span>")
		return
	playsound(src, 'sound/foley/ladder.ogg', 100, FALSE)
	if(!do_after(user, 3 SECONDS, src))
		return
	user.visible_message("<span class='notice'>[user] slides down [src].</span>", "<span class='notice'>I slide down [src].</span>")
	src.add_fingerprint(user)
	var/turf/chimney = get_turf(src)
	var/turf/destination = locate(chimney.x, chimney.y, chimney.z)
	destination = locate(chimney.x, chimney.y, chimney.z - 1)
	if(isliving(user))
		movable_travel_z_level(user, destination)
	user.adjustBruteLoss(pick(5,15))		// Climber takes some damage
	user.AdjustStun(pick(40,50))
	user.AdjustKnockdown(pick(25,30))


/obj/structure/bars/cemetery/vines
	icon = 'modular/stonekeep/icons/structure.dmi'
/obj/structure/bars/cemetery/vines/Initialize()
	dir = pick(GLOB.cardinals)
	. = ..()



/obj/structure/giantfur
	layer = BELOW_OPEN_DOOR_LAYER


/obj/structure/door/swing_door/horizontal
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "swing"

/obj/structure/fluff/railing/fence/palisade_alt
	icon_state = "fence_alt"
	pass_flags = LETPASSTHROW

/obj/structure/fluff/railing/border
	icon = 'modular/stonekeep/icons/railing.dmi'


/obj/structure/fluff/railing/stonehedge
	icon = 'modular/stonekeep/icons/railing.dmi'
	passcrawl = FALSE
	pass_flags = LETPASSTHROW | PASSTABLE
	climbable = TRUE

/obj/effect/decal/stonehedge_corner
	name = "stone hedge"
	desc = ""
	icon = 'modular/stonekeep/icons/railing.dmi'
	icon_state = "stone_decorn"
	mouse_opacity = 0


/obj/structure/window/openclose/Initialize()	// 1 in 100 windows start open
	. = ..()
	if(prob(1))
		open_up()



/obj/structure/chair/pew/left
	name = "pew"

/obj/structure/chair/pew/right
	name = "pew"

/obj/structure/chair/pew/CanPass(atom/movable/mover, turf/target)
	if(istype(mover, /obj/projectile))
		return TRUE
	if(get_dir(mover,loc) == dir)
		return FALSE
	return !density

/obj/structure/chair/pew/proc/on_exit(datum/source, atom/movable/leaving, atom/new_location)
	SIGNAL_HANDLER
	if(istype(leaving, /obj/projectile))
		return
	if(get_dir(new_location, leaving.loc) == dir)
		leaving.Bump(src)
		return COMPONENT_ATOM_BLOCK_EXIT
// =============================================================================
// =========================	WALL DECORATIONS	============================


/obj/structure/fluff/walldeco/customflag
	name = "royal flag"

/obj/structure/fluff/walldeco/fakeshelf
	name = ""
	desc = ""
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "shelf"
	pixel_y = 28
	layer = ABOVE_NORMAL_TURF_LAYER
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/structure/fluff/walldeco/wallchains
	name = "chains"
	desc = ""
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "wallchain"
	pixel_y = 32
	layer = ABOVE_NORMAL_TURF_LAYER

/obj/structure/fluff/walldeco/weaversign
	name = "weaver"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "weaver"

/obj/structure/fluff/walldeco/advsign
	name = "adventurers guild"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "advguild"

/obj/structure/fluff/walldeco/sign_inn
	name = "the Drunken Saiga"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "innsaiga"

/obj/structure/fluff/walldeco/trolltrophy
	name = "troll trophy"
	desc = "The skull of a troll, mounted on a wall."
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "trolltrophy"

/obj/structure/fluff/walldeco/banner_drakon
	name = "banner of the drakon"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "drakonbanner"
	pixel_y = 32

/obj/structure/fluff/walldeco/banner_drakon/alt
	icon_state = "drakonbanner_alt"




/obj/structure/fluff/walldeco/xylixhint
	icon_state = "wall_funny"

/obj/structure/fluff/walldeco/xylixhint/Initialize()
	. = ..()
	if (GLOB.xylix_trickery)
		icon_state = "wall_sad"

/obj/structure/fluff/walldeco/xylixhint_danger
	icon_state = "wall_sad"

/obj/structure/fluff/walldeco/xylixhint_danger/Initialize()
	. = ..()
	if (GLOB.xylix_trickery)
		icon_state = "wall_funny"

// XYLIX MAZE
/obj/structure/fluff/statue/xylix
	desc = "Some mad God no doubt."
	icon = 'modular/stonekeep/icons/96x96.dmi'
	icon_state = "xylix_smile"
	pixel_x = -32
	pixel_y = 0

/obj/structure/fluff/statue/xylix/Initialize()
	. = ..()
	if (GLOB.xylix_trickery)
		icon_state = "xylix_frown"

/obj/structure/trap/shock/hidden/xylix/Initialize()
	. = ..()
	if (!GLOB.xylix_trickery)
		qdel(src)




/obj/structure/trap/bomb/hidden
	alpha = 5
/obj/structure/trap/poison/hidden
	alpha = 5
/obj/structure/trap/wall_projectile/hidden
	alpha = 5
/obj/structure/trap/shock/hidden
	alpha = 5
/obj/structure/trap/spike/hidden
	alpha = 5




/obj/structure/bars/weakened
	desc = "Iron bars made to keep things in or out. These one looks pretty rusty."
	max_integrity = INTEGRITY_POOR
	color = "#edc9c9"


/obj/structure/fermentation_keg
	icon = 'modular/stonekeep/icons/brewing.dmi'

/obj/structure/barricade
	attacked_sound = list('sound/combat/hits/onwood/woodimpact (1).ogg','sound/combat/hits/onwood/woodimpact (2).ogg')
	destroy_sound = 'sound/combat/hits/onwood/destroywalldoor.ogg'

// =================================================================
// =========================	FLORA	============================

/obj/structure/flora/grass/thorn_bush
	alpha = 200
	max_integrity = 12

/obj/structure/flora/grass/update_icon()
	. = ..()
	alpha = 220

/obj/structure/flora/rock/pile
	density = FALSE

/obj/structure/flora/tree/neu
	name = "BUGREPORT MORONGOLOID HAS USED TEMPLATE TREE"
	desc = "Once leafed, growing, now just a home for termites."
	icon = 'modular/stonekeep/icons/pigflora64.dmi'
	icon_state = "acacia_dead"
	stump_type = /obj/structure/table/wood/treestump/burnt
	pixel_x = -16
	max_integrity = 180

/obj/structure/flora/tree/neu/acacia
	name = "dead tree"
	icon_state = "acacia_dead"
	opacity = FALSE
/obj/structure/flora/tree/neu/acacia/Initialize()
	. = ..()
	icon_state = "acacia_dead"
	dir = pick(GLOB.cardinals)

/obj/structure/flora/tree/neu/pine
	name = "pine tree"
	desc = "A smell of amber and pine needles linger."
	icon_state = "pine"
	opacity = FALSE
/obj/structure/flora/tree/neu/pine/Initialize()
	. = ..()
	icon_state = "pine"
	dir = pick(GLOB.cardinals)

/obj/structure/flora/tree/neu/pine_dead
	name = "dead tree"
	desc = "A faint smell of amber and pine needles linger."
	icon_state = "pine_dead"
	opacity = FALSE
/obj/structure/flora/tree/neu/pine_dead/Initialize()
	. = ..()
	icon_state = "pine_dead"

/obj/structure/flora/tree/neu/bush
	name = "bush"
	desc = ""
	icon_state = "deadbush_1"
	stump_type = /obj/item/grown/log/tree/stick
	max_integrity = 80
	destroy_sound = 'sound/misc/woodhit.ogg'
	static_debris = list(/obj/item/grown/log/tree/stick = 1)
//	pixel_x = -28
//	pixel_y = 6
	alpha = 255
	opacity = FALSE
	density = TRUE
	pass_flags = PASSTABLE
/obj/structure/flora/tree/neu/bush/Initialize()
	. = ..()
	icon_state = "deadbush_[rand(1,3)]"

/obj/structure/flora/tree/neu/bush/young
	name = "young tree"
	icon_state = "livebush_1"
/obj/structure/flora/tree/neu/bush/young/Initialize()
	. = ..()
	icon_state = "livebush_[rand(1,3)]"

/obj/structure/flora/tree/neu/brambles
	name = "brambles"
	desc = ""
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	icon_state = "bramblesc"
	stump_type = /obj/item/grown/log/tree/stick
	max_integrity = 120
	destroy_sound = 'sound/misc/woodhit.ogg'
	static_debris = list(/obj/item/grown/log/tree/stick = 1)
	alpha = 255
	pixel_x = 0
	opacity = TRUE
	density = TRUE
	color = "#5a5a5b"
/obj/structure/flora/tree/neu/brambles/Initialize()
	. = ..()
	icon_state = "bramblesc"
	color = "#ffffff"
	dir = pick(GLOB.cardinals)
/obj/structure/flora/tree/neu/brambles/north
	icon_state = "bramblesn"
	color = "#daff6c"
/obj/structure/flora/tree/neu/brambles/north/Initialize()
	. = ..()
	icon_state = "bramblesn"
/obj/structure/flora/tree/neu/brambles/west
	icon_state = "bramblesw"
	color = "#67ff76"
/obj/structure/flora/tree/neu/brambles/west/Initialize()
	. = ..()
	icon_state = "bramblesw"
/obj/structure/flora/tree/neu/brambles/south
	icon_state = "brambless"
	color = "#4a4aff"
/obj/structure/flora/tree/neu/brambles/south/Initialize()
	. = ..()
	icon_state = "brambless"
/obj/structure/flora/tree/neu/brambles/east
	icon_state = "bramblese"
	color = "#f57e7e"
/obj/structure/flora/tree/neu/brambles/east/Initialize()
	. = ..()
	icon_state = "bramblese"
/obj/structure/flora/tree/neu/brambles_corner
	name = "brambles"
	desc = ""
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	icon_state = "bramblescorner"
	stump_type = /obj/item/grown/log/tree/stick
	max_integrity = 120
	destroy_sound = 'sound/misc/woodhit.ogg'
	static_debris = list(/obj/item/grown/log/tree/stick = 1)
	alpha = 255
	opacity = TRUE
	density = TRUE
	pixel_x = 0
	color = "#45979e"
/obj/structure/flora/tree/neu/brambles_corner/Initialize()
	. = ..()
	icon_state = "bramblescorner"
	color = "#ffffff"
/obj/structure/punji_sticks
	icon = 'modular/stonekeep/icons/pigflora.dmi'

// pebbles can trigger ambush
/obj/structure/flora/rock/pebbles
	name = ""
	desc = ""
	icon_state = "dark"
	icon = 'modular/stonekeep/icons/pigflora.dmi'
	density = FALSE
	mouse_opacity = 0
/obj/structure/flora/rock/pebbles/Initialize()
	. = ..()
	dir = pick(GLOB.cardinals)
	icon_state = "dark"
/obj/structure/flora/rock/pebbles/Crossed(AM as mob)
	if(isliving(AM))
		var/mob/living/L = AM
		if(L.z == z)
			L.consider_ambush()
			playsound(src, pick('sound/foley/touch1.ogg','sound/foley/touch2.ogg','sound/foley/touch3.ogg'), 50, TRUE)
	. = ..()

/obj/structure/flora/rock/pebbles/gray/Initialize()
	. = ..()
	icon_state = "gray"
/obj/structure/flora/rock/pebbles/brown/Initialize()
	. = ..()
	icon_state = "brown"

/obj/structure/flora/rock/pebbles/bogmix
	icon_state = "bogmix1"
/obj/structure/flora/rock/pebbles/bogmix/Initialize()
	. = ..()
	icon_state = "bogmix[rand(1,2)]"
	dir = pick(GLOB.alldirs)


/datum/looping_sound/wiseloop
	mid_sounds = list('sound/music/tree.ogg')
	mid_length = 1200
	volume = 80
	extra_range = -1

/obj/structure/flora/tree/wise
	var/datum/looping_sound/wiseloop/soundloop

/obj/structure/flora/tree/wise/Initialize()
	. = ..()
	soundloop = new(src, FALSE)
	soundloop.start()

/obj/structure/flora/tree/wise/Destroy()
	soundloop.stop()
	. = ..()

/obj/structure/flora/tree/wise/examine(mob/living/carbon/user)
	. = ..()
	switch(user.patron?.type)
		if(/datum/patron/divine/dendor)
			to_chat(user, "<span class='warning'>I feel at peace.</span>")
			user.add_stress(/datum/stressevent/moment_of_calm)
		else
			to_chat(user, "<span class='warning'>Life is not so bad after all.</span>")

/datum/stressevent/moment_of_calm
	timer = 10 MINUTES
	stressadd = -3
	desc = span_green("I feel at peace.")


/obj/structure/flora/shroom_tree_neu
	name = "shroom"
	desc = "A huge inedible mushroom, prized by dwarves for their shroomwood."
	icon = 'modular/stonekeep/icons/pigflora64.dmi'
	icon_state = "shroomtree_1"
	base_icon_state = "shroomtree"
	opacity = 0
	density = TRUE
	max_integrity = 120
	blade_dulling = DULLING_CUT
	pixel_x = -16
	plane = -4
	layer = 4.81
	attacked_sound = 'sound/misc/woodhit.ogg'
	destroy_sound = 'sound/misc/woodhit.ogg'
	static_debris = list( /obj/item/grown/log/tree/small = 1)
	dir = SOUTH

/obj/structure/flora/shroom_tree_neu/Initialize()
	. = ..()
	icon_state = "[base_icon_state]_[rand(1,5)]"
	dir = pick(GLOB.cardinals)
	pixel_x += rand(2,-2)
	pixel_y += rand(0,1)

/obj/structure/flora/shroom_tree_neu/fire_act(added, maxstacks)
	if(added > 5)
		return ..()

/obj/structure/flora/shroom_tree_neu/obj_destruction(damage_flag)
	var/obj/structure/S = new /obj/structure/table/wood/treestump/shroomstumpneu(loc)
	S.icon_state = "[base_icon_state]stump"
	. = ..()

/obj/structure/table/wood/treestump/shroomstumpneu
	name = "shroom stump"
	desc = "It was a very happy shroom. Not anymore."
	icon_state = "shroomtreestump"
	desc = "Here once stood a mighty nether-cap, you feel a great sadness."
	opacity = 0
	icon = 'modular/stonekeep/icons/pigflora64.dmi'
	alpha = 255
	pixel_x = -16
	climb_offset = 14
	stump_loot = /obj/item/reagent_containers/food/snacks/truffles

/obj/structure/flora/grass/swampweed
	icon = 'modular/stonekeep/icons/pigflora.dmi'



// =========================================================================
// =========================	MATTHIOS IDOL	============================
/obj/structure/fluff/statue/evil
	max_integrity = 600
/obj/structure/fluff/statue/evil/attackby(obj/item/W, mob/user, params)
	if(user.mind)
		var/datum/antagonist/bandit/B = user.mind.has_antag_datum(/datum/antagonist/bandit)
		if(B)
			if(istype(W, /obj/item/coin) || istype(W, /obj/item/gem) || istype(W, /obj/item/reagent_containers/glass/cup/silver) || istype(W, /obj/item/reagent_containers/glass/cup/golden) || istype(W, /obj/item/reagent_containers/glass/carafe) || istype(W, /obj/item/clothing/ring) || istype(W, /obj/item/clothing/head/crown/circlet) || istype(W, /obj/item/statue))
				if(B.tri_amt >= 10)
					to_chat(user, "<span class='warning'>The mouth doesn't open.</span>")
					return
				if(!istype(W, /obj/item/coin))
					B.contrib += (W.get_real_price() / 2) //sell jewerly and other fineries, though at a lesser price compared to fencing them first
				else
					B.contrib += W.get_real_price()
				if(B.contrib >= 100)
					B.tri_amt++
					user.mind.adjust_triumphs(1)
					B.contrib -= 100
					var/obj/item/I
					switch(B.tri_amt)
						if(1)
							I = new /obj/item/reagent_containers/glass/bottle/healthpot(user.loc)
						if(2)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/wrists/bracers/leather/heavy(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/neck/chaincoif/iron(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/head/helmet/heavy/ironplate(user.loc)
						if(3)
							if(user.get_skill_level(/datum/skill/magic/arcane) > 2)
								I = new /datum/reagent/medicine/strongmana(user.loc)
							else
								I = new /obj/item/reagent_containers/powder/moondust(user.loc)
						if(4)
							if(user.get_skill_level(/datum/skill/combat/bows) > 3)
								I = new /obj/item/gun/ballistic/revolver/grenadelauncher/bow/long(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/crossbows) > 3)
								I = new /obj/item/weapon/knife/dagger/steel(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/axesmaces) > 3)
								I = new /obj/item/weapon/axe/battle(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/polearms) > 3)
								I = new /obj/item/weapon/polearm/eaglebeak/lucerne(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/shields) > 3)
								I = new /obj/item/weapon/sword/sabre(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/whipsflails) > 3)
								I = new /obj/item/weapon/flail/sflail(user.loc)
							else if(user.get_skill_level(/datum/skill/misc/medicine) > 4)
								I = new /obj/item/weapon/knife/cleaver/combat(user.loc)
							else if(user.get_skill_level(/datum/skill/magic/arcane) > 2)
								I = new /obj/item/weapon/polearm/woodstaff/quarterstaff/steel(user.loc)
						if(5)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/pants/trou/leather/heavy(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/wrists/bracers(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/wrists/bracers/leather/heavy(user.loc)
						if(6)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/armor/leather/splint(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/armor/medium/scale(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/armor/brigandine/coatplates(user.loc)
						if(7)
							if(user.get_skill_level(/datum/skill/combat/bows) > 3)
								I = new /obj/item/ammo_casing/caseless/arrow/poison/potent(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/crossbows) > 3)
								I = new /obj/item/ammo_casing/caseless/bolt/poison/potent(user.loc)
							else if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/head/helmet/visored/klappvisier(user.loc)
							else
								I = new /obj/item/reagent_containers/glass/bottle/healthpot(user.loc)

						if(8)
							I = new /obj/item/clothing/ring/gold/protection(user.loc)
					if(I)
						I.sellprice = 0
					playsound(loc,'sound/items/carvgood.ogg', 50, TRUE)
				else
					playsound(loc,'sound/items/carvty.ogg', 50, TRUE)
				playsound(loc,'sound/misc/eat.ogg', rand(30,60), TRUE)
				qdel(W)
				return
	..()

/*
// =========================================================================
// ======================	ADVENTURER CERTIFICATION	====================

/obj/structure/fluff/certifier/attackby(obj/item/W, mob/user, params)
	if(user.mind)
		var/datum/antagonist/bandit/B = user.mind.has_antag_datum(/datum/antagonist/bandit)
		if(B)
			if(istype(W, /obj/item/clothing/ring/adventurer/copper) || istype(W, /obj/item/gem) || istype(W, /obj/item/reagent_containers/glass/cup/silver) || istype(W, /obj/item/reagent_containers/glass/cup/golden) || istype(W, /obj/item/reagent_containers/glass/carafe) || istype(W, /obj/item/clothing/ring) || istype(W, /obj/item/clothing/head/crown/circlet) || istype(W, /obj/item/statue))
				if(B.tri_amt >= 10)
					to_chat(user, "<span class='warning'>The mouth doesn't open.</span>")
					return
				if(!istype(W, /obj/item/coin))
					B.contrib += (W.get_real_price() / 2) //sell jewerly and other fineries, though at a lesser price compared to fencing them first
				else
					B.contrib += W.get_real_price()
				if(B.contrib >= 100)
					B.tri_amt++
					user.mind.adjust_triumphs(1)
					B.contrib -= 100
					var/obj/item/I
					switch(B.tri_amt)
						if(1)
							I = new /obj/item/reagent_containers/glass/bottle/healthpot(user.loc)
						if(2)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/wrists/bracers/leather/heavy(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/neck/chaincoif/iron(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/head/helmet/heavy/ironplate(user.loc)
						if(3)
							if(user.get_skill_level(/datum/skill/magic/arcane) > 2)
								I = new /datum/reagent/medicine/strongmana(user.loc)
							else
								I = new /obj/item/reagent_containers/powder/moondust(user.loc)
						if(4)
							if(user.get_skill_level(/datum/skill/combat/bows) > 3)
								I = new /obj/item/gun/ballistic/revolver/grenadelauncher/bow/long(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/crossbows) > 3)
								I = new /obj/item/weapon/knife/dagger/steel(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/axesmaces) > 3)
								I = new /obj/item/weapon/axe/battle(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/polearms) > 3)
								I = new /obj/item/weapon/polearm/eaglebeak/lucerne(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/shields) > 3)
								I = new /obj/item/weapon/sword/sabre(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/whipsflails) > 3)
								I = new /obj/item/weapon/flail/sflail(user.loc)
							else if(user.get_skill_level(/datum/skill/misc/medicine) > 4)
								I = new /obj/item/weapon/knife/cleaver/combat(user.loc)
							else if(user.get_skill_level(/datum/skill/magic/arcane) > 2)
								I = new /obj/item/weapon/polearm/woodstaff/quarterstaff/steel(user.loc)
						if(5)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/pants/trou/leather/heavy(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/wrists/bracers(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/wrists/bracers/leather/heavy(user.loc)
						if(6)
							if(HAS_TRAIT(user, TRAIT_DODGEEXPERT))
								I = new /obj/item/clothing/armor/leather/splint(user.loc)
							if(HAS_TRAIT(user, TRAIT_MEDIUMARMOR))
								I = new /obj/item/clothing/armor/medium/scale(user.loc)
							if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/armor/brigandine/coatplates(user.loc)
						if(7)
							if(user.get_skill_level(/datum/skill/combat/bows) > 3)
								I = new /obj/item/ammo_casing/caseless/arrow/poison/potent(user.loc)
							else if(user.get_skill_level(/datum/skill/combat/crossbows) > 3)
								I = new /obj/item/ammo_casing/caseless/bolt/poison/potent(user.loc)
							else if(HAS_TRAIT(user, TRAIT_HEAVYARMOR))
								I = new /obj/item/clothing/head/helmet/visored/klappvisier(user.loc)
							else
								I = new /obj/item/reagent_containers/glass/bottle/healthpot(user.loc)

						if(8)
							I = new /obj/item/clothing/ring/gold/protection(user.loc)
					if(I)
						I.sellprice = 0
					playsound(loc,'sound/items/carvgood.ogg', 50, TRUE)
				else
					playsound(loc,'sound/items/carvty.ogg', 50, TRUE)
				playsound(loc,'sound/misc/eat.ogg', rand(30,60), TRUE)
				qdel(W)
				return
	..()
*/


// =========================================================================
// =========================	CORRUPTED WELL	============================

/obj/structure/corrupted_well
	name = "stinking well"
	desc = "A well of stone. Has a hook which a bucket can be attached to, to draw water from beneath. The smell of rot and deat wells out of it."
	icon = 'icons/roguetown/misc/structure.dmi'
	icon_state = "welly"
	anchored = TRUE
	density = TRUE
	opacity = 0
	layer = 2.91
	damage_deflection = 30

/obj/structure/corrupted_well/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/reagent_containers/glass/bucket))
		var/obj/item/reagent_containers/glass/bucket/W = I
		if(W.reagents.holder_full())
			to_chat(user, "<span class='warning'>[W] is full.</span>")
			return
		if(do_after(user, 6 SECONDS, src))
			var/list/waterl = list(/datum/reagent/yuck/cursed_soup = 100)
			W.reagents.add_reagent_list(waterl)
			to_chat(user, "<span class='notice'>I fill [W] from [src].</span>")
			playsound(user, pick('sound/foley/waterwash (1).ogg','sound/foley/waterwash (2).ogg'), 80, FALSE)
			return
	else ..()






/obj/structure/bars/cemetery
	plane = -5
	layer = 3


/obj/structure/plaguepile
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "plaguepile"
	density = TRUE
	var/datum/looping_sound/fliesloop/soundloop

/obj/structure/plaguepile/Initialize()
	. = ..()
	soundloop = new(src, FALSE)
	soundloop.start()

/obj/structure/plaguepile/Destroy()
	soundloop.stop()
	. = ..()

/obj/structure/plaguepile/examine(mob/living/carbon/user)
	. = ..()
	switch(user.patron?.type)
		if(/datum/patron/divine/necra)
			to_chat(user, "<span class='warning'>They are with the Undermaiden now, may they rest well.</span>")
		else
			to_chat(user, "<span class='warning'>Horrific...</span>")
			user.add_stress(/datum/stressevent/viewgib)


/obj/structure/hellgoblin_circle
	desc = ""
	icon = 'icons/roguetown/misc/96x96.dmi'
	icon_state = "circle"
	alpha = 240
	pixel_y = -32
	pixel_x = -32
	color = "#851616"


/obj/structure/pressure_plate/onetime/triggerplate()
	. = ..()
	anchored = FALSE
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/structure/bars/passage/open
	icon_state = "passage1"
	density = FALSE


/obj/structure/chair/bench/couch/redright_middle
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "redcouch_alt_middle"


/obj/structure/closet/crate/chest/rotting
	name = "rotting crate"
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "crate_rotting"
	base_icon_state = "crate_rotting"


/obj/structure/fluff/walldeco/mines
	icon = 'modular/stonekeep/icons/structure.dmi'
	icon_state = "support1"
	pixel_y = 32

/obj/structure/fluff/walldeco/mines/alt
	icon_state = "support2"

/obj/structure/fluff/walldeco/mines/wall
	icon_state = "support3"

/obj/structure/fluff/walldeco/mines/wallbroken
	icon_state = "support4"


/obj/structure/bed
	sleepy = 1
/obj/structure/bed/inn
	sleepy = 2
/obj/structure/bed/inn/double
	sleepy = 2
/obj/structure/bed/wool
	sleepy = 1.5
