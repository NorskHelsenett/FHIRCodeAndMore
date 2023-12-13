Extension: HnExtensionFreeSlotPlanningHorizon
Id: hn-extension-free-slot-planningHorizon
Title: "Periode for første og siste ledige slot i timebok"
Description: "Periode for første og siste ledige slot i timebok. Tid og referanse"
* ^status = #active 
* ^publisher = "Helsenorge"
* insert ExtensionContext(Schedule)
* extension contains
    freePlanningHorizon 0..1 MS and
    firstFreeSlot 0..1 MS and
    lastFreeSlot 0..1 MS 
* extension[freePlanningHorizon].value[x] only Period
* extension[freePlanningHorizon].value[x] ^short = "Start tidspunkt for første ledige slot og slutt tidspunkt for siste ledige slot i timebok."
* extension[firstFreeSlot].value[x] only Reference(Slot)
* extension[firstFreeSlot].value[x]  ^short = "Referanse til første ledige slot i timebok."
* extension[lastFreeSlot].value[x] only Reference(Slot)
* extension[lastFreeSlot].value[x]  ^short = "Referanse til siste ledige slot i timebok."




// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"