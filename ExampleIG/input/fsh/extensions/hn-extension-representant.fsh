Extension: HnExtensionRepresentant
Id: hn-extension-representant
Title: "Representant"
Description: "Person som representerer en annen etter avtale, vedtakk mm."
//* ^url = "http://helsenorge.no/fhir/extension/hn-extension-representant"
* extension contains
    name 0..1 MS and
    ident 1..* MS 
* extension[name].value[x] only HumanName
* extension[ident].value[x] only Identifier
* extension[ident].value[x].type.coding.system = "urn:oid:2.16.578.1.12.4.1.1.8116"