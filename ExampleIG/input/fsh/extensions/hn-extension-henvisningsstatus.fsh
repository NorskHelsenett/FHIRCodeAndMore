Extension: BusinessStatusExtension
Id: businessStatus
Title: "Business status of a request - including referals"
Description: "Business status of a request - including referals"
* ^url = "http://helsenorge.no/fhir/StructureDefinition/businessstatus"
* ^status = #active
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept.coding 1..* // must have at least one coding
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.code ^short = "Request business status"