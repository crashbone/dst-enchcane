PrefabFiles = {"enchcane", "enchcane_lvl2", "enchcane_lvl3", "enchcane_lvl4"}
local assets = {
}

-- PrefabFiles = {"enchcane"}
-- PrefabFiles = {"enchcane", "enchcane_lvl2"}

local enchcane_datas = {
	{
		prefab = "enchcane",
		name = "(lvl 1) Upgradable Walking Cane",
		desc = "Trot on with speed and poise.",
	},
	{
		prefab = "enchcane_lvl2",
		name = "(lvl 2) Upgradable Walking Cane",
		desc = "Trot on with speed and poise.",
		recipe = {{"bluegem", 1}, {"gold", 5}}
	},
	{
		prefab = "enchcane_lvl3",
		name = "(lvl 3) Upgradable Walking Cane",
		desc = "Trot on with speed and poise.",
		recipe = {{"bluegem", 1}, {"gold", 10}}
	},
	{
		prefab = "enchcane_lvl4",
		name = "(lvl 4 MAX) Upgradable Walking Cane",
		desc = "Trot on with speed and poise.",
		recipe = {{"redgem", 1}, {"gold", 20}}
	}
}

--LVL1 First level

GLOBAL.STRINGS.NAMES[string.upper(enchcane_datas[1].prefab)] = enchcane_datas[1].name
GLOBAL.STRINGS.RECIPE_DESC[string.upper(enchcane_datas[1].prefab)] = enchcane_datas[1].desc
GLOBAL.TUNING[string.upper(enchcane_datas[1].prefab)] = {
	SPEEDMULTIPLIER = GetModConfigData("canemultiplier")
}
local dst_recipe = GLOBAL.Recipe(enchcane_datas[1].prefab, { Ingredient("cane", 1), Ingredient("gears", 1)},
        GLOBAL.RECIPETABS.DRESS, {SCIENCE=2})
dst_recipe.atlas = "images/inventoryimages/" .. enchcane_datas[1].prefab .. ".xml"


--LVL2 to LATEST LEVEL
for i = 2, #enchcane_datas do
	GLOBAL.STRINGS.NAMES[string.upper(enchcane_datas[i].prefab)] = enchcane_datas[i].name
	GLOBAL.STRINGS.RECIPE_DESC[string.upper(enchcane_datas[i].prefab)] = enchcane_datas[i].desc
	GLOBAL.TUNING[string.upper(enchcane_datas[i].prefab)] = {
		SPEEDMULTIPLIER = GetModConfigData("canemultiplier") + (i * GetModConfigData("extraoneachlvl"))
	}
	local dst_recipe = GLOBAL.Recipe(enchcane_datas[i].prefab, { Ingredient(enchcane_datas[i-1].prefab, 1, "images/inventoryimages/" .. enchcane_datas[i-1].prefab .. ".xml"), Ingredient(enchcane_datas[i].recipe[1][1], enchcane_datas[i].recipe[1][2]), Ingredient(enchcane_datas[i].recipe[2][1], enchcane_datas[i].recipe[2][2])},
	        GLOBAL.RECIPETABS.DRESS, {SCIENCE=2})
	dst_recipe.atlas = "images/inventoryimages/" .. enchcane_datas[i].prefab .. ".xml"
end
