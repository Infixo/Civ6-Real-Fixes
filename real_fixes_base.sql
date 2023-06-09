--------------------------------------------------------------
-- Real Fixes
-- Author: Infixo
-- 2018-03-25: Created, Typos in Traits and AiFavoredItems, integrated existing mods
-- 2018-03-26: Alexander's trait
-- 2018-12-03: Balance section starts with Govs
-- 2019-01-12: Added some fixes from Delnar's mod
--------------------------------------------------------------


--/* not part of the public release

--------------------------------------------------------------
-- 2023-04-13 Special KIND to handle all placeholders and not used objects, like in Agendas:
-- <!-- Note: Value not actually used, just has to have something so we know this is a kudo/warning -->
-- This way any automatic checks on the database won't throw extra warnings
INSERT INTO Kinds (Kind) VALUES ('KIND_NOT_USED');
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('AGENDA_AYYUBID_DYNASTY_WARNING',   'KIND_NOT_USED'),
('AGENDA_BLACK_QUEEN_WARNING',       'KIND_NOT_USED'),
('AGENDA_BUSHIDO_WARNING',           'KIND_NOT_USED'),
('AGENDA_LAST_VIKING_KING_WARNING',  'KIND_NOT_USED'),
('AGENDA_OPTIMUS_PRINCEPS_WARNING',  'KIND_NOT_USED'),
('AGENDA_PARANOID_WARNING',          'KIND_NOT_USED'),
('AGENDA_QUEEN_OF_NILE_WARNING',     'KIND_NOT_USED'),
('AGENDA_ZEALOT_WARNING', 			 'KIND_NOT_USED'),
('AGENDA_AMBIORIX',  				 'KIND_NOT_USED'),
('AGENDA_HORN_CHEST_LOINS_WARNING',  'KIND_NOT_USED'),
('AGENDA_HORSE_LORD_WARNING', 		 'KIND_NOT_USED'),
('AGENDA_KAITIAKITANGA_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_LORD_OF_MINES_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_EXPANSIONIST_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_GREAT_WHITE_FLEET_WARNING', 'KIND_NOT_USED'),
('AGENDA_FLAT_EARTHER_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_TURTLER_WARNING',  		 'KIND_NOT_USED'),
('AGENDA_ANGEVIN_EMPIRE_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_LAWGIVER_WARNING',  		 'KIND_NOT_USED'),
('AGENDA_PATRON_OF_ARTS_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_RAVEN_BANNER_WARNING',  	 'KIND_NOT_USED'),
('AGENDA_END_TO_SUFFERING_WARNING',  'KIND_NOT_USED'),
('AGENDA_PARANOID_WARNING',  		 'KIND_NOT_USED'),
('AGENDA_ARCHIPELAGIC_STATE_WARNING', 'KIND_NOT_USED'),
('AGENDA_KUBLAI_PAX_KUDO_AND_WARNING', 'KIND_NOT_USED'),
('AGENDA_CANADIAN_EXPEDITIONARY_WARNING', 'KIND_NOT_USED');

--------------------------------------------------------------
-- 2023-04-13 Special KIND to handle correct values in Modifiers' and Requirements' arguments
INSERT INTO Kinds (Kind) VALUES ('KIND_CORRECT_VALUE');
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('ALL',    'KIND_CORRECT_VALUE'),
('NO_ERA', 'KIND_CORRECT_VALUE'),
('HILLS',  'KIND_CORRECT_VALUE'), -- ignore terrain cost
('FOREST', 'KIND_CORRECT_VALUE'), -- ignore terrain cost
('ENEMY',    'KIND_CORRECT_VALUE'),
('FRIENDLY', 'KIND_CORRECT_VALUE'),
('NEUTRAL',  'KIND_CORRECT_VALUE'),
('CAPTURED_CITY', 'KIND_CORRECT_VALUE'), -- Source
('Player', 'KIND_CORRECT_VALUE'), -- NewOwner
('GOLDEN', 'KIND_CORRECT_VALUE'), -- Era Type
('AlliedWithEnemy',  'KIND_CORRECT_VALUE'),
('AlliedWithFriend', 'KIND_CORRECT_VALUE'),
('DOMAIN_ALL',  'KIND_CORRECT_VALUE'), -- DomainTypes
('DOMAIN_AIR',  'KIND_CORRECT_VALUE'), -- DomainTypes
('DOMAIN_LAND', 'KIND_CORRECT_VALUE'), -- DomainTypes
('DOMAIN_SEA',  'KIND_CORRECT_VALUE'), -- DomainTypes
('ARMY_MILITARY_FORMATION',  'KIND_CORRECT_VALUE'), -- MilitaryFormationTypes
('CORPS_MILITARY_FORMATION', 'KIND_CORRECT_VALUE'), -- MilitaryFormationTypes
('BELIEF_YIELD_PER_CITY',   		  'KIND_CORRECT_VALUE'),
('BELIEF_YIELD_PER_CITY_WITH_WONDER', 'KIND_CORRECT_VALUE'),
('BELIEF_YIELD_PER_DISTRICT',   	  'KIND_CORRECT_VALUE'),
('BELIEF_YIELD_PER_FOLLOWER',   	  'KIND_CORRECT_VALUE'),
('BELIEF_YIELD_PER_FOREIGN_CITY',     'KIND_CORRECT_VALUE'),
('BELIEF_YIELD_PER_FOREIGN_FOLLOWER', 'KIND_CORRECT_VALUE'),
('DIPLO_SOURCE_ALL_NAMES',       'KIND_CORRECT_VALUE'), -- SourceType
('DIPLO_SOURCE_FEMALE_ONLY',     'KIND_CORRECT_VALUE'), -- SourceType
('DeclaredFriendshipWithEnemy',  'KIND_CORRECT_VALUE'), -- EffectType
('DeclaredFriendshipWithFriend', 'KIND_CORRECT_VALUE'),
('DeclaredSurpriseWarOnEnemy',   'KIND_CORRECT_VALUE'),
('DeclaredSurpriseWarOnFriend',  'KIND_CORRECT_VALUE'),
('DenoucedFriend',               'KIND_CORRECT_VALUE'), -- !TYPO! but it is actually a correct value - I've tested it
('DenouncedEnemy',               'KIND_CORRECT_VALUE'),
('FREE_POWER_SOURCE_GEOTHERMAL', 'KIND_CORRECT_VALUE'), -- SourceType
('FREE_POWER_SOURCE_MISC',  'KIND_CORRECT_VALUE'), -- SourceType
('FREE_POWER_SOURCE_SOLAR', 'KIND_CORRECT_VALUE'), -- SourceType
('FREE_POWER_SOURCE_WATER', 'KIND_CORRECT_VALUE'), -- SourceType
('FREE_POWER_SOURCE_WIND',  'KIND_CORRECT_VALUE'), -- SourceType
('GenerateLandAntiquities',   'KIND_CORRECT_VALUE'),
('GenerateSeaAntiquities',   'KIND_CORRECT_VALUE'),
('PLUNDER_CULTURE',   'KIND_CORRECT_VALUE'), -- PlunderType
('PLUNDER_SCIENCE',   'KIND_CORRECT_VALUE'), -- PlunderType
('RELIC_SOURCE_RELIGIOUS_UNIT',   'KIND_CORRECT_VALUE'), -- RelicSource
('RELIC_SOURCE_TRIBAL_VILLAGE',   'KIND_CORRECT_VALUE'), -- RelicSource
('RESOURCE_USAGE_UNIT',   'KIND_CORRECT_VALUE'), -- ResourceUsageType
('CITY_CAPTURED',   			'KIND_CORRECT_VALUE'),
('LIBERATION',   				'KIND_CORRECT_VALUE'),
('LIBERATION_WAR_INITIATED',   	'KIND_CORRECT_VALUE'),
('PROTECTORATE_WAR_INITIATED',  'KIND_CORRECT_VALUE'),
('SURPRISE_WAR_INITIATED',   	'KIND_CORRECT_VALUE'),
('WAR_DECLARATION_RECEIVED',    'KIND_CORRECT_VALUE'),
('TERRITORIAL_EXPANSION_WAR_INITIATED', 'KIND_CORRECT_VALUE'),
('COMBAT_MELEE',  'KIND_CORRECT_VALUE'),
('COMBAT_RANGED', 'KIND_CORRECT_VALUE'),
('COMBAT_DISTRICT_VS_UNIT', 'KIND_CORRECT_VALUE'),
('COMBAT_UNIT_VS_UNIT',     'KIND_CORRECT_VALUE'),
('BY_SETTLER', 'KIND_CORRECT_VALUE'); -- TransferType

--*/ -- not public release


