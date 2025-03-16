Alias: $heartrate = http://hl7.org/fhir/StructureDefinition/heartrate

Profile: NoVitalSignsObservationPulse
Parent: $heartrate
Id: NoVitalSignsObservationPulse
Title: "Norwegian base profile for VitalSigns Observation - Pulse"
Description: "Base profile for Norwegian Vital Signs Observation Pulse information."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationPulse"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-22"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation pulse information. Defined by The Norwegian Directorate of eHealth and HL7 Norway."
* code.coding contains PulseSNOMEDCode 0..1
* code.coding[PulseSNOMEDCode].system 1..
* code.coding[PulseSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[PulseSNOMEDCode].code 1..
* code.coding[PulseSNOMEDCode].code = #78564009 (exactly)
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
* valueQuantity ^short = "The rate of the pulse, measured in beats per minute."
* valueQuantity ^definition = "The rate of the pulse , measured in beats per minute."
