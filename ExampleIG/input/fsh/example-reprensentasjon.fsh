Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category

Instance: Eksempel-representasjon-i-meta-security
InstanceOf: Observation
Description: "Eksempel av bruk av extension for representasjon i meta.security og extension for varselsorganisasjon i meta.tag."
Usage: #example
* meta.tag = http://helsenorge.no/fhir/extension/varselorganisasjon#9 "Benytt angitt navn som avsender i varsel til innbygger"
* meta.security = urn:oid:2.16.578.1.12.4.1.1.7611#FO "Foreldreansvar"
* meta.security.extension.url = "http://helsenorge.no/fhir/StructureDefinition/hn-extension-representant"
//* meta.security.extension.url = "http://helsenorge.no/fhir/extension/hn-extension-representant"
* meta.security.extension.extension[0].url = "name"
* meta.security.extension.extension[=].valueHumanName.family = "Danser"
* meta.security.extension.extension[=].valueHumanName.given = "Line"
* meta.security.extension.extension[=].valueHumanName.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* meta.security.extension.extension[=].valueHumanName.extension.valueString = "Grete"
* meta.security.extension.extension[+].url = "ident"
* meta.security.extension.extension[=].valueIdentifier.type = urn:oid:2.16.578.1.12.4.1.1.8116#FNR "Fødselsnummer"
* meta.security.extension.extension[=].valueIdentifier.value = "12345678901"
* status = #final
* category = $observation-category#survey "Survey"
* code.text = "Foreldres observasjon av barnets symptomer"
* subject = Reference(example-girl)
* performer = Reference(RelatedPerson/line-danser)
* effectiveDateTime = "2023-11-02T10:30:00Z"
* note.text = "Barnet har klaget over øresmerter og har vært mer irritabelt enn vanlig. Periodisk gnissing av øret er observert."

Instance: example-girl
InstanceOf: Patient
Description: "Eksampel pasient"
Usage: #example
* name.family = "Danser"
* name.given = "Jane"
* gender = #female
* birthDate = "2015-11-02"


Instance: line-danser
InstanceOf: RelatedPerson
Description: "Eksampel pårørende"
Usage: #example
* active = true
* patient = Reference(example-girl)
* relationship[0].coding[0].system = "urn:oid:2.16.578.1.12.4.1.1.9033"
* relationship[=].coding[=].code = #MO
* relationship[=].coding[=].display = "Mor"
* relationship.
* name.family = "Danser"
* name.given = "Line"
* gender = #female
* birthDate = "1990-11-02"