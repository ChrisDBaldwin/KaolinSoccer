-- Cool this is where I'll have goals triggered and stuff

function OnStartTouch(trigger)
	print("[Kaolin Soccer] Trigger Goal!")

	local unit = trigger.activator:GetUnitName()
	local side = trigger.caller:GetName()
	local health = trigger.activator:GetHealth()

	print(unit)
	print(health)
	print(side)

	if health == 100 and unit == 'kaolin_soccer_ball' then
		if side == 'dire_goal' then
			print("add a point to radiant")
			KaolinSoccerGameMode:GoalScored('radiant')
			ParticleManager:CreateParticle("particles/econ/items/abaddon/abaddon_alliance/abaddon_aphotic_shield_alliance_explosion.vpcf", 1, trigger.activator)

		elseif side == 'radiant_goal' then
			print("add a point to dire")
			KaolinSoccerGameMode:GoalScored('dire')
			ParticleManager:CreateParticle("particles/econ/items/abaddon/abaddon_alliance/abaddon_aphotic_shield_alliance_explosion.vpcf", 1, trigger.activator)
		end
		SpawnBall()
	end
	trigger.activator:SetModel("models/development/invisiblebox.vmdl")
	trigger.activator:ForceKill( true )
end


function OutOfBounds(trigger)
	print("[Kaolin Soccer] Trigger Out of Bounds")

	local unit = trigger.activator:GetUnitName()
	local health = trigger.activator:GetHealth()

	if health == 100 and unit == 'kaolin_soccer_ball' then
		SpawnBall()
	end
	ParticleManager:CreateParticle("particles/units/heroes/hero_earth_spirit/earthspirit_stone_debris_rock.vpcf", 1, trigger.activator)
	trigger.activator:SetModel("models/development/invisiblebox.vmdl")
	trigger.activator:ForceKill( true )
end