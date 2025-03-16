Alias: $bodytemp = http://hl7.org/fhir/StructureDefinition/bodytemp

Profile: NoVitalSignsObservationBodyTemp
Parent: $bodytemp
Id: NoVitalSignsObservationBodyTemp
Title: "NO VitalSigns Observation - Body Temperature"
Description: "Norwegian base profile for Norwegian Vital Signs Observation Body Temperature."
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
// ^copyright = "Some content in this profile builds on the body temperature archetype: Kroppstemperatur, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.1855"
* code.coding contains BodyTempSnomedCode 0..1
* code.coding[BodyTempSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyTempSnomedCode].system 1..
* code.coding[BodyTempSnomedCode].system = "http://snomed.info/sct"
* code.coding[BodyTempSnomedCode].code 1..
* code.coding[BodyTempSnomedCode].code = #276885007
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