--------------------------------------------------------------
-- 2018-03-25 Traits
UPDATE Traits SET Name = 'LOC_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME'      WHERE Name = 'LOC_TRAIT_LEADER_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME'; -- typo
UPDATE Traits SET Name = 'LOC_TRAIT_LEADER_UNIT_NORWEGIAN_LONGSHIP_NAME'   WHERE Name = 'LOC_TRAIT_LEADER_TRAIT_LEADER_UNIT_NORWEGIAN_LONGSHIP_NAME'; -- typo
UPDATE Traits SET Name = 'LOC_TRAIT_LEADER_UNIT_AMERICAN_ROUGH_RIDER_NAME' WHERE Name = 'LOC_TRAIT_LEADER_TRAIT_LEADER_UNIT_AMERICAN_ROUGH_RIDER_NAME'; -- typo
UPDATE Traits SET Name = 'LOC_TRAIT_CIVILIZATION_UNIT_HETAIROI_NAME'       WHERE Name = 'LOC_TRAIT_LEADER_UNIT_HETAIROI_NAME'; -- different LOC defined


--------------------------------------------------------------
-- 2018-03-25: AiFavoredItems
UPDATE AiFavoredItems SET Item = 'CIVIC_NAVAL_TRADITION' WHERE Item = 'CIVIC_NAVAL_TRADITIION';
DELETE FROM AiFavoredItems WHERE ListType = 'BaseListTest' AND Item = 'CIVIC_IMPERIALISM'; -- this is the only item defined for that list, and it is not existing in Civics, no idea what the author had in mind
-- 2023-03-29 cont'd; remove BaseListTest
DELETE FROM AiLists WHERE ListType = 'BaseListTest';
DELETE FROM AiListTypes WHERE ListType = 'BaseListTest';


