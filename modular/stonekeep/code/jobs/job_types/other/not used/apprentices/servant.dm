/datum/job/stonekeep/servant
	title = "Servant"
	flag = SERVANT
	department_flag = APPRENTICES
	faction = FACTION_TOWN
	total_positions = 0
	spawn_positions = 0

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar"
	)
	allowed_ages = list(AGE_CHILD, AGE_ADULT, AGE_IMMORTAL)
	advclass_cat_rolls = list(CTAG_SERVANT = 20)

/datum/job/stonekeep/servant/after_spawn(mob/living/L, mob/M, latejoin = TRUE)
	..()
	if(L)
		var/mob/living/carbon/human/H = L
		H.advsetup = 1
		H.invisibility = INVISIBILITY_MAXIMUM
		H.become_blind("advsetup")

	tutorial = "You work your fingers to the bone nearly every dae, and have naught to show for it but boney fingers. Perhaps this week you will finally be recognized, or allowed some respite?"

	outfit = /datum/outfit/job/stonekeep/servant
	display_order = JDO_SERVANT
	give_bank_account = TRUE
	min_pq = -25
	bypass_lastclass = TRUE

	can_have_apprentices = FALSE


/datum/outfit/job/stonekeep/servant/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.adjust_skillrank(/datum/skill/craft/cooking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/labor/butchering, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
		H.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.adjust_skillrank(/datum/skill/misc/stealing, 3, TRUE)
		H.adjust_skillrank(/datum/skill/misc/music, pick(0,1,1), TRUE)
		H.change_stat("speed", 1)
		H.change_stat("endurance", 1)
		shoes = /obj/item/clothing/shoes/simpleshoes
		pants = /obj/item/clothing/pants/tights/uncolored
		shirt = /obj/item/clothing/shirt/undershirt/uncolored
		belt = /obj/item/storage/belt/leather/rope
		beltl = /obj/item/storage/belt/pouch/coins/poor
		if(H.gender == MALE)
			armor = /obj/item/clothing/armor/leather/vest/black
		else
			cloak = /obj/item/clothing/cloak/apron

/datum/advclass/servant/keep
	name = "Keep's servant"
	tutorial = "You are the faceless, nameless labor that keeps the royal court fed, washed, and attended to."
	outfit = /datum/outfit/job/roguetown/servant/keep
	maximum_possible_slots = 5

	category_tags = list(CTAG_SERVANT)

/datum/outfit/job/roguetown/servant/keep/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		neck = /obj/item/key/manor

/datum/advclass/servant/inn
	name = "Innkeeper's servant"
	tutorial = "The Innkeeper needed waiters and here am I, serving the food, drinks and ensuring the rooms are clean."
	outfit = /datum/outfit/job/roguetown/servant/inn
	maximum_possible_slots = 2

	category_tags = list(CTAG_SERVANT)

/datum/outfit/job/roguetown/servant/inn/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		neck = /obj/item/key/tavern

/datum/advclass/servant/matron_assistant
	name = "Matron's servant"
	tutorial = "I once was an orphan, the matron took me in and now I am forever in her debt. That orphanage, those who were like me need guidance, I shall assist the matron in her tasks."
	outfit = /datum/outfit/job/roguetown/servant/matron_assistant
	maximum_possible_slots = 2

	category_tags = list(CTAG_SERVANT)

/datum/outfit/job/roguetown/servant/matron_assistant/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		neck = /obj/item/key/matron
