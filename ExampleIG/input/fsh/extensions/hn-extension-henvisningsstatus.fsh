Extension: HenvisningsstatusExtension
Id: henvisningsstatus
Title: "Henvisningsstatus (HIS 1206)"
Description: "En utvidelse som representerer status på henvisning i henhold til HIS 1206:2018."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/henvisningsstatus"
* value[x] only code
* valueCode 1..1
* valueCode from http://helsenorge.no/fhir/ValueSet/henvisningsstatus-vs (required)
* valueCode ^short = "Status på henvisningen i henhold til nasjonal standard HIS 1206"
