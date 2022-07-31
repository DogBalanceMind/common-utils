%dw 2.0
output application/json
---
{
	"log-entry": { 
		"payload": payload as Object default {},
		"headers": attributes.headers as Object default {},
		"query-parameters": attributes.queryParams as Object default {},
		"URI-parameters": attributes.uriParams as Object default {},
		("URL": vars.url default attributes.headers.'referer') if (vars.url != null and vars.url != ""),
		"exception": if (not isEmpty(error.suppressedErrors)) error - "cause" else (error default {}),
		"correlationId": correlationId,
		("time-start": vars.startTime) if (vars.startTime != null and vars.startTime != ""),
		("time-consumed": ((now() - vars.startTime) as Number {unit: "milliseconds"}) as String ++ ' ms') if (vars.startTime != null and vars.startTime != "")
	}
}