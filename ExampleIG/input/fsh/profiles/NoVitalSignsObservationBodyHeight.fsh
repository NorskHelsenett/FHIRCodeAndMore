Alias: $bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight

Profile: NoVitalSignsObservationBodyHeight
Parent: $bodyheight
Id: NoVitalSignsObservationBodyHeight
Title: "No VitalSigns Observation - Body Height"
Description: """Base profile for Norwegian Vital Signs Observation Body Height information.  
To be used for recording the measured height or body length of an individual at any point in time."""
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-22"
* ^publisher = "HL7 Norway"
* ^contact.name = "HL7 Norway"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.no"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "To record the length of the body."
//* ^copyright = "Some content in this profile builds on the body height archetype: Høyde/Lengde, Publisert arketype [Internet]. openEHR Norge, Nasjonal IKT Clinical Knowledge Manager [sitert: 2024-12-04]. Hentet fra: https://arketyper.no/ckm/archetypes/1078.36.2274"

// Ensure Observation.value[x] is NOT sliced but is constrained to 0..1
* value[x] 0..1
* value[x] ^slicing.rules = #closed

* code.coding contains BodyHeightSnomedCode 0..1
* code.coding[BodyHeightSnomedCode] ^short = "body Height Snomed Code"
* code.coding[BodyHeightSnomedCode] ^definition = "body Height Snomed Code"
* code.coding[BodyHeightSnomedCode].system = "http://snomed.info/sct"
* code.coding[BodyHeightSnomedCode].code = #50373000
* subject only Reference(Patient)
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "type"
* performer ^slicing.rules = #open
* performer contains
    Author 0..* and
    organization 0..*
* performer[Author] only Reference(Practitioner or PractitionerRole or CareTeam or Patient or RelatedPerson)
* performer[organization] only Reference(Organization)