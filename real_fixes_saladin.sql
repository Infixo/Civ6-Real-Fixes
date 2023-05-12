--------------------------------------------------------------
-- Real Fixes - missing Saladin's agenda and modifiers
-- Author: Infixo
-- 2023-05-12: Created
--------------------------------------------------------------

-- Re-create the modifier

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId) VALUES
('AGENDA_AYYUBID_DYNASTY', 'MODIFIER_PLAYER_DIPLOMACY_AGENDA_AYYUBID_DYNASTY', 'ON_TURN_STARTED', 'PLAYER_IS_MAJOR_CIV_KNOWN_10_TURNS');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('AGENDA_AYYUBID_DYNASTY', 'StatementKey', 'AGENDA_AYYUBID_DYNASTY_WARNING'); -- Note: Value not actually used, just has to have something so we know this is a kudo/warning

INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
('AGENDA_AYYUBID_DYNASTY', 'Sample', 'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
		
-- Link modifier with the trait

INSERT INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_AGENDA_AYYUBID_DYNASTY', 'AGENDA_AYYUBID_DYNASTY');
