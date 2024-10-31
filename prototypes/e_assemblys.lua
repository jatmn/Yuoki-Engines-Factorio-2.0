data:extend(
{  
	-- Tutorial
	{
		type = "assembling-machine",
		name = "ye_fassembly1",
		 icon_size = 32, icon =  "__yi_engines_F2__/graphics/entity/factory_var_1_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly1"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		animation =
		{			
			filename = "__yi_engines_F2__/graphics/entity/av1_sheet.png",			
			width = 320,
			height = 320,			
			shift = {1.0, -1.0},
			frame_count = 16,
			line_length = 4,			
			animation_speed = 0.25,			
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution  = 4.8 },
		},
		energy_usage = "300kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	

	{
		type = "assembling-machine",
		name = "ye_fassembly2",
		 icon_size = 32, icon =  "__yi_engines_F2__/graphics/entity/factory_var_2_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly2"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		fluid_boxes =
		{
			
			{
				volume = 200,
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{flow_direction="input", direction = defines.direction.north, position = {-0,-1}},								
				}
			},							
			{
				volume = 200,
				production_type = "output",
				base_area = 5,
				base_level = 1,
				pipe_connections = {
					{flow_direction="output", direction = defines.direction.north, position = {-0, 1}},								
				}
			},
		},
		fluid_boxes_off_when_no_fluid_recipe = true,	
		animation =
		{			
			filename = "__yi_engines_F2__/graphics/entity/av2_sheet.png",			
			width = 256,
			height = 256,			
			shift = {0.5, -0.5},
			frame_count = 36,
			line_length = 6,			
			animation_speed = 0.2,			
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 3.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution  = 8 },
		},
		energy_usage = "500kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 3,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	

	{
		type = "assembling-machine",
		name = "ye_fassembly_sp",
		 icon_size = 32, icon =  "__yi_engines_F2__/graphics/entity/factory_var_3_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_fassembly_sp"},
		max_health = 250,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",

		fluid_boxes =
		{
			
			{
				volume = 200,
				production_type = "input",
				base_area = 5,
				base_level = -1,
				pipe_connections = {
					{flow_direction="input", direction = defines.direction.north, position = {-0,-1}},								
				}
			},							
		},
		fluid_boxes_off_when_no_fluid_recipe = true,
		animation =
		{			
			filename = "__yi_engines_F2__/graphics/entity/av3_sheet.png",			
			width = 256,
			height = 256,
			shift = {0.5, -0.5},
			frame_count = 25,
			line_length = 5,			
			animation_speed = 0.1,
			scale = 0.5,
		},		
		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
		crafting_speed = 5.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution  = 11.2 },
		},
		energy_usage = "700kW",
		ingredient_count = 6,				
		module_specification =
		{
			module_slots = 2,			
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
		
		order="a[atomics]",
		subgroup = "yie_machinery2",
	},	


	
	
	
	{
		type = "recipe",
		name = "ye_green_ultimate",
		ingredients = {
			{ type = "item", name = "y_greensign", amount = 60000},
		},
		results = {
			{ type="item", name="ye_green_ultimate", amount=1},
		},
		group = "yuoki-energy", subgroup = "y_ultimate_products",					
		order="a0",
	},		
	{
		type="item", name="ye_green_ultimate",  icon_size = 32, icon = "__yi_engines_F2__/graphics/entity/green_ultimate_icon.png", 
		group="yuoki-energy", subgroup="y_ultimate_products", order="a0", place_result = "ye_green_ultimate", 
		stack_size = 1, default_request_amount = 1,
	},	
	{
		type = "assembling-machine",
		name = "ye_green_ultimate",
		 icon_size = 32, icon = "__yi_engines_F2__/graphics/entity/green_ultimate_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "ye_green_ultimate"},
		max_health = 5000,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},},
		collision_box = {{-6.2, -6.2}, {6.2, 6.2}},
		selection_box = {{-6.5, -6.5}, {6.5, 6.5}},
		--fast_replaceable_group = "assembling-machine",		
		animation =
		{			
			filename = "__yi_engines_F2__/graphics/entity/green_ultimate.png",			
			width = 480,
			height = 480,
			shift = {1, -1},
			frame_count = 1,
			line_length = 1,			
			--animation_speed = 0.25,
			--scale = 0.5,
		},		
		crafting_categories = {"yuoki_green_ultimate",},
		crafting_speed = 1.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = { pollution  = 11.2},
		},
		energy_usage = "700kW",
		ingredient_count = 6,				
		--module_specification = { module_slots = 0,},
		--allowed_effects = {"consumption", "speed", "productivity", "pollution"},				
		order="a0",
		subgroup = "y_ultimate_products",
	},	
	
})	
