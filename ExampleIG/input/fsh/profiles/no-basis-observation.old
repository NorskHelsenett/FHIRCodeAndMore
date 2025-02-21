Profile: NoBasisObservation
Parent: Observation
Id: no-basis-Observation
Title: "General No Basis Observation"
Description: "Profile for general observations as desfined as base profile in norway."

* ^url = "http://hl7.no/fhir/StructureDefinition/no-basis-Observation"
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2025-02-09"
* ^jurisdiction = urn:iso:std:iso:3166#NO "Norway"
* ^purpose = "To record general Observations of an individual. Norwegian basis profile"
* . ^short = "FHIR general Observations Profile No Basis"

// Slicing definition remains the same
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.description = "Slices for LOINC and SCT coding of Observation.code. LOINC or SCT are preferred, but other codes can be used."
* code.coding ^slicing.rules = #open

// Define slices using Code Systems (instead of Value Sets)
* code.coding contains 
    LOINC 0..1 and
    SCT 0..1

// Restrict only the system (instead of binding to a ValueSet)
* code.coding[LOINC].system 1..1
* code.coding[LOINC].system = "http://loinc.org"

* code.coding[SCT].system 1..1
* code.coding[SCT].system = "http://snomed.info/sct"

// subject definition
* subject 0..1 MS
* subject only Reference(Patient or NoBasisPatient or Group or Device or Location or NoBasisLocation)
* subject ^definition = "Reference to the patient identified by Norwegian national ID number (Fødselsnummer or DNR)."

// performer definition
* performer only Reference(Practitioner or NoBasisPractitioner or  Organization or CareTeam or Patient or RelatedPerson or NoBasisOrganization or NoBasisPatient or NoBasisRelatedPerson) 
* performer 0..* MS
* performer.identifier MS
* performer.identifier.system 1..1 MS
* performer.identifier.value 1..1 MS
* performer.display MS