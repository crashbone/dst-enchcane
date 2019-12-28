Assets={
	Asset("ANIM", "anim/enchcane_lvl2.zip"),
	Asset("ANIM", "anim/swap_enchcane_lvl2.zip"),
	Asset("ATLAS", "images/inventoryimages/enchcane_lvl2.xml"),
	Asset("IMAGE", "images/inventoryimages/enchcane_lvl2.tex"),
}

prefabs = {}

local function fn()

	local function OnEquip(inst, owner)
		owner.AnimState:OverrideSymbol("swap_object", "swap_enchcane_lvl2", "swap_enchcane_lvl2")
		owner.AnimState:Show("ARM_carry")
		owner.AnimState:Hide("ARM_normal")
	end

	local function OnUnequip(inst, owner)
		owner.AnimState:Hide("ARM_carry")
		owner.AnimState:Show("ARM_normal")
	end

	local inst = CreateEntity()
	local trans = inst.entity:AddTransform()
	local anim = inst.entity:AddAnimState()
	local sound = inst.entity:AddSoundEmitter()
	MakeInventoryPhysics(inst)



	anim:SetBank("enchcane_lvl2")
	anim:SetBuild("enchcane_lvl2")
	anim:PlayAnimation("idle")

	inst.entity:AddNetwork()
	if not TheWorld.ismastersim then
        return inst
    end

    inst.entity:SetPristine()


	inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.CANE_DAMAGE)

	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/inventoryimages/enchcane_lvl2.xml"
	inst.components.inventoryitem.imagename = "enchcane_lvl2"

	inst:AddComponent("equippable")
	inst.components.equippable:SetOnEquip( OnEquip )
	inst.components.equippable:SetOnUnequip( OnUnequip )
	inst.components.equippable.walkspeedmult = TUNING.ENCHCANE_LVL2.SPEEDMULTIPLIER

	return inst
end

return  Prefab("common/inventory/enchcane_lvl2", fn, Assets, prefabs)
