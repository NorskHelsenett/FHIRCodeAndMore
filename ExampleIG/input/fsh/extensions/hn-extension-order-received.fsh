Extension: OrderReceived
Id: order-received
Title: "Order Received"
Description: "Date and time when the order was received."
* ^url = "http://helsenorge.no/fhir/StructureDefinition/order-received"
* value[x] only dateTime
* valueDateTime 1..1  // This is required
* valueDateTime ^short = "The timestamp when the order was received"