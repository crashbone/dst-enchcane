-- This information tells other players more about the mod
name = "Upgradable Walking Cane"
description = "WARNING!: Too much speed crashes the game. Don't make both options too high!\n\nMake an Upgradable Walking Cane with one gear, allows you to move faster. You can change speed bonus. Standard Walking Cane gives 25% speed boost.\n\n40%, 8% are recommended options.\n\nRecipes:\n(lvl 1) Cane: 1 Standard Walking Cane + 1 Gear\n(lvl 2) Cane: (lvl 1) Cane + 1 Blue Gem + 5 Gold\n(lvl 3) Cane: (lvl 2) Cane + 1 Blue Gem + 10 Gold\n(lvl 4 MAX) Cane: (lvl 3) Cane + 1 Red Gem + 20 Gold"
author = "CrashBone"
version = "1.102"
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
        label = "lvl 1 Speed Bonus",
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
    {
        name = "extraoneachlvl",
        label = "Extra bonus on each lvl",
		  hover = "Recommended: 8%",
        options =
        {
         {description = "5%", data = 0.05},
         {description = "6%", data = 0.06},
         {description = "7%", data = 0.07},
			{description = "8% (Recommended)", data = 0.08},
			{description = "10%", data = 0.1},
			{description = "12%", data = 0.12},
			{description = "15%", data = 0.15},
			{description = "20%", data = 0.2},
			{description = "25%", data = 0.25},
         {description = "30%", data = 0.3},
        },
        default = 0.08,
    },
}

--These tags allow the server running this mod to be found with filters from the server listing screen
--server_filter_tags = {"exampletag"}
