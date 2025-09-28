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


// servicerequest-statusReason.fsh
Extension: ServiceRequestStatusReason
Id: servicerequest-statusReason
Title: "ServiceRequest Status Reason"
Description: "Reason for the current status of the ServiceRequest (R5 parity)."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/servicerequest-statusReason"
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"

// Value mirrors R5: CodeableConcept
* value[x] only CodeableConcept



