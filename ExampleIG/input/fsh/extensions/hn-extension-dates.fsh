Extension: NoAnsiennitetsDato
Id: ansiennitetsDato
Title: "Ansiennitets dato"
Description: "Seniority date is the first date a referral was received by specialist health"
* ^url = "http://helsenorge.no/fhir/StructureDefinition/no-ansiennitets-dato"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "Ansiennitetsdato er definert som den første mottaksdatoen for en henvisning til spesialisthelsetjenesten"

Extension: NoMottattDato
Id: mottattDato
Title: "Mottatt dato"
Description: "Date and time when the order was received."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/no-mottatt-dato"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "Mottattdato er den formelle datoen en henvisning blir registrert og mottatt av mottaker"

Extension: NoFristForHelsehjelp
Id: fristDatoForHelsehjelp
Title: "Dato for frist for helsehjelp"
Description: "Dato for frist for helsehjelp."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/no-frist-for-helsehjelp"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "Frist for helsehjelp er den datoen spesialisthelsetjenesten har vurdert at pasienten senest må få nødvendig helsehjelp innen, for at det ikke skal oppstå alvorlig helserisiko."

Extension: NoFristDatoForVurdering
Id: fristDatoForVurdering
Title: "Dato for frist for vurdering"
Description: "Dato for frist for vurdering."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/no-frist-for-vurdering"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "Frist for vurdering."

Extension: NoVurdertDato
Id: vurdertDato
Title: "Vurdert dato"
Description: "Brukes når forespørsel er vurdert og/eller henvisning er avvist/avsluttet."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/no-vurdert-dato"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "Vurdert dato."

