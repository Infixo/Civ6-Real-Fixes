--------------------------------------------------------------
-- Real Fixes - Fix for the artifact chooser when there are 2 artifacts from different eras
-- Author: Infixo
-- 2023-05-08: Created
--------------------------------------------------------------

include("ChooseArtifact");

LuaEvents.NotificationPanel_OpenArtifactPanel.Remove(OnOpen);
BASE_OnOpen = OnOpen;

function OnOpen()
	BASE_OnOpen();
	if not ContextPtr:IsHidden() then
		Controls.Button2:SetToolTipString("");
		-- the window has been opened
		local localPlayer = Players[Game.GetLocalPlayer()];
		local pkArchaeologist = localPlayer:GetUnits():GetNextExtractingArchaeologist();
		local pkUnitArchaeology = pkArchaeologist:GetArchaeology();
		local iIndex = pkUnitArchaeology:GetArtifactIndex();
		local kObject = Game.GetArtifactByIndex(iIndex);
		-- add extra info to the 2nd button if necessary
		if kObject.ActingPlayerEra ~= kObject.TargetPlayerEra and -- different eras
			(kObject.Type == 0 or kObject.Type == 3 or kObject.Type == 4) then -- choice available
			Controls.Button2:SetText( Controls.Button2:GetText().." [ICON_New]" );
			local targetEra: string = Locale.Lookup(GameInfo.Eras[kObject.TargetPlayerEra].Name);
			Controls.Button2:SetToolTipString( Locale.Lookup("LOC_CHOOSE_ARTIFACT_NO_CHOICE", "[COLOR_Red]"..targetEra.."[ENDCOLOR]") );
		end
	end
end
LuaEvents.NotificationPanel_OpenArtifactPanel.Add(OnOpen);

print("RFX: Loaded real_fixes_ChooseArtifact.lua OK");
