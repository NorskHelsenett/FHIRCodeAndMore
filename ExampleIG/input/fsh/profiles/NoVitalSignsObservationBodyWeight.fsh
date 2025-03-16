Alias: $bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight

Profile: NoVitalSignsObservationBodyWeight
Parent: $bodyweight
Id: NoVitalSignsObservationBodyWeight
Title: "Norwegian base profile for VitalSigns Observation - Body Weight"
Description: "Base profile for Norwegian Vital Signs Observation Body Weight information. To be used for recording the measured Body Weight of an individual at any point in time."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationBodyWeight"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-03-16"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "To record the body weight of an individual."
* code.coding contains BodyWeightSnomedCode 0..1
* code.coding[BodyWeightSnomedCode].system 1..
* code.coding[BodyWeightSnomedCode].system = "http://snomed.info/sct" (exactly)
* code.coding[BodyWeightSnomedCode].code 1..
* code.coding[BodyWeightSnomedCode].code = #27113001 (exactly)
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
* valueQuantity ^short = "Body weight (kg), measured as a quantity."
* valueQuantity ^definition = "The total mass of a person’s body, measured as a quantitative value. This is typically recorded in kilograms (kg) but may also be expressed in other units such as pounds (lb). The value is obtained using a weighing scale or other measuring device."