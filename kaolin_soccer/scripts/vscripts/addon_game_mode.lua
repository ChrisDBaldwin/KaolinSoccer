-- Generated from template

require('util')
require('physics')
require('multiteam')
require('kaolinsoccer')
require('kaolinsoccer_triggers')

function Precache( context )
	--[[
		Precache things we know we'll use.  Possible file types include (but not limited to):
			PrecacheResource( "model", "*.vmdl", context )
			PrecacheResource( "soundfile", "*.vsndevts", context )
			PrecacheResource( "particle", "*.vpcf", context )
			PrecacheResource( "particle_folder", "particles/folder", context )
	]]
		PrecacheUnitByNameAsync( "npc_dota_earth_spirit_stone", context)
    	PrecacheResource( "soundfile", "*.vsndevts", context )
    	PrecacheResource( "particle_folder", "particles/frostivus_gameplay", context )
    	PrecacheResource("model", "models/particle/meteor.mdl", context)
		PrecacheUnitByNameSync('npc_precache_everything', context)
end

-- Create the game mode when we activate
function Activate()
	GameRules.KaolinSoccer = KaolinSoccerGameMode()
	GameRules.KaolinSoccer:InitGameMode()
end
