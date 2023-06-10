ENT.Type = "anim"
ENT.Base = "base_gmodentity"
ENT.PrintName = "DodgeBall"
ENT.Spawnable = true
function ENT:SetupDataTables()

	self:NetworkVar( "Entity", 0 , "Goofy" )

end