--------------------------------------------------------------
-- AI Strategy Medieval Fixes; fixed partially in Spring 2018 Patch
--UPDATE StrategyConditions SET ConditionFunction = 'Is Medieval' WHERE StrategyType = 'STRATEGY_MEDIEVAL_CHANGES' AND Disqualifier = 0;
-- 2023-03-29 Note that settlement changes are still bugged (not activated)
INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES ('STRATEGY_MEDIEVAL_CHANGES', 'MedievalSettlements');
-- The following will allow for AI+ to remove this strategy
--INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType)
--SELECT 'STRATEGY_MEDIEVAL_CHANGES', 'MedievalSettlements'
--FROM Strategies
--WHERE StrategyType = 'STRATEGY_MEDIEVAL_CHANGES';


--------------------------------------------------------------
-- AI Yield Bias
-- Fixed in Spring 2018 Patch
--UPDATE AiFavoredItems SET Item = 'YIELD_PRODUCTION' WHERE Item = 'YEILD_PRODUCTION';
--UPDATE AiFavoredItems SET Item = 'YIELD_SCIENCE'    WHERE Item = 'YEILD_SCIENCE';
--UPDATE AiFavoredItems SET Item = 'YIELD_CULTURE'    WHERE Item = 'YEILD_CULTURE';
--UPDATE AiFavoredItems SET Item = 'YIELD_GOLD'       WHERE Item = 'YEILD_GOLD';
--UPDATE AiFavoredItems SET Item = 'YIELD_FAITH'      WHERE Item = 'YEILD_FAITH';


--------------------------------------------------------------
-- 2018-03-26: AiLists Alexander's trait
-- Fixed with Gathering Storm Patch (left for iOS)
--UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_TO_WORLDS_END' WHERE LeaderType = 'TRAIT_LEADER_CITADEL_CIVILIZATION' AND ListType IN ('AlexanderCivics', 'AlexanderTechs', 'AlexanderWonders');


--------------------------------------------------------------
-- 2018-05-19 AIRPOWER AI FIX: imho, it uses too big values, forcing AI to create too many units; balanced values used in RFX_AI file
-- 2023-03-29 This was fixed in NFP, now the value is 3.0
--UPDATE PseudoYields SET DefaultValue = 5 WHERE PseudoYieldType="PSEUDOYIELD_UNIT_AIR_COMBAT"; --DefaultValue=2 +50trait=52
--UPDATE AiFavoredItems SET Value = 30 WHERE ListType = "AirpowerLoverAirpowerPreference"; --Value=50 30+22=52


--------------------------------------------------------------
-- 2018-12-09: Mispelled name <Row ListType="KoreaScienceBiase"/>
-- it is used 3x, but in all cases the name is spelled the same, so it's not a problem


