
SELECT * 
FROM building_damage_assessment
LEFT JOIN building_ownership_and_use
ON building_damage_assessment.building_id = building_ownership_and_use.building_id
LEFT JOIN building_structure
ON building_damage_assessment.building_id = building_structure.building_id
LEFT JOIN name_mapping
ON building_damage_assessment.ward_id = name_mapping.ward_id;

SELECT * 
FROM household_demographics
LEFT JOIN household_earthquake_impact
ON household_demographics.household_id = household_earthquake_impact.household_id
LEFT JOIN household_resources
ON household_demographics.household_id = household_resources.household_id;

SELECT * 
FROM individual_demographics
LEFT JOIN mapping
ON individual_demographics.individual_id = mapping.individual_id;

