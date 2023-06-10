AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")
function ENT:Initialize()
self:SetModel("models/hunter/misc/sphere075x075.mdl")
self:PhysicsInit(SOLID_VPHYSICS)
self:SetMoveType(MOVETYPE_VPHYSICS)
self:SetSolid(SOLID_VPHYSICS)

self:SetColor(Color(120,244,120))

local phys = self:GetPhysicsObject()
if phys:IsValid() then
phys:Wake()
end
end
function ENT:Use(activator,caller,useType,value)

end
function ENT:Touch(entity)
	local pgalet = self:GetGoofy()
	if !IsValid(pgalet) then
	pgalet = self
	end
	local d = DamageInfo()
	d:SetDamage( entity:Health() )
	d:SetAttacker( pgalet )
	d:SetDamageType( DMG_CLUB ) 

	entity:TakeDamageInfo( d )
end