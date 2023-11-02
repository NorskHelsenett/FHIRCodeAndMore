CodeSystem: NoKodeverk7611
Id: no-kodeverk-7611.codesystem
Title: "7611 Representasjonsrolle."
Description: "Dersom en innbygger benytter dialogtjenester på vegne av pasient fra helsenorge.no så skal informasjon om hvem som benytter tjeneste oppgis vha. objektet Pasientrelasjon. Pasienten oppgis som vanlig under patient-tagen i Hodemeldingen, mens personen som benytter en dialogtjeneste på vegne av pasienten skal oppgis i objektet Pasientrelasjon. Relasjon angir her representasjonsolle person som benytter tjeneste har til pasient."
//* ^url = "http://ehelse.no/fhir/CodeSystem/no-kodeverk-8116"
* ^experimental = false
* ^caseSensitive = true
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.578.1.12.4.1.1.8116"
* ^status = #active
* ^date = "2023-03-29" //sist endret dato
* ^publisher = "Direktoratet for e-helse"
* ^content = #complete
* #FO "Foreldreansvar" "Registrert med foreldreansvar (i FREG). I tillegg må en av foreldrene være registrert med samme bostedsadresse som barnet."
* #VE "Vergemål" "Person som representerer Innbygger basert på  vergemålsvedtak"
* #FU "Fullmakt" "Fullmektig basert på fullmakt fra innbygger med full samtykkekompetanse. Hvem som helst kan bli opprettet som fullmektig, relasjon mellom fullmaktsgiver og fullmektig er ikke ytterligere spesifisert."
* #TD "Tildelt fullmakt" "Innbyggers nærmeste pårørende kan, etter bekreftelse fra fastlegen, registreres som fullmektig for innbygger som mangler helserettslig samtykkekompetanse."
