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
* identifier 1..* 
* identifier ^short = "Skal være UUID"
* identifier ^definition = "Identifier er identifikator som identifiserer serviceRequest uavhengig av ressursens id på en FHIR-server. Skal være en UUID. Kan benyttes for å knytte ServiceRequest sammen med eventuelle etterfølgende oppdateringer."
* identifier.system 1..1
* identifier.value 1..1 
* identifier.value obeys uuid-format
* status = #active
* status obeys StatusActiveOrCompleted
* status ^short = "Default status er active"
* status ^definition = "Status active betyr at serviceRequest er sendt fra Helsenorge og status completed betyr at status er oppdatert fra behandler."
* intent = #order
* intent obeys IntentOrder
* code 1..1
* code from ServiceRequestCodeVS
* category 1..*
* category from ServiceRequestCategoryVS
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


ValueSet: ServiceRequestCodeVS
Id: serviceRequest-code-vs
Title: "ServiceRequest code Value Set"
Description: "Kode for tjenesten for søkt om."
* ^experimental = true
* include codes from system $SCT where concept is-a #15220000 "Laboratory test"
* include codes from system $SCT where concept is-a #11429006 "Consultation"
* include codes from system $SCT where concept is-a #1237136005 "Consultation with patient"
* exclude $SCT#12843005 "Subsequent hospital visit by physician"
* $SCT#1269515004 "Face-to-face encounter"
* $SCT#719410009 "Consultation via video conference"

ValueSet: ServiceRequestCategoryVS
Id: serviceRequest-category-vs
Title: "ServiceRequest Category Value Set"
Description: "Kode som klassifiserer tjenesten for søk, sortering og visningsformål."
* ^experimental = true
* $SCT#15220000 "Laboratory test"
* $SCT#11429006 "Consultation"
* $SCT#1237136005 "Consultation with patient"
* $SCT#1269515004 "Face-to-face encounter"
* $SCT#719410009 "Consultation via video conference"


ValueSet: ServiceRequestPerformerTypeVS
Id: serviceRequest-performerType-vs
Title: "ServiceRequest PerformerType Value Set"
Description: "Koder for valgte profesjonstyper."
* ^experimental = true
* include codes from system $SCT where concept is-a #158965000 "Healthcare professional"
* include codes from system $9060


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


Invariant: uuid-format
Description: "identifier value må være UUID."
Expression: "value.matches('^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89ab][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$')"
Severity: #error





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