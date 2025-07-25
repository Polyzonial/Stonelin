/datum/job/roguetown/wapprentice
	title = "Magician's Apprentice"
	department_flag = APPRENTICES
	faction = FACTION_TOWN
	total_positions = 0
	spawn_positions = 0

	allowed_races = list(
		"Humen",
		"Half-Elf"
	)
	allowed_ages = list(AGE_CHILD, AGE_ADULT)

	tutorial = "Your master once saw potential in you, something you are uncertain if they still do with your recent studies. The path to using magic is something treacherous and untamed, and you are still decades away from calling yourself even a journeyman in the field. Listen and serve, and someday you will earn your hat."

	outfit = /datum/outfit/job/roguetown/wapprentice
	display_order = JDO_WAPP
	give_bank_account = TRUE
	bypass_lastclass = TRUE
	can_have_apprentices = FALSE


/datum/outfit/job/roguetown/wapprentice/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/magic/arcane, pick(1,2), TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/combat/polearms, 3, TRUE)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/fetch)
	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/tights/random
		shoes = /obj/item/clothing/shoes/simpleshoes
		shirt = /obj/item/clothing/shirt/undershirt
		belt = /obj/item/storage/belt/leather/rope
		beltr = /obj/item/key/tower
		armor = /obj/item/clothing/armor/gambeson/light/striped
		backr = /obj/item/storage/backpack/satchel
	else
		shoes = /obj/item/clothing/shoes/sandals
		shirt = /obj/item/clothing/shirt/undershirt
		belt = /obj/item/storage/belt/leather/rope
		beltr = /obj/item/key/tower
		armor = /obj/item/clothing/armor/gambeson/light/striped
		backr = /obj/item/storage/backpack/satchel

	H.change_stat("intelligence", 1)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_MALUMFIRE, TRAIT_GENERIC)
