-- Cool this is where I'll have goals triggered and stuff

function OnStartTouch(trigger)
	print("[Kaolin Soccer] Trigger!")

	local unit = trigger.activator:GetUnitName()
	local side = trigger.caller:GetName()
	local health = trigger.activator:GetHealth()

	print(unit)
	print(health)
	print(side)

	if health == 100 and unit == 'npc_dota_earth_spirit_stone' then
		if side == 'dire_goal' then
			print("add a point to radiant")
			KaolinSoccerGameMode:GoalScored('radiant')

		elseif side == 'radiant_goal' then
			print("add a point to dire")
			KaolinSoccerGameMode:GoalScored('dire')
		end
		SpawnStone()
	end

	trigger.activator:ForceKill( true )
end