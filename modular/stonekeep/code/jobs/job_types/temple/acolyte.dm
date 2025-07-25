/datum/job/stonekeep/acolyte
	title = "Acolyte"
	flag = SK_ACOLYTE
	department_flag = CHURCHMEN
	faction = FACTION_TOWN
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order =  ACOLYTE_ORDER
	total_positions = 4
	spawn_positions = 4


	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Aasimar"
	)
	tutorial = "Chores, exercise, prayer... and more chores. You are a humble acolyte at the Temple of the Ten not yet a trained guardian or an ordained priest. But who else would keep the fires lit and the floors clean?"
	allowed_patrons = 	list(/datum/patron/divine/astrata, /datum/patron/divine/noc, /datum/patron/divine/abyssor, /datum/patron/divine/pestra, /datum/patron/divine/eora)
	outfit = /datum/outfit/job/stonekeep/acolyte

	give_bank_account = TRUE
	min_pq = -10
	bypass_lastclass = TRUE
	cmode_music = 'sound/music/cmode/church/combat_templar.ogg'

/datum/outfit/job/stonekeep/acolyte
	name = "Acolyte"
	jobtype = /datum/job/stonekeep/acolyte
	allowed_patrons = 	list(/datum/patron/divine/astrata, /datum/patron/divine/noc, /datum/patron/divine/abyssor, /datum/patron/divine/pestra, /datum/patron/divine/eora)
	job_bitflag = BITFLAG_CHURCH

/datum/outfit/job/stonekeep/acolyte/pre_equip(mob/living/carbon/human/H)
	..()
	H.virginity = TRUE
	belt = /obj/item/storage/belt/leather/rope
	beltr = /obj/item/storage/belt/pouch/coins/poor
	beltl = /obj/item/key/church
	r_hand = /obj/item/weapon/polearm/woodstaff/quarterstaff
	backpack_contents = list(/obj/item/needle)
	switch(H.patron?.type)
		if(/datum/patron/divine/astrata)
			head = /obj/item/clothing/head/roguehood/astrata
			neck = /obj/item/clothing/neck/psycross/silver/astrata
			wrists = /obj/item/clothing/wrists/wrappings
			shoes = /obj/item/clothing/shoes/sandals
			armor = /obj/item/clothing/shirt/robe/astrata
		if(/datum/patron/divine/eora)
			head = /obj/item/clothing/head/padded/rabbetvisage
			neck = /obj/item/clothing/neck/psycross/silver/eora
			shoes = /obj/item/clothing/shoes/sandals
			armor = /obj/item/clothing/shirt/robe/eora
			H.virginity = FALSE
		if(/datum/patron/divine/noc)
			head = /obj/item/clothing/head/roguehood/nochood
			neck = /obj/item/clothing/neck/psycross/noc
			wrists = /obj/item/clothing/wrists/nocwrappings
			shoes = /obj/item/clothing/shoes/sandals
			armor = /obj/item/clothing/shirt/robe/noc
		if(/datum/patron/divine/pestra)
			head = /obj/item/clothing/head/roguehood/brown
			neck = /obj/item/clothing/neck/psycross/silver/pestra
			shirt = /obj/item/clothing/shirt/undershirt/green
			shoes = /obj/item/clothing/shoes/sandals
			armor = /obj/item/clothing/shirt/robe/phys
		if(/datum/patron/divine/abyssor)
			head = /obj/item/clothing/head/padded/shrinekeeper
			neck = /obj/item/clothing/neck/psycross/silver/abyssor
			armor = /obj/item/clothing/shirt/robe/shrinekeeper
			shirt = /obj/item/clothing/shirt/rags/monkgarb/random
			shoes = /obj/item/clothing/shoes/sandals/geta
			wrists = /obj/item/clothing/wrists/shrinekeeper
			H.adjust_skillrank(/datum/skill/labor/fishing, 1, TRUE)
		if(/datum/patron/divine/xylix)
			head = /obj/item/clothing/head/roguehood/random
			neck = /obj/item/clothing/neck/psycross/silver/xylix
			shoes = /obj/item/clothing/shoes/boots
			armor = /obj/item/clothing/shirt/robe/plain
			H.adjust_skillrank(/datum/skill/misc/stealing, 1, TRUE)
		if(/datum/patron/divine/malum)
			head = /obj/item/clothing/head/helmet/leather/minershelm/malumite
			neck = /obj/item/clothing/neck/psycross/silver/malum
			shoes = /obj/item/clothing/shoes/boots
			armor = /obj/item/clothing/shirt/robe/malum
			backpack_contents += /obj/item/weapon/hammer/iron
		else // Failsafe
			head = /obj/item/clothing/head/roguehood/random
			neck = /obj/item/clothing/neck/psycross/silver
			shoes = /obj/item/clothing/shoes/boots
			armor = /obj/item/clothing/shirt/robe/plain

	H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
	H.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE) // They get this and a wooden staff to defend themselves
	H.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.adjust_skillrank(/datum/skill/combat/axesmaces, 1, TRUE)
	H.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
	if(H.age == AGE_OLD)
		H.adjust_skillrank(/datum/skill/magic/holy, 1, TRUE)
	H.change_stat("intelligence", 1)
	H.change_stat("endurance", 2) // For casting lots of spells, and working long hours without sleep at the church
	H.change_stat("perception", -1)

	var/datum/devotion/cleric_holder/C = new /datum/devotion/cleric_holder(H, H.patron)
	H.verbs += list(/mob/living/carbon/human/proc/devotionreport, /mob/living/carbon/human/proc/clericpray)
	C.grant_spells(H)
