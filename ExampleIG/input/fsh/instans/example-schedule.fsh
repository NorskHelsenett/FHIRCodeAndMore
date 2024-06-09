Instance: Eksempel-schedule-poliklinikk
InstanceOf: HnBasisSchedule
Description: "Schedule for Doctor Feelgood"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:925ad87b-31e6-4312-8a55-9d0fce62dac4"
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
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bf3de63e-0a21-4712-ae2c-0b5d44b4e0af"
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

//nye instancer

Instance: Schedule-Fastlege-Hans-Hansen
InstanceOf: HnBasisSchedule
Description: "Schedule for Fastlege Hans Hansen"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d082e865-7a93-46fc-a0a3-681571aed13c"
* serviceType[0].coding[0].system = "http://helsenorge.no/fhir/CodeSystem/hn-scheduleAndSlot-type-cs"
* serviceType[0].coding[0].code = #Personlig
* actor[0].type = "Practitioner"
* actor[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.4.4"
* actor[0].identifier.value = "123456789"
* actor[0].display = "Fastlege Hans Hansen"
* comment = "Jobber mandag, onsdag og fredag"
* extension[0].url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-free-slot-planningHorizon"
* extension[0].extension[0].url = "freePlanningHorizon"
* extension[0].extension[0].valuePeriod.start = "2024-06-08T09:00:00Z"
* extension[0].extension[0].valuePeriod.end = "2024-11-20T15:30:00Z"


Instance: Schedule-Vikar-September-August
InstanceOf: HnBasisSchedule
Description: "Schedule for Vikar September August"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0cd7fe84-94c3-41b8-83f6-3c64451447bc"
* serviceType[0].coding[0].system = "http://helsenorge.no/fhir/CodeSystem/hn-scheduleAndSlot-type-cs"
* serviceType[0].coding[0].code = #Personlig
* actor[0].type = "Practitioner"
* actor[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.4.4"
* actor[0].identifier.value = "431001875"
* actor[0].display = "Vikar September August"
* comment = "Jobber tirsdag og torsdag"
* extension[0].url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-free-slot-planningHorizon"
* extension[0].extension[0].url = "freePlanningHorizon"
* extension[0].extension[0].valuePeriod.start = "2024-06-07T09:00:00Z"
* extension[0].extension[0].valuePeriod.end = "2024-09-20T15:30:00Z"


Instance: Schedule-Koronavaksine
InstanceOf: HnBasisSchedule
Description: "Schedule for Koronavaksine"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:03b4a6cf-7c8b-4171-a171-8b7abbec2eaf"
* serviceType[0].coding[0].system = "urn:oid:2.16.578.1.12.4.1.1.7617"
* serviceType[0].coding[0].code = #Koronavaksine
* actor[0].type = "HealthcareService"
* actor[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.1.9051"
* actor[0].identifier.value = "ABCDEF123456"
* actor[0].display = "Koronavaksine"
* comment = "Koronavaksine tilbys til risikopasienter i henhold til retningslinjer fra FHI"
* extension[0].url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-free-slot-planningHorizon"
* extension[0].extension[0].url = "freePlanningHorizon"
* extension[0].extension[0].valuePeriod.start = "2024-06-05T09:00:00Z"
* extension[0].extension[0].valuePeriod.end = "2024-06-09T15:30:00Z"


Instance: Schedule-Lab
InstanceOf: HnBasisSchedule
Description: "Schedule for Lab på legekontoret"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:50aa673f-3456-4855-9eec-5f1aea3966a7"
* serviceType[0].coding[0].system = "urn:oid:2.16.578.1.12.4.1.1.7617"
* serviceType[0].coding[0].code = #Lab
* actor[0].type = "HealthcareService"
* actor[0].identifier.system = "urn:oid:2.16.578.1.12.4.1.1.9051"
* actor[0].identifier.value = "3546c8f7-3cd3-4693-929e-66501642504c"
* actor[0].display = "Lab på legekontoret"
* comment = "Lab tilbyr blodprøver og andre tester hver dag fra 10-15"



