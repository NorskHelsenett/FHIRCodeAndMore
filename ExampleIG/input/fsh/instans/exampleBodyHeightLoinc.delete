Instance: body-height-example-loinc
InstanceOf: NoVitalSignsObservationBodyHeight
Usage: #example
* meta.profile = "http://hl7.no/StructureDefinition/NoVitalSignsObservationBodyHeight"
* status = #final

// Use explicit slice name VSCat for category
* category[VSCat] = $observation-category#vital-signs "Vital Signs"

// Use LOINC instead of SNOMED CT
* code = $loinc#8302-2 "Body height"
* code.text = "Body height"
* subject = Reference(Patient/12345) "Ola Nordmann"
* effectiveDateTime = "2025-02-22T09:00:00Z"
* valueQuantity = 181 'cm' "cm"

// Explicitly use performer slices
* performer[Author] = Reference(Practitioner/67890) "Dr. Anne Hansen"
* performer[Author].extension.url = "http://hl7.org/fhir/StructureDefinition/performer"
* performer[Author].extension.valueCode = #Author

* performer[organization] = Reference(Organization/456) "Oslo University Hospital"
* performer[organization].extension.url = "http://hl7.org/fhir/StructureDefinition/performer"
* performer[organization].extension.valueCode = #organization