--------------------------------------------------------------
-- 2018-12-09: Missing entries in Types for Victory Strategies
-- The only one that exists is Religious one
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'KIND_VICTORY_STRATEGY'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'KIND_VICTORY_STRATEGY'),
('VICTORY_STRATEGY_SCIENCE_VICTORY',  'KIND_VICTORY_STRATEGY');


--------------------------------------------------------------
-- 2018-12-15: Double Wonder production bonus for Apadana and Halicarnassus from Corvee and Monument of the Gods, Huey from Gothic Architecture
-- Fixed with Gathering Storm Patch (left for iOS)
DELETE FROM PolicyModifiers WHERE PolicyType = 'POLICY_CORVEE' AND ModifierId = 'CORVEE_APADANAPRODUCTION';
DELETE FROM PolicyModifiers WHERE PolicyType = 'POLICY_CORVEE' AND ModifierId = 'CORVEE_MAUSOLEUMPRODUCTION';
DELETE FROM BeliefModifiers WHERE BeliefType = 'BELIEF_MONUMENT_TO_THE_GODS' AND ModifierId = 'MONUMENT_TO_THE_GODS_APADANA';
DELETE FROM BeliefModifiers WHERE BeliefType = 'BELIEF_MONUMENT_TO_THE_GODS' AND ModifierId = 'MONUMENT_TO_THE_GODS_MAUSOLEUM';
DELETE FROM PolicyModifiers WHERE PolicyType = 'POLICY_GOTHIC_ARCHITECTURE' AND ModifierId = 'GOTHICARCHITECTURE_HUEYPRODUCTION';


--------------------------------------------------------------
-- 2018-12-25: Norwegian Longship has no PseudoYield assigned and Harald has a boost for that in his strategy!
-- Fixed with Gathering Storm Patch (left for iOS)
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT' WHERE UnitType = 'UNIT_NORWEGIAN_LONGSHIP';


--------------------------------------------------------------
-- 2019-01-01: "Make Military Formation" in AllowedMoves is set as IsHomeland, but used in Tactics lists for both Majors and Minors
UPDATE AllowedMoves SET IsHomeland = 0, IsTactical = 1 WHERE AllowedMoveType = 'Make Military Formation';


--------------------------------------------------------------
-- 2019-01-01: "Plunder Trader" is only used by Barbarians, Majors and Minors don't use it
-- I am not sure if this is an error, as apparently majors DO plunder TRs nonetheless
-- BH trees have nodes for Pillaging but only for Districts and Improvements
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored) VALUES
('Default Tactical', 'Plunder Trader', 1);
--('Minor Civ Tactical', 'Plunder Trader', 1); -- later
--('FreeCitiesTactics', 'Plunder Trader', 1); R&F


--------------------------------------------------------------
-- 2019-01-01: AiOperationList Default_List is defined but never used (not causing problems, however)
UPDATE Leaders SET OperationList = 'Default_List' WHERE LeaderType = 'LEADER_DEFAULT';


--------------------------------------------------------------
-- 2019-01-02: Wrong assignment of PseudoYield to Wonders for Pericles
-- <Row ListType="PericlesWonders" Item="PSEUDOYIELD_INFLUENCE" Favored="true"/>
-- <Row ListType="PericlesEnvoys" Item="BUILDING_POTALA_PALACE" Value="30"/>
-- Fixed with Gathering Storm Patch
--UPDATE AiFavoredItems SET Item = 'BUILDING_POTALA_PALACE' WHERE ListType = 'PericlesWonders' AND Item = 'PSEUDOYIELD_INFLUENCE';
--UPDATE AiFavoredItems SET Item = 'PSEUDOYIELD_INFLUENCE'  WHERE ListType = 'PericlesEnvoys'  AND Item = 'BUILDING_POTALA_PALACE';


--------------------------------------------------------------
-- 2019-01-03: Some AiLists are assigned to Agenda Traits but registered in AiLists in a wrong column (for leaders, not agendas)
--UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_BACKSTABBER'      WHERE LeaderType = 'TRAIT_AGENDA_BACKSTABBER'; -- 2023-03-29 fixed
--UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_LAST_VIKING_KING' WHERE LeaderType = 'TRAIT_AGENDA_LAST_VIKING_KING'; -- Fixed with Gathering Storm Patch
--UPDATE AiLists SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_WITH_SHIELD'      WHERE LeaderType = 'TRAIT_AGENDA_WITH_SHIELD'; -- Fixed with Gathering Storm Patch


