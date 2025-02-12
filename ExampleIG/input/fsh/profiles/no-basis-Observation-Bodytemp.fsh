Alias: $noBasisObservation = http://hl7.no/fhir/StructureDefinition/no-basis-Observation

Profile: NoBasisObservationBodytemp
Parent: $noBasisObservation
Id: no-basis-Observation-Bodytemp
Title: "No Basis Observation - Body Temperature"
Description: "General Profile for Body Temperature in Norway."

* ^url = "http://hl7.no/fhir/StructureDefinition/no-basis-Observation-Bodytemp"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-07"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "To record the body temperature of an individual."
* . ^short = "General FHIR body temperature Profile in Norway"

// ✅ Open Slicing: Allows other codes, but enforces SNOMED CT when used
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Allows SNOMED CT but requires #276885007 if SNOMED CT is used."

* code.coding contains 
    BodyTempSCTCode 0..1 MS and
    LOINCCode 0..1 MS

// ✅ Enforce SNOMED CT structure when used
* code.coding[BodyTempSCTCode].system 1..1
* code.coding[BodyTempSCTCode].system = "http://snomed.info/sct"
* code.coding[BodyTempSCTCode].code 1..1
* code.coding[BodyTempSCTCode].code = #276885007

// ✅ Enforce LOINC structure when used
* code.coding[LOINCCode].system 1..1
* code.coding[LOINCCode].system = "http://loinc.org"
* code.coding[LOINCCode].code 1..1
* code.coding[LOINCCode].code = #8310-5
* code.coding[LOINCCode].display = "Body temperature"

// ✅ Allows other codes by keeping slicing open
* code.coding 1..* MS

// ✅ Define Value Quantity (Numerical temperature measurement)
* valueQuantity 1..1
* valueQuantity only Quantity
* valueQuantity.unit 1..1
* valueQuantity.system 1..1
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1..1
* valueQuantity.code from http://hl7.org/fhir/ValueSet/ucum-bodytemp (required)

// ✅ Allow Data Absent Reason
* dataAbsentReason 0..1
* dataAbsentReason only CodeableConcept
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)

// ✅ Subject Reference (Who the observation is about)
* subject 1..1
* subject only Reference(Patient or NoBasisPatient)

// ✅ Performer (Who measured it)
* performer 0..* 
* performer only Reference(Practitioner or NoBasisPractitioner or Organization or CareTeam or Patient or RelatedPerson or NoBasisOrganization or NoBasisPatient or NoBasisRelatedPerson)

// ✅ Effective DateTime (When the measurement was taken)
* effective[x] only dateTime
* effectiveDateTime 1..1 MS
