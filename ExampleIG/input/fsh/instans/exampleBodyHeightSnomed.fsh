Alias: $bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

Instance: body-height-example
InstanceOf: NoVitalSignsObservationBodyHeight
Usage: #example
* meta.profile = "http://hl7.no/StructureDefinition/NoVitalSignsObservationBodyHeight"
* status = #final

// Use explicit slice name VSCat for category
* category[VSCat] = $observation-category#vital-signs "Vital Signs"

* code = $sct#50373000 "Body height"
* code.text = "Body height"
* subject = Reference(Patient/12345) "Ola Nordmann"
* effectiveDateTime = "2025-02-22T09:00:00Z"
* valueQuantity = 181 'cm' "cm"

// Explicitly use performer slices
* performer[Author] = Reference(Practitioner/67890) "Dr. Anne Hansen"


* performer[organization] = Reference(Organization/456) "Oslo University Hospital"


