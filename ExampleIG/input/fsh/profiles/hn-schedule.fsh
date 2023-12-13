Profile: HnBasisSchedule
Parent: Schedule
Id: hn-basis-schedule
Title: "HnBasisSchedule"
Description: "FHIR Schedule brukes for å hente timebøker tilgjengelige for timebestilling for innbygger. Profilen er basert på R4."
* ^version = "0.1.0"
* ^status = #draft
* extension contains 
    hn-extension-free-slot-planningHorizon named freeSlotPlanningHorizon 0..1 MS
* identifier.value 1..
* identifier 1..1
* identifier ^short = "Identifer must be UUID/GUID"
* identifier ^definition = "Identifer must be UUID/GUID"
* identifier.assigner only Reference(Organization or no-basis-Organization)
* active = true
* identifier.system 1..1
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category
* serviceCategory.coding obeys inv-4
* serviceType 1..*
* serviceType.coding obeys inv-4
* serviceType from hn-scheduleandslot-type-vs
* specialty.coding obeys inv-4 
//* actor.type 1..
* actor only Reference(HealthcareService or Practitioner)
* actor ^short = "Currently only HealthcareService or Practitioner are referenced as valid actors."
* comment ^short = "Comments regarding the scheduler."
* comment ^definition = "Comments regarding the scheduler including short information about the timebook."
