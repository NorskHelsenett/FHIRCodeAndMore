Extension: HnExtensionRepresentant
Id: hn-extension-representant
Title: "Representant"
Description: "Person som representerer en annen etter avtale, vedtakk mm."
* ^status = #active 
* ^publisher = "Helsenorge"
* extension contains
    name 0..1 MS and
    ident 1..1 MS 
* extension[name].value[x] only HumanName or no-basis-HumanName
* extension[ident].value[x] only Identifier
* extension[ident].value[x].type.coding from CS8116DnrFnrVS
* extension[ident].value[x].type.coding 1..1
* extension[ident].value[x].type.coding.system 1..1
* extension[ident].value[x].type.coding.code 1..1
* extension[ident].value[x].value 1..1
* extension[ident].value[x] 1..1
* extension[ident].value[x].type.coding 1..1