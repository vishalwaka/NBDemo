

import Foundation
struct GetPropertyResponse : Codable {
	let status : Int?
	let statusCode : Int?
	let message : String?
	let otherParams : OtherParams?
	let data : [PropertyModel]?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case statusCode = "statusCode"
		case message = "message"
		case otherParams
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(Int.self, forKey: .status)
		statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		otherParams = try OtherParams(from: decoder)
		data = try values.decodeIfPresent([PropertyModel].self, forKey: .data)
	}

}