--------------------------------------------------------------
-- 2019-04-09 Warrior Monks don't have bonuses from Great Generals
-- They are not counted as Medieval units - must be added to a ReqSet that selects subjects (GGs from Classical and Medieval eras)
-- 240525 Moved to another file, in a more comprehensive way
--INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_CLASSICAL_REQUIREMENTS', 'AOE_REQUIRES_CLASS_WARRIOR_MONK');
--INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_MEDIEVAL_REQUIREMENTS',  'AOE_REQUIRES_CLASS_WARRIOR_MONK');
--INSERT INTO Requirements (RequirementId, RequirementType)                VALUES ('AOE_REQUIRES_CLASS_WARRIOR_MONK', 'REQUIREMENT_UNIT_TAG_MATCHES');
--INSERT INTO RequirementArguments (RequirementId, Name, Value)            VALUES ('AOE_REQUIRES_CLASS_WARRIOR_MONK', 'Tag', 'CLASS_WARRIOR_MONK');


--------------------------------------------------------------
-- 2019-08-30
-- Units_Trained_Hotfix_Gameplay
-- Author: JNR
-- Infixo: All fixed in September 2019 Patch
--------------------------------------------------------------
/*
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_SEA_MOVEMENT' WHERE ModifierId='ROYAL_DOCKYARD_MOVEMENT_BONUS';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='BARRACKS_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='STABLE_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='ARMORY_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='MILITARY_ACADEMY_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='LIGHTHOUSE_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='SHIPYARD_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='SEAPORT_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='HANGAR_TRAINED_AIRCRAFT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='AIRPORT_TRAINED_AIRCRAFT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='BASILIKOI_TRAINED_UNIT_XP';
UPDATE Modifiers SET ModifierType='MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER' WHERE ModifierId='ORDU_TRAINED_XP';
*/


