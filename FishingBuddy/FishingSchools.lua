-- Support for schools

FishingBuddy.Schools = {};

local SCHOOLS = {};
local CLOSEENOUGH = 0.000001;

local function distance(x1, y1, x2, y2)
   local x = (x1 - x2);
   local y = (y1 - y2);
   return sqrt( (x * x) + (y * y) );
end

-- Let's store fishing holes like this
-- FishingBuddy_Info["Schools"][ZONE]
-- Store everything to two digits?

local function AddFishingSchool(kind, fishid, zidx, x, y)
   local entry = {};
   if ( not zidx ) then
      zidx, _ = FishingBuddy.GetZoneIndex();
   elseif ( type(zidx) == "string" ) then
      zidx = FishingBuddy.GetZoneIndex(zidx);
   end
   if ( not x or not y ) then
      x, y =  GetPlayerMapPosition("player");
   end
   if ( not FishingBuddy_Info["FishSchools"] ) then
      FishingBuddy_Info["FishSchools"] = {};
   end
   if ( not FishingBuddy_Info["FishSchools"][zidx] ) then
      FishingBuddy_Info["FishSchools"][zidx] = {};
   else
      -- how do we find the same pool?
      for _,hole in pairs(FishingBuddy_Info["FishSchools"][zidx]) do
	 local d = distance(hole.x, hole.y, x, y);
	 if ( d < CLOSEENOUGH ) then
	    if ( fishid ) then
	       if ( hole.fish ) then
		  for f,count in pairs(hole.fish) do
		     if ( f == fishid ) then
			hole.fish[f] = count + 1;
			return;
		     end
		  end
	       else
		  hole.fish = {};
	       end
	       hole.fish[fishid] = 1;
	    end
	    if ( hole.count ) then
	       hole.count = hole.count + 1;
	    else
	       hole.count = 1;
	    end
	    return;
	 end
      end
   end
   entry.kind = kind;
   entry.x = x;
   entry.y = y;
   entry.count = 1;
   if ( fishid ) then
      entry.fish = {};
      entry.fish[fishid] = 1;
   end
   tinsert(FishingBuddy_Info["FishSchools"][zidx], entry);
   return true;
end
FishingBuddy.Schools.AddFishingSchool = AddFishingSchool;

local function IsFishingHole(text)
   if ( text ) then
      for match, info in pairs(SCHOOLS) do
         if ( string.find(text, match) ) then
	    return info;
	 end
      end
   end
end
FishingBuddy.Schools.IsFishingHole = IsFishingHole;

local function CheckFishingHole(text, fishid)
   local info = IsFishingHole(text);
   if ( info ) then
      if ( Gatherer_AddGatherHere and
	  FishingBuddy.GetSetting("UseGatherer") == 1 ) then
	 Gatherer_AddGatherHere(info.gather, 0, info.gather, 2);
      end
      if ( AddFishingSchool(info.kind, fishid) and
	  FishingBuddy.GetSetting("ShowNewFishies") == 1 ) then
	 local zone,_ = FishingBuddy.GetZoneInfo();
	 FishingBuddy.Print(FBConstants.ADDSCHOOLMSG, text, zone);
      end
   end
end
FishingBuddy.Schools.CheckFishingHole = CheckFishingHole;

local function GetSchools(zidx)
   if ( type(zidx) == "string" ) then
      zidx = FishingBuddy.GetZoneIndex(zidx);
   end
   if ( FishingBuddy_Info["FishSchools"] and FishingBuddy_Info["FishSchools"][zidx] ) then
      return FishingBuddy_Info["FishSchools"][zidx];
   else
      return {};
   end
end
FishingBuddy.Schools.GetSchools = GetSchools;

FishingBuddy.Schools.Init = function()
   -- hook into Gatherer
   SCHOOLS[FBConstants.SCHOOL] = {
      ["gather"] = TREASURE_FISHNODE,
      ["kind"] = FBConstants.SCHOOL_FISH,
   };
   SCHOOLS[FBConstants.FLOATING_WRECKAGE] = {
      ["gather"] = TREASURE_FISHWRECK,
      ["kind"] = FBConstants.SCHOOL_WRECKAGE,
   };
   SCHOOLS[FBConstants.FLOATING_DEBRIS] = {
      ["gather"] = TREASURE_FISHWRECK,
      ["kind"] = FBConstants.SCHOOL_DEBRIS,
   };
   SCHOOLS[FBConstants.ELEM_WATER] = {
      ["gather"] = TREASURE_FISHELEM,
      ["kind"] = FBConstants.SCHOOL_WATER,
   };
   SCHOOLS[FBConstants.OIL_SPILL] = {
      ["gather"] = TREASURE_FISHWRECK,
      ["kind"] = FBConstants.SCHOOL_OIL,
   };
end

local function CollapseHoles()
   if ( FishingBuddy_Info["FishSchools"] ) then
      local zonecopy = {};
      for zidx,holes in pairs(FishingBuddy_Info["FishSchools"]) do
	 local copy = {};
	 for _,hole in pairs(holes) do
	    tinsert(copy, hole);
	 end
	 zonecopy[zidx] = copy;
      end
      for zidx,holes in pairs(zonecopy) do
	 FishingBuddy_Info["FishSchools"][zidx] = nil;
	 for _,hole in pairs(holes) do
	    if ( hole.fish ) then
	       for f,c in pairs(hole.fish) do
		  for i in pairs(1,c) do
		     AddFishingSchool(hole.kind, f, zidx, hole.x, hole.y);
		  end
	       end
	    else
	       AddFishingSchool(hole.kind, nil, zidx, hole.x, hole.y);
	    end
	 end
      end
   end
end
FishingBuddy.Schools.CollapseHoles = CollapseHoles;

local SchoolEvents = {};
SchoolEvents[FBConstants.ADD_FISHIE_EVT] = function(id, zone, subzone)
   local text = FishingBuddy.LastTooltipText();
   CheckFishingHole(text, id);
end

FishingBuddy.API.RegisterHandlers(SchoolEvents);
