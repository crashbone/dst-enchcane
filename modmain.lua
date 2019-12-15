PrefabFiles = {"enchcane",}

GLOBAL.STRINGS.NAMES.ENCHCANE = "Enchanted Walking Cane"
GLOBAL.STRINGS.RECIPE_DESC.ENCHCANE = "Trot on with speed and poise, faster."
GLOBAL.TUNING.ENCHCANE = {
	SPEEDMULTIPLIER = GetModConfigData("canemultiplier")
}
local enchcanerecipe = GLOBAL.Recipe("enchcane",{ Ingredient("cane", 1), Ingredient("gears", 1)},                     
        GLOBAL.RECIPETABS.DRESS, {SCIENCE=2})
enchcanerecipe.atlas = "images/inventoryimages/enchcane.xml"