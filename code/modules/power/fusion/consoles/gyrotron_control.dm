/obj/machinery/computer/fusion/gyrotron
	name = "gyrotron control console"
	icon_keyboard = "med_key"
	icon_screen = "gyrotron_screen"
	light_color = COLOR_BLUE
	ui_template = "fusion_gyrotron_control.tmpl"

/obj/machinery/computer/fusion/gyrotron/OnTopic(var/mob/user, var/href_list, var/datum/topic_state/state)

	if(href_list["modifypower"] || href_list["modifyrate"] || href_list["toggle"])

		var/obj/machinery/power/emitter/gyrotron/G = locate(href_list["machine"])
		if(!istype(G))
			return TOPIC_NOACTION

		var/datum/fusion_plant/plant = get_fusion_plant()
		if(!plant || !plant.gyrotrons[G])
			return TOPIC_NOACTION

		if(href_list["modifypower"])
			var/new_val = input("Enter new emission power level (1 - 50)", "Modifying power level", G.mega_energy) as num
			if(!new_val)
				to_chat(user, SPAN_WARNING("That's not a valid number."))
				return TOPIC_NOACTION
			G.mega_energy = Clamp(new_val, 1, 50)
			G.change_power_consumption(G.mega_energy * 1500, POWER_USE_ACTIVE)
			return TOPIC_REFRESH

		if(href_list["modifyrate"])
			var/new_val = input("Enter new emission delay between 1 and 10 seconds.", "Modifying emission rate", G.rate) as num
			if(!new_val)
				to_chat(user, SPAN_WARNING("That's not a valid number."))
				return TOPIC_NOACTION
			G.rate = Clamp(new_val, 1, 10)
			return TOPIC_REFRESH

		if(href_list["toggle"])
			G.activate(user)
			return TOPIC_REFRESH

/obj/machinery/computer/fusion/gyrotron/build_ui_data()
	. = ..()
	var/list/data = .
	var/datum/extension/fusion_plant_member/fusion = get_extension(src, /datum/extension/fusion_plant_member)
	var/datum/fusion_plant/plant = fusion.get_fusion_plant()
	var/list/gyrotrons = list()
	if(plant)
		for(var/i = 1 to LAZYLEN(plant.gyrotrons))
			var/list/gyrotron = list()
			var/obj/machinery/power/emitter/gyrotron/G = plant.gyrotrons[i]
			gyrotron["id"] =        "#[i]"
			gyrotron["ref"] =       "\ref[G]" 
			gyrotron["active"] =    G.active
			gyrotron["firedelay"] = G.rate
			gyrotron["energy"] = G.mega_energy
			gyrotrons += list(gyrotron)
	data["gyrotrons"] = gyrotrons
	. = data
