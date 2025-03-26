Alias: $bodytemp = http://hl7.org/fhir/StructureDefinition/bodytemp

Profile: NoVitalSignsObservationBodyTemp
Parent: $bodytemp
Id: NoVitalSignsObservationBodyTemp
Title: "Norwegian base profile for VitalSigns Observation - Body Temperature"
Description: "Norwegian base profile for Norwegian Vital Signs Observation Body Temperature. To be used for recording the measured body temperatur of an individual at any point in time."
* ^url = "http://hl7.no/fhir/StructureDefinition/NoVitalSignsObservationBodyTemp"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-03-16"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "Basisprofile for Norwegian VitalSigns Observation Body Temperature information. Defined by The Norwegian Directorate of eHealth and HL7 Norway."
* code.coding contains BodyTempSnomedCode 0..1
* code.coding[BodyTempSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode].system 1..
* code.coding[BodyTempSnomedCode].system = "http://snomed.info/sct" (exactly)
* code.coding[BodyTempSnomedCode].code 1..
* code.coding[BodyTempSnomedCode].code = #276885007 (exactly)
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
* valueQuantity ^short = "Body temperature (°C), measured as a quantity."
* valueQuantity ^definition = "The measured temperature of a person's body, expressed as a quantitative value. This can be obtained from various sites such as oral, rectal, axillary, tympanic, or temporal, using a thermometer. The value is typically recorded in degrees Celsius (°C) but may also be expressed in degrees Fahrenheit (°F)."