

import Foundation
struct Score : Codable {
	let lastUpdatedDate : Int?
	let transit : Double?
	let lifestyle : Double?

	enum CodingKeys: String, CodingKey {

		case lastUpdatedDate = "lastUpdatedDate"
		case transit = "transit"
		case lifestyle = "lifestyle"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		lastUpdatedDate = try values.decodeIfPresent(Int.self, forKey: .lastUpdatedDate)
		transit = try values.decodeIfPresent(Double.self, forKey: .transit)
		lifestyle = try values.decodeIfPresent(Double.self, forKey: .lifestyle)
	}

}
