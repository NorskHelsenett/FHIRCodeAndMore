Extension: Representant
Id: representant
Title: "Representant"
Description: "Person som representerer en annen etter avtale."
* extension contains
    name 0..1 MS and
    idType 1..1 MS 
* extension[name].value[x] only HumanName
* extension[idType].valueCoding