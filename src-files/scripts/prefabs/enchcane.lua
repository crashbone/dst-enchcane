local assets={
	Asset("ANIM", "anim/enchcane.zip"),
	Asset("ANIM", "anim/swap_enchcane.zip"),
	Asset("ATLAS", "images/inventoryimages/enchcane.xml"),
	Asset("IMAGE", "images/inventoryimages/enchcane.tex"),
}

prefabs = {}

local function fn()
	
	local function OnEquip(inst, owner)
		owner.AnimState:OverrideSymbol("swap_object", "swap_enchcane", "swap_enchcane")
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
	
	

	anim:SetBank("enchcane")
	anim:SetBuild("enchcane")
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
	inst.components.inventoryitem.atlasname = "images/inventoryimages/enchcane.xml"
	inst.components.inventoryitem.imagename = "enchcane"

	inst:AddComponent("equippable")
	inst.components.equippable:SetOnEquip( OnEquip )
	inst.components.equippable:SetOnUnequip( OnUnequip )
	inst.components.equippable.walkspeedmult = TUNING.ENCHCANE.SPEEDMULTIPLIER
	
	return inst
end

return  Prefab("common/inventory/enchcane", fn, assets, prefabs)
