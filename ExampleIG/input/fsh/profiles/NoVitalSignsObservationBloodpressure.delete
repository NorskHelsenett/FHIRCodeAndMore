Alias: $bp = http://hl7.org/fhir/StructureDefinition/bp

Profile: NoVitalSignsObservationBloodpressure
Parent: $bp
Id: NoVitalSignsObservationBloodpressure
Title: "Norwegian base profile for VitalSigns Observation - Blood Pressure"
Description: "Base profile for Norwegian Vital Signs Observation Blood pressure information."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationBloodpressure"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-22"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "To record the systemic arterial blood pressure of an individual."

// Ensure Observation.value[x] is NOT sliced but is constrained to 0..0
* value[x] 0..0
* value[x] ^slicing.rules = #closed

// The base profile enforces that Observation.code.coding must contain LOINC 85354-9.
// We are extending it by adding an optional SNOMED CT code for blood pressure.
* code.coding contains BloodPressureSnomed 0..1
* code.coding[BloodPressureSnomed].system = "http://snomed.info/sct" (exactly)
* code.coding[BloodPressureSnomed].code = #75367002 (exactly) // SNOMED CT for BP

// The base profile already defines component slicing and requires LOINC codes for SystolicBP and DiastolicBP.
// Adding SNOMED CT as an additional coding option for SystolicBP and DiastolicBP.

// Ensure component slicing matches the base profile
* component.code.coding ^slicing.discriminator[0].type = #value
* component.code.coding ^slicing.discriminator[0].path = "code.coding.code"
* component.code.coding ^slicing.discriminator[1].type = #value
* component.code.coding ^slicing.discriminator[1].path = "code.coding.system"
* component.code.coding ^slicing.rules = #open

// Ensuring component value[x] is correctly defined to align with base profile
* component[SystolicBP].value[x] only Quantity
* component[SystolicBP].value[x] 1..1
* component[SystolicBP].value[x] ^slicing.rules = #closed

* component[DiastolicBP].value[x] only Quantity
* component[DiastolicBP].value[x] 1..1
* component[DiastolicBP].value[x] ^slicing.rules = #closed

// Adding SNOMED CT coding option to SystolicBP
* component[SystolicBP].code.coding contains SystolicBPSnomed 0..1
* component[SystolicBP].code.coding[SystolicBPSnomed].system = "http://snomed.info/sct" (exactly)
* component[SystolicBP].code.coding[SystolicBPSnomed].code = #271649006 (exactly) // SNOMED CT for Systolic BP

// Adding SNOMED CT coding option to DiastolicBP
* component[DiastolicBP].code.coding contains DiastolicBPSnomed 0..1
* component[DiastolicBP].code.coding[DiastolicBPSnomed].system = "http://snomed.info/sct" (exactly)
* component[DiastolicBP].code.coding[DiastolicBPSnomed].code = #271650006 (exactly) // SNOMED CT for Diastolic BP

* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #closed
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson)
* performer[organization] only Reference(Organization)