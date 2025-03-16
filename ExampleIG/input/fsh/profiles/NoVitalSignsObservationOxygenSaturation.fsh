Alias: $oxygensat = http://hl7.org/fhir/StructureDefinition/oxygensat

Profile: NoVitalSignsObservationOxygenSaturation
Parent: $oxygensat
Id: NoVitalSignsObservationOxygenSaturation
Title: "Norwegian base profile for VitalSigns Observation - Oxygen Saturation"
Description: "Base profile for Norwegian Vital Signs Observation Oxygen Saturation information."  
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationOxygenSaturation"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-22"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Oxygen Saturation information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. "
* code.coding contains OxygenSatSNOMEDCode 0..1
* code.coding[OxygenSatSNOMEDCode].system 1..
* code.coding[OxygenSatSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[OxygenSatSNOMEDCode].code 1..
* code.coding[OxygenSatSNOMEDCode].code = #431314004 (exactly)
* subject only Reference(Patient)
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #closed
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson)
* performer[organization] only Reference(Organization)
// Ensure Observation.value[x] is NOT sliced but is constrained to 0..1
* value[x] 0..1
* value[x] only Quantity
* value[x] ^slicing.rules = #closed
* valueQuantity ^short = "Oxygen saturation (%) in blood, measured as a quantity."
* valueQuantity ^definition = "The percentage of hemoglobin in the blood that is saturated with oxygen, measured as a quantitative value. This is typically obtained from arterial blood gas analysis (SaO₂) or non-invasively using pulse oximetry (SpO₂). The value is expressed as a percentage (%)."
