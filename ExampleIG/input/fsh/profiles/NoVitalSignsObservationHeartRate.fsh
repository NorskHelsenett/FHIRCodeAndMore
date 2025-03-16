Alias: $heartrate = http://hl7.org/fhir/StructureDefinition/heartrate

Profile: NoVitalSignsObservationHeartRate
Parent: $heartrate
Id: NoVitalSignsObservationHeartRate
Title: "Norwegian base profile for VitalSigns Observation - Heart Rate"
Description: """Base profile for Norwegian Vital Signs Observation Heart Rate information.  
Use to record the presence or absence of a heart beat."""
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationHeartRate"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-03-16"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "Basisprofile for Norwegian  VitalSigns Observation Heart Rate information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. "
* code.coding contains HeartRateSNOMEDCode 0..1
* code.coding[HeartRateSNOMEDCode].system 1..
* code.coding[HeartRateSNOMEDCode].system = "http://snomed.info/sct" (exactly)
* code.coding[HeartRateSNOMEDCode].code 1..
* code.coding[HeartRateSNOMEDCode].code = #364075005 (exactly)
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
* valueQuantity ^short = "Heart rate (beats per minute), measured as a quantity."
* valueQuantity ^definition = "The number of heartbeats per minute (bpm), measured as a quantitative value. This can be obtained from various sources such as ECG, pulse oximeters, or wearable devices. The value is expressed in beats per minute (bpm)."