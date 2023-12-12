Profile: HnBasisSchedule
Parent: Schedule
Id: hn-basis-schedule
Title: "hn-basis-schedule"
Description: "Profile used for Scheduler in HN. Based on FHIR Schedule (R4)"
* ^version = "0.1.0"
* ^status = #draft
* identifier.value 1..
* identifier 1..1
* identifier ^short = "Identifer must be UUID/GUID"
* identifier ^definition = "Identifer must be UUID/GUID"
* identifier.assigner only Reference(Organization or no-basis-Organization)
* active = true
* identifier.system 1..1
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category
* serviceCategory.coding obeys inv-4
* serviceType.coding obeys inv-4
* specialty.coding obeys inv-4 
* actor.type 1..
* actor only Reference(HealthcareService or Practitioner)
* actor ^short = "Currently only HealthcareService or Practitioner are referenced as valid actors."
* comment ^short = "Comments regarding the scheduler."
* comment ^definition = "Comments regarding the scheduler including short information about the timebook."
