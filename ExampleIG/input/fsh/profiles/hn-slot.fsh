Profile: HnBasisSlot
Parent: Slot
Id: hn-basis-slot
Title: "HnBasisSlot"
Description: "Profil for slot i Helsenorge. Basert på FHIR Slot (R4)"
* ^version = "0.1.0"
* ^status = #draft
* identifier.value 1..
* identifier 1..1
* identifier ^short = "Identifer must be UUID/GUID"
* identifier ^definition = "Identifer must be UUID/GUID"
* identifier.assigner only Reference(Organization or no-basis-Organization)
* identifier.system 1..1
* serviceCategory 1..1
* serviceCategory.coding.code
* serviceType.coding obeys inv-4
* serviceType from hn-scheduleandslot-type-vs
* specialty.coding obeys inv-4 
* serviceCategory.coding obeys inv-4 
* serviceCategory from http://hl7.org/fhir/ValueSet/service-category (preferred)
* appointmentType from hn-scheduleandslot-type-vs
* appointmentType.coding obeys inv-4
* schedule only Reference(Schedule or hn-basis-schedule )