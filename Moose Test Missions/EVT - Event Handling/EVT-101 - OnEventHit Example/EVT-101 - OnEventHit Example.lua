---
-- Name: EVT-101 - OnEventHit Example
-- Author: FlightControl
-- Date Created: 7 February 2017
--
-- # Situation:
--
-- A plane is flying in the air and shoots an missile to a ground target.
-- 
-- # Test cases:
-- 
-- 1. Observe the plane shooting the missile.
-- 2. Observe when the missile hits the target, a dcs.log entry is written in the logging.
-- 3. Check the contents of the fields of the S_EVENT_HIT entry.

local Plane = UNIT:FindByName( "Plane" )

local Tank = UNIT:FindByName( "Tank" )

Plane:HandleEvent( EVENTS.Hit )
Tank:HandleEvent( EVENTS.Hit )

function Plane:OnEventHit( EventData )

  Plane:MessageToAll( "I just got hit!", 15, "Alert!" )
end

function Tank:OnEventHit( EventData )
  Tank:MessageToAll( "I just got hit!", 15, "Alert!" )
end

