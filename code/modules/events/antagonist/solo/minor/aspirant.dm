/datum/round_event_control/antagonist/solo/aspirant
	name = "Aspirant"
	tags = list(
		TAG_VILLIAN,
	)
	antag_datum = /datum/antagonist/aspirant
	roundstart = TRUE
	antag_flag = ROLE_ASPIRANT
	shared_occurence_type = SHARED_MINOR_THREAT
	minor_roleset = TRUE

	needed_job = list(
		"Consort" ,
		"Hand" ,
		"Prince" ,
		"Captain",
		"Steward",
		"Court Magician",
		"Archivist",
		"Town Elder",
		"Sheriff",	// STONEKEEP EDIT
		"Court Wizard",	// STONEKEEP EDIT
		"Village Elder" // STONEKEEP EDIT
	)

	base_antags = 1
	maximum_antags = 1

	earliest_start = 0 SECONDS

	weight = 8

	typepath = /datum/round_event/antagonist/solo/aspirant

/datum/round_event/antagonist/solo/aspirant

/datum/round_event/antagonist/solo/aspirant/start()
	for(var/datum/mind/antag_mind as anything in setup_minds)
		add_datum_to_mind(antag_mind, antag_mind.current)

	var/list/helping = list("Consort" ,"Hand" ,"Prince" ,"Captain" ,"Steward" ,"Court Magician ","Archivist", "Royal Knight", "Town Elder","Veteran", "Sheriff", "Court Wizard", "Village Elder" ) // STONEKEEP EDIT
	var/list/possible_helpers = list()
	for(var/mob/living/living in GLOB.human_list) // living checking in human list :)
		if(!living.client)
			continue
		if(is_banned_from(living.client.ckey, ROLE_ASPIRANT))
			continue
		if(!(living.mind?.assigned_role.title in helping))
			continue
		if(living.mind in setup_minds)
			continue
		possible_helpers |= living

	for(var/i in rand(1, 3)) // random amount of helpers ranging from 1 to 3
		var/mob/living/helper = pick_n_take(possible_helpers)
		helper?.mind?.special_role = "Supporter"
		helper?.mind?.add_antag_datum(/datum/antagonist/aspirant/supporter)
