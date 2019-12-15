-- This information tells other players more about the mod
name = "Upgradable Walking Cane"
description = "Recipe: Walking Cane + 1 Gear"
author = "CrashBone"
version = "1.0007"
forumthread = ""
api_version = 10
icon_atlas = "modicon.xml"
icon = "modicon.tex"

dont_starve_compatible 		= false
reign_of_giants_compatible 	= false
shipwrecked_compatible 		= false
dst_compatible 				= true

all_clients_require_mod 	= true
client_only_mod = false

configuration_options =
{
    {
        name = "canemultiplier",
        label = "Speed Bonus (Standard Cane gives 25%)",
		hover = "Recommended: 40%",
        options = 
        {
            {description = "35%", data = 1.35},
			{description = "40% (Recommended)", data = 1.4},
			{description = "45%", data = 1.45},
			{description = "50%", data = 1.5},
			{description = "55%", data = 1.55},
			{description = "60%", data = 1.6},
			{description = "65%", data = 1.65},
			{description = "70%", data = 1.7},
			{description = "75%", data = 1.75},
			{description = "100%", data = 2},
        },
        default = 1.4,
    },
}

--These tags allow the server running this mod to be found with filters from the server listing screen
--server_filter_tags = {"exampletag"}