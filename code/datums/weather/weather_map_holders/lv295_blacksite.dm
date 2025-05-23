/datum/weather_ss_map_holder/lv295_blacksite
	name = "LV-295 Map Holder"

	warn_time = 1 MINUTES
	min_time_between_events = 1 MINUTES
	min_time_between_checks = 0
	min_check_variance = 0

	no_weather_turf_icon_state = "strata_clearsky"

	potential_weather_events = list(
		/datum/weather_event/blizzard/lv_295,
	)

/datum/weather_ss_map_holder/lv295_blacksite/should_affect_area(area/A)
	return !CEILING_IS_PROTECTED(A.ceiling, CEILING_GLASS)

/datum/weather_ss_map_holder/lv295_blacksite/should_start_event()
	return TRUE
