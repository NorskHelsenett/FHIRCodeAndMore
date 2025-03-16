Alias: $resprate = http://hl7.org/fhir/StructureDefinition/resprate

Profile: NoVitalSignsObservationRespirationRate
Parent: $resprate
Id: NoVitalSignsObservationRespirationRate
Title: "Norwegian base profiles for VitalSigns Observation - Respiration Rate"
Description: "Base profile for Norwegian Vital Signs Observation Respiration Rate information."  
* ^url = "http://hl7.no/fhir/StructureDefinition/VitalSignsObservationRespirationRate"
* ^version = "0.7.8"
* ^status = #draft
* ^date = "2021-05-01"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Respiration Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway."
* code.coding contains ResRateSNOMEDCode 0..1
* code.coding[ResRateSNOMEDCode].system 1..
* code.coding[ResRateSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[ResRateSNOMEDCode].code 1..
* code.coding[ResRateSNOMEDCode].code = #271625008 (exactly)
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
* valueQuantity ^short = "The frequency of spontaneous breathing."
* valueQuantity ^definition = "The frequency of spontaneous breathing."