--------------------------------------------------------------
-- 2020-06-14 WC resolution nor working correctly
-- <ModifierType>MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS</ModifierType>
-- This is technically GS but I am using UPDATE, so no effect if WC is not there
-- I am not 100% sure this is a bug... 'to' and 'from' are very confusing in this case :(
UPDATE Modifiers
SET ModifierType = 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS'
WHERE ModifierId = 'INCREASES_TRADE_TO_GOLD' AND ModifierType = 'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS';


--------------------------------------------------------------
-- 2020-06-16 Netherland's +50% towards Flood Barrier not working
-- 2020-10-25 Fixed in October 2020 Patch
--UPDATE ModifierArguments
--SET Name = 'BuildingType'
--WHERE ModifierId = 'TRAIT_FLOOD_BARRIER_PRODUCTION' AND Value = 'BUILDING_FLOOD_BARRIER';


--------------------------------------------------------------
-- 2020-08-09 MatthiasAlliances uses wrong ID for Research Alliance
UPDATE AiFavoredItems
SET Item = 'ALLIANCE_RESEARCH'
WHERE ListType = 'MatthiasAlliances' AND Item = 'ALLIANCE_SCIENTIFIC';


--------------------------------------------------------------
-- 2021-05-15 Apparently AI doesn't improve luxuries in MC Mode. This is a fix proposed by R.E.D. on Steam
-- 2023-03-29 Fixed in the Leader Pass
--UPDATE Improvements SET PrereqTech = 'TECH_CURRENCY' WHERE ImprovementType = 'IMPROVEMENT_CORPORATION';


--------------------------------------------------------------
-- 2021-06-19 AI is crazy about Science because there is 150% preference added
-- 2023-03-29 Fixed in the Leader Pass
/*
UPDATE AiFavoredItems SET Value = 20 WHERE ListType = 'ClassicalYields' AND Item = 'YIELD_SCIENCE';
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_CAMPUS';
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_THEATER';
DELETE FROM AiListTypes WHERE ListType = 'ClassicalDistricts';
DELETE FROM AiLists WHERE ListType = 'ClassicalDistricts';
*/


--------------------------------------------------------------
-- 2023-03-28 Tokugawa wrong civic name
UPDATE AiFavoredItems
SET Item = 'CIVIC_CLASS_STRUGGLE'
WHERE Item = 'CIVIC_CLASS_STRUGLE' AND ListType = 'TokugawaCivics';


--------------------------------------------------------------
-- 2023-01-26 Ethiopia AI, mixup with leader and agenda traits
UPDATE AiLists
SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_ETHIOPIAN_HIGHLANDS'
WHERE ListType = 'PreferHills' AND LeaderType = 'AGENDA_ETHIOPIAN_HIGHLANDS';


--------------------------------------------------------------
-- 2023-03-28 Extra param, not harmful but not needed also
UPDATE StrategyConditions
SET StringValue = NULL
WHERE StrategyType = 'STRATEGY_WONDER_OBSESSED' AND ConditionFunction = 'Is Industrial' AND StringValue = 'AGENDA_WONDER_OBSESSED';


--------------------------------------------------------------
-- 2023-03-28 Theodora incomplete AI list definitions
INSERT INTO AiLists (ListType, LeaderType, System) SELECT 'TheodoraCivics',  'TRAIT_LEADER_THEODORA', 'Civics'       FROM Types WHERE Type = 'TRAIT_LEADER_THEODORA';
INSERT INTO AiLists (ListType, LeaderType, System) SELECT 'TheodoraTechs',   'TRAIT_LEADER_THEODORA', 'Technologies' FROM Types WHERE Type = 'TRAIT_LEADER_THEODORA';
INSERT INTO AiLists (ListType, LeaderType, System) SELECT 'TheodoraWonders', 'TRAIT_LEADER_THEODORA', 'Buildings'    FROM Types WHERE Type = 'TRAIT_LEADER_THEODORA';


--------------------------------------------------------------
-- 2023-03-29 Gorgo's AI is bugged, should be CULTURE_KILLS_TRAIT instead of TRAIT_AGENDA_WITH_SHIELD
UPDATE AiLists SET LeaderType = 'CULTURE_KILLS_TRAIT' WHERE LeaderType = 'TRAIT_AGENDA_WITH_SHIELD';


--------------------------------------------------------------
-- 2023-03-29 Misspelled names
UPDATE AiFavoredItems SET Item = 'BUILDING_VENETIAN_ARSENAL' WHERE Item = 'BUILDING_VENTIAN_ARSENAL';
UPDATE AiFavoredItems SET Item = 'CIVIC_DRAMA_POETRY'        WHERE Item = 'CIVIC_DRAMA_AND_POETRY';


--------------------------------------------------------------
-- 2023-03-31 Negative value, still works ok however...
-- 2023-04-03 Not a bug, thx JNR for explanation
--UPDATE ModifierArguments SET Value = 15 WHERE ModifierId = 'RAMSES_CULTURE_NEGATIVE_BUILDINGS' AND Name = 'BuildingProductionPercent';


--------------------------------------------------------------
-- 2023-04-02 Nzinga buggy Civics definitions
--<Row ListType="NzingaWonders" Item="CIVIC_DRAMA_POETRY" Favored="true"/>
--<Row ListType="NzingaWonders" Item="CIVIC_GUILDS" Favored="true"/>
UPDATE AiFavoredItems SET ListType = 'NzingaCivics' WHERE ListType = 'NzingaWonders' AND Item = 'CIVIC_DRAMA_POETRY';
UPDATE AiFavoredItems SET ListType = 'NzingaCivics' WHERE ListType = 'NzingaWonders' AND Item = 'CIVIC_GUILDS';
UPDATE AiFavoredItems SET Value = -20 WHERE ListType = 'SettleOneContinent' AND Item = 'Foreign Continent'; -- wrong usage of Foreign Continent


--------------------------------------------------------------
-- 2023-04-02 Rulers of the Sahara buggy AI Lists definitions
UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_RAMSES'        WHERE ListType = 'RamsesTechs'; 
UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_CLEOPATRA_ALT' WHERE ListType = 'CleopatraAltTechs'; 


--------------------------------------------------------------
-- 2023-04-03 Barbarian's attack force uses a discarded class tag
-- Courtesy of Brixter (https://forums.civfanatics.com/threads/even-a-single-wrong-ai-parameter-may-break-the-ai.683011/post-16438003)
UPDATE BarbarianAttackForces
SET SiegeTag = 'CLASS_HEAVY_CAVALRY'
WHERE AttackForceType = 'HighDifficultyCavalryAttack' AND SiegeTag = 'CLASS_HORSE_ARCHER';


--------------------------------------------------------------
-- 2023-04-09 Hagia Sophia gives charges to virtually all units
-- Mahabodi Temple is using the same modifier in the scenario also
-- must add SubjectReq e.g. UNIT_IS_INQUISITOR

-- Requirements 'unit is missionary' and 'unit is apostle' are defined in XP1
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType)	  VALUES ('REQUIRES_UNIT_IS_MISSIONARY', 'REQUIREMENT_UNIT_TYPE_MATCHES');
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType)	  VALUES ('REQUIRES_UNIT_IS_APOSTLE',    'REQUIREMENT_UNIT_TYPE_MATCHES');
INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_IS_MISSIONARY', 'UnitType', 'UNIT_MISSIONARY');
INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES ('REQUIRES_UNIT_IS_APOSTLE',    'UnitType', 'UNIT_APOSTLE');

