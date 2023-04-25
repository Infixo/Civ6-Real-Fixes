--------------------------------------------------------------
-- Real Fixes - fixes tag CLASS_ALL_ERAS and Warrior Monks, Nihang
-- Author: Infixo
-- 2023-04-25: Created, see at the bottom for more info about the topic
--------------------------------------------------------------

--------------------------------------------------------------
-- This single requirement checks if a unit is CLASS_ALL_ERAS
INSERT INTO Requirements (RequirementId, RequirementType) VALUES 
('AOE_REQUIRES_ALL_ERAS_UNIT', 'REQUIREMENT_UNIT_TAG_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
('AOE_REQUIRES_ALL_ERAS_UNIT', 'Tag', 'CLASS_ALL_ERAS');

--------------------------------------------------------------
-- The above requirement is now added to all sets that check double-eras reqs
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_CLASSICAL_REQUIREMENTS',   'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_MEDIEVAL_REQUIREMENTS',    'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_RENAISSANCE_REQUIREMENTS', 'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_INDUSTRIAL_REQUIREMENTS',  'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_MODERN_REQUIREMENTS',      'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_ATOMIC_REQUIREMENTS',      'AOE_REQUIRES_ALL_ERAS_UNIT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('AOE_INFORMATION_REQUIREMENTS', 'AOE_REQUIRES_ALL_ERAS_UNIT');

--------------------------------------------------------------
-- Warrior Monks - it has CLASS_WARRIOR_MONK, which is assigned to GA/GG
-- It must be assigned CLASS_ALL_ERAS
-- Warrior Monk is supposed bo be affected by GGs, its tag is assigned to GG ability:
-- <Row Type="ABILITY_GREAT_GENERAL_STRENGTH" Tag="CLASS_WARRIOR_MONK"/>
-- However, there is no conenction to GG/GA era-checking reqs
INSERT INTO TypeTags (Type,Tag) VALUES ('UNIT_WARRIOR_MONK', 'CLASS_ALL_ERAS');

--------------------------------------------------------------
-- Nihang - it has CLASS_MELEE and CLASS_ALL_ERAS
-- According to Wiki, Nihang should work with GG via buildings in Encampment. But it doesn't work.

--------------------------------------------------------------
-- Vampire - has CLASS_MELEE and CLASS_ALL_ERAS
-- According to Wiki, Vampire should work with GG but it doesn't.

--------------------------------------------------------------
-- CLASS_ALL_ERAS
-- This tag is used for units that can be acquired in any game era, e.g. Nihang, Heroes, Vampires.
-- However, beside defining it, there is no functionality attached to it. Most importantly Great 
-- Generals and Admirals don't affect those units because their passive abilities are based on Eras
-- Example.
-- AOE_MEDIEVAL_REQUIREMENTS => AOE_REQUIRES_MEDIEVAL_UNIT or AOE_REQUIRES_RENAISSANCE_UNIT
-- AOE_REQUIRES_MEDIEVAL_UNIT => REQUIREMENT_UNIT_ERA_TYPE_MATCHES 'ERA_MEDIEVAL'
-- Wiki: This bonus can only be granted to Classical or later units: Warriors, Scouts, Slingers, Archers, Spearmen,
-- Heavy Chariots, and Ancient Era unique land units can never gain anything from any Great General's passive
-- ability. This bonus applies to Nihang and Vampires regardless of the Great General's era.
-- On the other hand, Warrior Monks are unaffected. 

--------------------------------------------------------------
-- GA/GG => strength & movement modifier unique to era => in total 4 modifiers per era
-- They all grant abilities to all units: ABILITY_GREAT_(ADMIRAL|GENERAL)_(STRENGTH|MOVEMENT)
-- They are activates via subject reqs: AOE_era_(LAND|SEA)_REQUIREMENTS => test ALL => each single req for 1 era
-- AOE_REQUIRES_era_REQUIREMENTS => transfers back to set REQUIREMENT_REQUIREMENTSET_IS_MET => AOE_era_REQUIREMENTS
-- AOE_era_REQUIREMENTS => this requires ANY of the sub-reqs, they have 2 for the era and the subsequent era => AOE_REQUIRES_era_UNIT
-- TODO: add third req for ALL eras
-- AOE_REQUIRES_RENAISSANCE_UNIT
