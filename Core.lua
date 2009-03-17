local UIParent = _G["UIParent"]
local togglenames = {
   "UnitNameCompanionName",
   "UnitNamePlayerGuild",
   "UnitNamePlayerPVPTitle",
   "UnitNameFriendlyPlayerName",
   "UnitNameFriendlyPetName",
   "UnitNameFriendlyCreationName",
   "UnitNameEnemyPlayerName",
   "UnitNameEnemyPetName",
   "UnitNameEnemyCreationName",
}

UIParent:SetScript("OnHide", function()
      for _, name in ipairs(togglenames) do
         SetCVar(name, 0)
      end
end)
UIParent:SetScript("OnShow", function()
      for _, name in ipairs(togglenames) do
         SetCVar(name, 1)
      end
end)