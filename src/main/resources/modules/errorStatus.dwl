fun decodeStatus(code) = code match {
	case 400 -> "BAD_REQUEST"
	case 401 -> "UNAUTHORIZED"
	case 403 -> "FORBIDDEN"
	case 404 -> "RESOURCE_NOT_FOUND"
	case 405 -> "METHOD_NOT_ALLOWED"
	case 406 -> "NOT_ACCEPTABLE"
	case 408 -> "TIMEOUT"
	case 409 -> "CONFLICT"
	case 415 -> "UNSUPPORTED_MEDIA_TYPE"
	case 422 -> "UNPROCESSABLE ENTITY"
	case 429 -> "TOO_MANY_REQUESTS"
	case 501 -> "NOT_IMPLEMENTED"
	case 502 -> "BAD_GATEWAY"
	else -> "INTERNAL_SERVER_ERROR"
}

fun setStatusCode(code) = code match{
	case "BAD_REQUEST" -> 400
	case "UNAUTHORIZED" -> 401
	case "FORBIDDEN" -> 403
	case "NOT_FOUND" -> 404
	case "METHOD_NOT_ALLOWED" -> 405
	case "NOT_ACCEPTABLE" -> 406
	case "TIMEOUT" -> 408
	case "CONFLICT" -> 409
	case "UNSUPPORTED_MEDIA_TYPE" -> 415
	case "UNPROCESSABLE ENTITY" -> 422
	case "TOO_MANY_REQUESTS" -> 429
	case "NOT_IMPLEMENTED" -> 501
	case "BAD_GATEWAY" -> 502
	else -> 500
}