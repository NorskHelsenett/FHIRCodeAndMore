Extension: HnExtensionRepresentant
Id: hn-extension-representant
Title: "Representant"
Description: "Person som representerer en annen etter avtale, vedtakk mm."
//* ^url = "http://helsenorge.no/fhir/extension/hn-extension-representant"
* extension contains
    name 0..1 MS and
    idType 1..1 MS 
* extension[name].value[x] only HumanName
* extension[idType].value[x] only Coding
* extension[idType].value[x].system = "urn:oid:2.16.578.1.12.4.1.1.8116"