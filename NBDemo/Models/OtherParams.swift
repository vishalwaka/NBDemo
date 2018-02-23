

import Foundation
struct OtherParams : Codable {
	let city : String?
	let topPropertyId : String?
	let total_count : Int?
	let count : Int?
	let region_id : String?
	let searchToken : String?

	enum CodingKeys: String, CodingKey {

		case city = "city"
		case topPropertyId = "topPropertyId"
		case total_count = "total_count"
		case count = "count"
		case region_id = "region_id"
		case searchToken = "searchToken"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		topPropertyId = try values.decodeIfPresent(String.self, forKey: .topPropertyId)
		total_count = try values.decodeIfPresent(Int.self, forKey: .total_count)
		count = try values.decodeIfPresent(Int.self, forKey: .count)
		region_id = try values.decodeIfPresent(String.self, forKey: .region_id)
		searchToken = try values.decodeIfPresent(String.self, forKey: .searchToken)
	}

}
