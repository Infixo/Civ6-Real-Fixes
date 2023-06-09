--------------------------------------------------------------
-- Real Fixes
-- Author: Infixo
-- 2021-05-14: Separate file for GS
--------------------------------------------------------------


--------------------------------------------------------------
-- 2021-05-14 Public Transport policy has been redefined but still has a modifier from R&F
DELETE FROM PolicyModifiers WHERE PolicyType = 'POLICY_PUBLIC_TRANSPORT' AND ModifierId = 'PUBLICTRANSPORT_FARMREPLACEGOLD';


--------------------------------------------------------------
-- 2021-06-08 "The Last Best West" is giving 1 instead of 2 production in some cases
-- Fixed in Nov 2022 patch
--UPDATE ModifierArguments SET Value = 2 WHERE ModifierId = 'SNOW_MINES_PRODUCTION';
--UPDATE ModifierArguments SET Value = 2 WHERE ModifierId = 'TUNDRA_HILLS_LUMBER_MILLS_PRODUCTION';


--------------------------------------------------------------
-- 2023-03-28 Not used AIList
DELETE FROM AiFavoredItems WHERE ListType = 'PatronOfArtsDiscussions';
DELETE FROM AiListTypes    WHERE ListType = 'PatronOfArtsDiscussions';


--------------------------------------------------------------
-- 2023-04-02 Buggy Keita's AI Lists
UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_SUNDIATA_KEITA' WHERE ListType IN ('KeitaGreatWorks','KeitaCivics','KeitaTechs','KeitaWonders');


--------------------------------------------------------------
-- 2023-04-03 Buggy Suleiman's AI Lists
UPDATE AiFavoredItems SET ListType = 'SuliemanCivics' WHERE ListType = 'SuliemanTechs' AND Item = 'CIVIC_GAMES_RECREATION';
UPDATE AiLists SET System = 'PseudoYields' WHERE ListType = 'SuliemanGovernor' AND System = 'Buildings';


--------------------------------------------------------------
-- 2023-04-09 Strategic Air Force
-- will use only Information era
DELETE FROM ModifierArguments WHERE ModifierId = 'STRATEGICAIRFORCE_ATOMIC_NAVALCARRIER_PRODUCTION';
DELETE FROM Modifiers WHERE ModifierId = 'STRATEGICAIRFORCE_ATOMIC_NAVALCARRIER_PRODUCTION';
DELETE FROM PolicyModifiers WHERE PolicyType = 'POLICY_STRATEGIC_AIR_FORCE' AND ModifierId = 'STRATEGICAIRFORCE_ATOMIC_NAVALCARRIER_PRODUCTION';
-- make them non-era specific
UPDATE ModifierArguments
SET Value = 'NO_ERA'
WHERE Name = 'EraType' AND ModifierId IN
(
    SELECT ModifierId FROM PolicyModifiers WHERE PolicyType = 'POLICY_STRATEGIC_AIR_FORCE'
);


--------------------------------------------------------------
-- 2023-04-14 This should (I hope) help Toa and Mountie build their things
INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_MAORI_TOA',      'UNITAI_BUILD'),
('UNIT_CANADA_MOUNTIE', 'UNITAI_BUILD');


--------------------------------------------------------------
-- 230426 #12 Updates to favored techs and projects when going for Science Victory
DELETE FROM AiFavoredItems WHERE ListType = 'ScienceVictoryTechs' AND Item IN ('TECH_NUCLEAR_FUSION', 'TECH_ROBOTICS'); -- mars reactor and mars habitation, no longer valid
INSERT INTO AiFavoredItems (ListType,Item) VALUES
('ScienceVictoryProjects','PROJECT_ORBITAL_LASER'),
('ScienceVictoryProjects','PROJECT_TERRESTRIAL_LASER'),
('ScienceVictoryTechs','TECH_SMART_MATERIALS'), -- exoplanet expedition
('ScienceVictoryTechs','TECH_OFFWORLD_MISSION'); -- lasers


--------------------------------------------------------------
-- 230428 Correct yields of Great Works from Babylon DLC
-- GWs of Writing should yield +2 Culture and +2 Tourism in XP2

UPDATE GreatWorks
SET Tourism = 2
WHERE GreatWorkObjectType = 'GREATWORKOBJECT_WRITING' AND GreatWorkType LIKE 'GREATWORK_BABYLON%';

UPDATE GreatWork_YieldChanges
SET YieldChange = 2
WHERE YieldType = 'YIELD_CULTURE' AND GreatWorkType LIKE 'GREATWORK_BABYLON%'
	AND GreatWorkType IN (SELECT GreatWorkType FROM GreatWorks WHERE GreatWorkObjectType = 'GREATWORKOBJECT_WRITING');


--------------------------------------------------------------
-- 230501 Missing Deal Items Types
INSERT INTO Types (Type, Kind) VALUES
('DEAL_ITEM_FAVOR', 'KIND_DEAL_ITEM');


--------------------------------------------------------------
-- 230503 #16 POLICY_SKYSCRAPERS uses ERA_FUTURE in the base game
UPDATE ModifierArguments SET Value = 'ERA_FUTURE' WHERE ModifierId = 'SKYSCRAPERS_INDUSTRIALINFORMATION' AND Name = 'EndEra';


--------------------------------------------------------------
-- 230508 #21 Pillaging Dam does NOT yield health
UPDATE Districts SET PlunderAmount = 50 WHERE DistrictType = 'DISTRICT_DAM';


--------------------------------------------------------------
-- 230508 #19 AGENDA_BARBARIAN_LOVER is missing
INSERT INTO RandomAgendas_XP2 (AgendaType, AgendaTag) VALUES ('AGENDA_BARBARIAN_LOVER', 'AGENDA_EARLY_ERA_ONLY');
