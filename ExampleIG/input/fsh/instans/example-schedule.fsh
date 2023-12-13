Instance: Eksempel-schedule-poliklinikk
InstanceOf: HnBasisSchedule
Description: "Schedule for Doctor Feelgood"
Usage: #example
* identifier.system = "http://example.org/schedule-identifiers"
* identifier.value = "925ad87b-31e6-4312-8a55-9d0fce62dac4"
* active = true
* serviceCategory[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* serviceCategory[=].coding[=].code = #27
* serviceCategory[=].coding[=].display = "Specialist Medical"
* serviceType[0].coding[0].system = "http://helsenorge.no/fhir/CodeSystem/hn-scheduleAndSlot-type-cs"
* serviceType[=].coding[=].code = #Poliklinisktime
* serviceType[=].coding[=].display = "Poliklinisk time"
* actor[0].type = "Practitioner"
* actor[=].identifier.system = "urn:oid:2.16.578.1.12.4.1.4.4"
* actor[=].identifier.value = "1010101010"
* actor[=].display = "Doctor Feelgood"
* comment = "Schedule for Doctor Feelgood"
* planningHorizon.start = "2023-09-01T09:15:00Z"
* planningHorizon.end = "2023-12-31T17:00:00Z"
* extension[+].extension[0].url = "freePlanningHorizon"
* extension[=].extension[=].valuePeriod.start = "2023-12-18T12:15:00Z"
* extension[=].extension[=].valuePeriod.end = "2023-12-22T15:15:00Z"
//* extension[=].extension[+].url = "firstFreeSlot"
//* extension[=].extension[=].valueReference.reference = "slot/36bf40f2-c61a-4607-9a37-41327485ae96"
//* extension[=].extension[+].url = "lastFreeSlot"
//* extension[=].extension[=].valueReference.reference = "slot/fe8010e8-b36a-4984-8e1a-20e6612e1b14"
* extension[=].url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-free-slot-planningHorizon"

Instance: Eksempel-schedule-vaksine
InstanceOf: HnBasisSchedule
Description: "Schedule for vaksine timer"
Usage: #example
* identifier.system = "http://example.org/schedule-identifiers"
* identifier.value = "bf3de63e-0a21-4712-ae2c-0b5d44b4e0af"
* active = true
* serviceCategory[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/service-category"
* serviceCategory[=].coding[=].code = #17
* serviceCategory[=].coding[=].display = "General Practice"
* serviceType[0].coding[0].system = "urn:oid:2.16.578.1.12.4.1.1.7617"
* serviceType[=].coding[=].code = #Vaksine
* serviceType[=].coding[=].display = "Vaksine time"
* actor[0].type = "HealthcareService"
* actor[=].identifier.system = "urn:oid:2.16.578.1.12.4.1.4.101"
* actor[=].identifier.value = "orgnr11112233344"
* actor[=].display = "Sørbygda legevakt"
* comment = "Schedule influense vaksinering i desember 2023"
* planningHorizon.start = "2023-12-01T09:15:00Z"
* planningHorizon.end = "2023-12-22T17:00:00Z"
* extension[+].extension[0].url = "freePlanningHorizon"
* extension[=].extension[=].valuePeriod.start = "2023-12-18T12:10:00Z"
* extension[=].extension[=].valuePeriod.end = "2023-12-19T14:30:00Z"
//* extension[=].extension[+].url = "firstFreeSlot"
//* extension[=].extension[=].valueReference.reference = "slot/36bf40f2-c61a-4607-9a37-41327485ae96"
//* extension[=].extension[+].url = "lastFreeSlot"
//* extension[=].extension[=].valueReference.reference = "slot/fe8010e8-b36a-4984-8e1a-20e6612e1b14"
* extension[=].url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-free-slot-planningHorizon"