-- RequirementSet: unit is either a missionary or an apostle
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('HAGIA_SOPHIA_UNITS', 'REQUIREMENTSET_TEST_ANY');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('HAGIA_SOPHIA_UNITS', 'REQUIRES_UNIT_IS_MISSIONARY');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('HAGIA_SOPHIA_UNITS', 'REQUIRES_UNIT_IS_APOSTLE');

--  attach requirement to Hagia
UPDATE Modifiers SET SubjectRequirementSetId = 'HAGIA_SOPHIA_UNITS' WHERE ModifierId = 'HAGIA_SOPHIA_ADJUST_RELIGIOUS_CHARGES';


--------------------------------------------------------------
-- FIXES FROM DELNAR'S "AI CLEANUP" MOD
-- AICleanup_BehaviorTrees - not valid any more, the Upgrade Tree doesn't use any field for the Upgrade Units node
-- AICleanup_FavorHammerDistrict - too strong
-- AICleanup_FavorUniqueDistricts - not necessary, uniques are boosted by default
-- AICleanup_GlobalParameters - rejected
-- AICleanup_Operations - already done
-- AICleanup_SettlerLove - not needed
-- AICleanup_Units - in the game
-- AICleanup_Victories - in RST


--------------------------------------------------------------
-- This was an odd one. Gold for units was set to 4, gold for plots and GPs was set to 1, and gold for splurge was set to 3.
-- Splurge should always be last in the priority list, so I assumed priority went lowest->highest and set gold for units to 2. -->
-- 2023-03-29 Comment from devs in Civ Battle Royale is "The following puts all gold into slush funds [...]" and slush fund has priority 1
-- Most reasonable order: great peoppe -> plots -> units -> slush
UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_GREAT_PEOPLE';
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_PLOTS';
UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_UNITS';
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_SLUSH_FUND';


--------------------------------------------------------------
-- 2023-04-14 Probably (?) this should help Naturalists build Parks and Nau - Feitoria
INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType) VALUES ('UNIT_NATURALIST', 'UNITAI_BUILD');
INSERT OR IGNORE INTO UnitAiInfos (UnitType, AiType)
SELECT 'UNIT_PORTUGUESE_NAU', 'UNITAI_BUILD'
FROM Units
WHERE UnitType = 'UNIT_PORTUGUESE_NAU';


--------------------------------------------------------------
-- 230426 #9 Gauls' mines give 100% tourism via modifier
 -- make it "official" that mines give torurism from culture
UPDATE Improvement_Tourism SET ScalingFactor = 100 where ImprovementType = 'IMPROVEMENT_MINE';
-- detach and remove the modifier as not needed
DELETE FROM TraitModifiers WHERE ModifierId = 'GAUL_MINE_TOURISM'; -- detach the modifier as not needed
DELETE FROM ModifierArguments WHERE ModifierId = 'GAUL_MINE_TOURISM';
DELETE FROM Modifiers WHERE ModifierId = 'GAUL_MINE_TOURISM';


--------------------------------------------------------------
-- 230427 Arrow Storm and Marauding work vs districts too
-- OPPONENT_IS_NOT_DISTRICT - added in Byzantium & Gaul DLC
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('OPPONENT_IS_NOT_DISTRICT', 'REQUIREMENT_OPPONENT_IS_DISTRICT', 1);
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('ARROW_STORM_REQUIREMENTS',  'OPPONENT_IS_NOT_DISTRICT'),
('URBAN_RAIDER_REQUIREMENTS', 'OPPONENT_IS_NOT_DISTRICT');


--------------------------------------------------------------
-- 230428 Correct yields of Great Works from Babylon DLC
-- GWs of Art should yield +2 Tourism
UPDATE GreatWorks
SET Tourism = 2
WHERE GreatWorkObjectType IN ('GREATWORKOBJECT_LANDSCAPE','GREATWORKOBJECT_PORTRAIT') AND Image LIKE 'ICON_GREATWORK_BABYLON%';


--------------------------------------------------------------
-- 230501 Missing Deal Items Types
INSERT INTO Types (Type, Kind) VALUES
('DEAL_ITEM_ALL',        'KIND_DEAL_ITEM'),
('DEAL_ITEM_TECHNOLOGY', 'KIND_DEAL_ITEM');


