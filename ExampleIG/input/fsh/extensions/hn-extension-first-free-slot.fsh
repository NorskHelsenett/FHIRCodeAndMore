Extension: HnExtensionFirstLastAvailableFreeSlot
Id: hn-extension-first-and-last-available-free-slot
Title: "Første og siste ledige slot i timebok"
Description: "Første og siste ledige slot i timebok. Tid og referanse"
* ^status = #active 
* ^publisher = "Helsenorge"
* insert ExtensionContext(Schedule)
* extension contains
    firstStart 0..1 MS and
    firstFreeSlot 0..1 MS and
    lastStart 0..1 MS and
    lastFreeSlot 0..1 MS 
* extension[firstStart].value[x] only dateTime
* extension[firstStart].value[x] ^short = "Start tidspunkt for første ledige slot i timebok."
* extension[firstFreeSlot].value[x] only Reference(Slot)
* extension[firstFreeSlot].value[x]  ^short = "Referanse til første ledige slot i timebok."
* extension[lastStart].value[x] only dateTime
* extension[lastStart].value[x] ^short = "Start tidspunkt for siste ledige slot i timebok."
* extension[lastFreeSlot].value[x] only Reference(Slot)
* extension[lastFreeSlot].value[x]  ^short = "Referanse til siste ledige slot i timebok."

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
* extension[freePlanningHorizon].value[x] ^short = "Start og slut tispunkt for første ledige slot og siste ledige slot i timebok."
* extension[firstFreeSlot].value[x] only Reference(Slot)
* extension[firstFreeSlot].value[x]  ^short = "Referanse til første ledige slot i timebok."
* extension[lastFreeSlot].value[x] only Reference(Slot)
* extension[lastFreeSlot].value[x]  ^short = "Referanse til siste ledige slot i timebok."




// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"