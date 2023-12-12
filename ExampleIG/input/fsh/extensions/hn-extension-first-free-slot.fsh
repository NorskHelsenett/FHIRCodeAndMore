Extension: HnExtensionFirstAvailableFreeSlot
Id: hn-extension-first-available-free-slot
Title: "Første ledige slot i timebok"
Description: "Første ledige slot i timebok. Tid og referanse"
* ^status = #active 
* ^publisher = "Helsenorge"
* insert ExtensionContext(Schedule)
* extension contains
    start 0..1 MS and
    freeSlot 0..1 MS 
* extension[start].value[x] only dateTime
* extension[start].value[x] ^short = "Start tidspunkt for første ledige slot i timebok."
* extension[freeSlot].value[x] only Reference(Slot)
* extension[freeSlot].value[x]  ^short = "Referanse til første ledige slot i timebok."


// This rule set limits the application of an extension to the given path
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"