--------------------------------------------------------------
-- 230503 #16 POLICY_SKYSCRAPERS uses ERA_FUTURE in the base game
UPDATE ModifierArguments SET Value = 'ERA_INFORMATION' WHERE ModifierId = 'SKYSCRAPERS_INDUSTRIALINFORMATION' AND Name = 'EndEra';


--------------------------------------------------------------
-- 230503 #1 Fix Ibn Khaldun Bug
UPDATE ModifierArguments SET Value = 4 WHERE Name = 'Amount' AND ModifierId LIKE 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN_EMPIRE_HAPPY_%';
UPDATE ModifierArguments SET Value = 8 WHERE Name = 'Amount' AND ModifierId LIKE 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN_EMPIRE_ECSTATIC_%';


--------------------------------------------------------------
-- 230508 #19 AGENDA_BARBARIAN_LOVER is missing
-- This is a copy & paste from AltQin's Sihai agenda
-- Already done: Agendas, LOCs for Name and Description, AgendaTraits (TRAIT_AGENDA_BARBARIAN_LOVER), Trait is registered
-- Missing: positive and negative modifiers, set as Random

-- Random agenda
INSERT INTO RandomAgendas (AgendaType) VALUES ('AGENDA_BARBARIAN_LOVER');

-- Modifiers: loves +6, hates -6
INSERT INTO Modifiers (ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('AGENDA_LOVES_BARBARIANS', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 'PLAYER_IGNORES_BARBARIAN_CAMPS'),
('AGENDA_HATES_BARBARIANS', 'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 'PLAYER_CLEARS_BARBARIAN_CAMPS');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('AGENDA_LOVES_BARBARIANS', 'InitialValue', '6'),
('AGENDA_LOVES_BARBARIANS', 'StatementKey', 'LOC_DIPLO_KUDOS_LEADER_ANY_REASON_AGENDA_LOVES_BARBARIANS'),
('AGENDA_LOVES_BARBARIANS', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_DESCRIPTION_LOVES_BARBARIANS'),
('AGENDA_LOVES_BARBARIANS', 'HiddenAgenda', '1'),
('AGENDA_HATES_BARBARIANS', 'InitialValue', '-6'),
('AGENDA_HATES_BARBARIANS', 'StatementKey', 'LOC_DIPLO_WARNING_LEADER_ANY_REASON_AGENDA_HATES_BARBARIANS'),
('AGENDA_HATES_BARBARIANS', 'SimpleModifierDescription', 'LOC_DIPLO_MODIFIER_DESCRIPTION_HATES_BARBARIANS'),
('AGENDA_HATES_BARBARIANS', 'HiddenAgenda', '1');

INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
('AGENDA_LOVES_BARBARIANS', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
('AGENDA_HATES_BARBARIANS', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');

-- Attach modifiers to the Trait
INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_AGENDA_BARBARIAN_LOVER', 'AGENDA_LOVES_BARBARIANS'),
('TRAIT_AGENDA_BARBARIAN_LOVER', 'AGENDA_HATES_BARBARIANS');

-- AI behavior
INSERT INTO AiListTypes (ListType) VALUES
('BarbarianLoverPseudoYields');
INSERT INTO AiLists (ListType, AgendaType, System) VALUES
('BarbarianLoverPseudoYields', 'TRAIT_AGENDA_BARBARIAN_LOVER', 'PseudoYields');
INSERT INTO AiFavoredItems (ListType, Item, Value) VALUES
('BarbarianLoverPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', -100);


--------------------------------------------------------------
-- 230523 #31 Wolin's ability name typo
UPDATE UnitAbilities SET Name = 'LOC_ABILITY_WOLIN_NAVAL_UNITS_NAME' WHERE UnitAbilityType = 'ABILITY_WOLIN_NAVAL_UNITS';


--------------------------------------------------------------
-- 230523 #31 Missing ability names and descriptions
UPDATE UnitAbilities SET Name = 'LOC_'||UnitAbilityType||'_NAME' WHERE Name IS NULL;
UPDATE UnitAbilities SET Description = 'LOC_'||UnitAbilityType||'_DESCRIPTION' WHERE Description IS NULL;


--------------------------------------------------------------
-- 230523 #28 Missing CityStatesOnly argument
INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES ('MINOR_CIV_RELIGIOUS_YIELD_FOR_CONSULATE', 'CityStatesOnly', '1');
