CodeSystem: HnKodeverkVarsling
Id: hn-kodeverk-varsling.codesystem
Title: "Varsling"
Description: "Angir om innbygger skal varsles når en ekstern aktør lagrer eller endrer en ressurs på Helsenorge. I tillegg hvordan avsender organisasjonen skal framstå (navn) i SMS- og e-post varsler til innbygger."
//* ^url = "http://helsenorge.no/fhir/varsling"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active 
* ^publisher = "Helsenorge"
//* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "http://helsenorge.no/fhir/varsling"
* ^content = #complete
* #1 "Innbygger skal ikke varsles"
* #2 "Benytt angitt navn som avsender i varsel til innbygger"