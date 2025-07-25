/datum/job/cook
	title = "Cook"
	flag = SK_COOK
	department_flag = PEASANTS
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	faction = FACTION_TOWN
	display_order = COOK_ORDER
	total_positions = 2
	spawn_positions = 2

	allowed_races = list(
		"Humen",
		"Half-Elf",
		"Dwarf",
		"Tiefling"
	)
	tutorial = "Slice, chop, and into the pot... you work closely with the innkeep to prepare meals for all the hungry mouths. You've spent more nites than you can count cutting meat and vegetables until your fingers are bloody and raw, but it's honest work."

	outfit = /datum/outfit/job/stonekeep/cook

	min_pq = -50
	give_bank_account = 8
	can_have_apprentices = TRUE
	cmode_music = 'sound/music/cmode/combat_guard.ogg'

/datum/outfit/job/stonekeep/cook/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
		H.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/butchering, 4, TRUE)
		H.adjust_skillrank(/datum/skill/labor/taming, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		if(H.age == AGE_OLD)
			H.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)

	head = /obj/item/clothing/head/cookhat
	neck = /obj/item/storage/belt/pouch/coins/poor
	cloak = /obj/item/clothing/cloak/apron/cook
	belt = /obj/item/storage/belt/leather/rope
	beltl = /obj/item/key/tavern
	beltr = /obj/item/weapon/knife/villager
	shoes = /obj/item/clothing/shoes/simpleshoes
	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/tights/random
		shirt = /obj/item/clothing/shirt/shortshirt/random
	else
		shirt = /obj/item/clothing/shirt/undershirt/lowcut
		armor = /obj/item/clothing/armor/corset
		pants = /obj/item/clothing/pants/skirt/red

	H.change_stat("constitution", 2)


