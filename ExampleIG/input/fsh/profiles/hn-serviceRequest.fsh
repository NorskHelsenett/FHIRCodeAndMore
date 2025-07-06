Alias: $requestStatus = http://hl7.org/fhir/ValueSet/request-status
Alias: $requestIntent = http://hl7.org/fhir/ValueSet/request-intent
Alias: $9060 =  urn:oid:2.16.578.1.12.4.1.1.9060


Profile: HnBasisServiceRequest
Id: hn-basis-serviceRequest
Parent: ServiceRequest
Description: "ServiceRequest sendes til tjenesteytere for å informere om hvilke tjenester som ønskes fra leverandøren."
* ^status = #draft 
* ^publisher = "Helsenorge"
* ^url = "http://helsenorge.no/fhir/StructureDefinition/hn-basis-serviceRequest"
* extension contains no-ansiennitets-dato named no-ansiennitets-dato 0..1
* extension contains no-mottatt-dato named no-mottatt-dato 0..1
* extension contains no-frist-for-helsehjelp named no-frist-for-helsehjelp 0..1
* extension contains businessStatus named businessStatus 0..*
* extension[businessStatus] ^short = "Request Business Status"
* identifier 1..* 
* identifier ^short = "Skal være UUID"
* identifier ^definition = "Identifier er identifikator som identifiserer serviceRequest uavhengig av ressursens id på en FHIR-server. Skal være en UUID. Kan benyttes for å knytte ServiceRequest sammen med eventuelle etterfølgende oppdateringer."
* identifier.system 1..1
* identifier.value 1..1 
//* identifier.value obeys uuid-format
* status = #active
//status from HnExtendedServiceRequestStatus (required)
//* status obeys StatusActiveOrCompleted
//* status ^short = "Extended valueset for status"
//* status ^definition = "Status er extended med koder fra 9148."
* intent = #order
//* intent obeys IntentOrder
// intent ^definition = "Helsenorge "
* category 0..*
* category from ServiceRequestCategoryVS (preferred)
* category ^short = "Hvis category er brukt og det mangler code bør beskrivelse av bestilling være i note"
* priority 1..1 
* priority obeys PriorityUrgentOrRoutine
* subject only Reference(Patient)
* subject.reference 0..0
* subject.type = "Patient"
* subject ^short = "Subject identifiserer innbygger."
* subject.identifier.system obeys ValidSubjectSystemURL
* subject.identifier.system ^short = "Det skal benyttes fødselsnummer eller d-nummer."
* performerType from ServiceRequestPerformerTypeVS
* supportingInfo ^short = "Supporting info kan brukes for å sende informasjon når det er frykt for smitte." 
* supportingInfo ^definition = "Hvis det er frykt for smitte eller bevist smitte er slik informasjonen referert fra supportingInformation som ‘contained’ ressurs." 


ValueSet: ServiceRequestCategoryVS
Id: serviceRequest-category-vs
Title: "ServiceRequest Category Value Set"
Description: "Kode som klassifiserer tjenesten for søk, sortering og visningsformål. (flere koder vil leggest til senere)"
* ^experimental = true
* $SCT#1269515004 "Face to face consultation with patient"
* $SCT#719410009 "Consultation via video conference"
* $SCT#3457005 "Patient referral"


ValueSet: ServiceRequestPerformerTypeVS
Id: serviceRequest-performerType-vs
Title: "ServiceRequest PerformerType Value Set"
Description: "Koder for valgte profesjonstyper."
* ^experimental = true
* include codes from system $SCT where concept is-a #158965000 "Healthcare professional"
* include codes from system $9060

ValueSet: HenvisningsstatusVS
Id: henvisningsstatus-vs
Title: "Henvisningsstatus ValueSet"
Description: "ValueSet som refererer til henvisningsstatuskoder fra HIS 1206:2018."
* ^experimental = true
* include codes from system HnHenvisningsstatus


Invariant: PriorityUrgentOrRoutine
Description: "priority må være enten 'routine' eller 'urgent'."
Expression: "value='routine' or value='urgent'"
Severity: #error


Invariant: StatusActiveOrCompleted
Description: "status må være enten 'active' eller 'completed'."
Expression: "value='active' or value='completed'"
Severity: #error

Invariant: IntentOrder
Description: "intent må være 'order'."
Expression: "value='order'"
Severity: #error

Invariant: ValidSubjectSystemURL
Description: "system URL må være enten urn:oid:2.16.578.1.12.4.1.4.1' eller 'urn:oid:2.16.578.1.12.4.1.4.2'."
Expression: "value='urn:oid:2.16.578.1.12.4.1.4.1' or value='urn:oid:2.16.578.1.12.4.1.4.2'"
Severity: #error

/**
Invariant: uuid-format
Description: "identifier value må være UUID."
Expression: "value.matches('^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89ab][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$')"
Severity: #error
*/

Extension: AdditionalCode
Id: additional-code
Title: "Alternative codes på serviceRequest.code"
Description: "Ekstensjon som muliggjør å legge til flere koder som alternative codes på serviceRequest.code"
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* value[x] only CodeableConcept



Instance: hn-basis-serviceRequest-example
InstanceOf: ServiceRequest
Usage: #example
* meta.profile = "http://helsenorge.no/fhir/StructureDefinition/hn-basis-serviceRequest"
* identifier.system = "http://helsenorge.no/fhir/identifiers/uuid"
* identifier.value = "cdeaceeb-4119-42c6-8a3a-b8d495970cb9"
* status = #active
* intent = #order
//* category.coding[0] = $SCT#1269515004 "Face to face consultation with patient" 
//* category.coding[+] = $SCT#719410009 "Consultation via video conference"

* priority = #routine
* subject.type = "Patient"
* subject.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* subject.identifier.value = "12345678901"
* note.text = "Jeg har fått beskjed om at jeg trenger regelmessig oppfølging på grunn av hjertetilstanden min og ønsker meg time på legesenteret eller via vidoe konultasjon"
* reasonCode = $SCT#49436004 "Atrial fibrillation"
* occurrencePeriod.start = "2023-11-15T09:00:00Z"
* occurrencePeriod.end = "2023-11-20T15:30:00Z"
* performerType = $9060#LE "Lege"


// @Name: Selected External Code System Aliases (not complete)
// @Description: Aliases for a subset of external code systems, based on package hl7.terminology#2.1.0 based on FHIR 4.0.1. Leading $ signs are optional but are useful for visually distinguishing aliases from other names.

// External code systems with a canonical recognized by terminology.hl7.org
Alias:   $LNC = http://loinc.org
Alias:   $SCT = http://snomed.info/sct
Alias:   $UCUM = http://unitsofmeasure.org
Alias:   $ICD10CM = http://hl7.org/fhir/sid/icd-10-cm
Alias:   $ICD10PCS = http://www.cms.gov/Medicare/Coding/ICD10
Alias:   $RXN = http://www.nlm.nih.gov/research/umls/rxnorm
Alias:   $CPT = http://www.ama-assn.org/go/cpt
Alias:   $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias:   $UMLS = http://terminology.hl7.org/CodeSystem/umls