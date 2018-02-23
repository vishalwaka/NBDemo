

import Foundation
struct ImagesMap : Codable {
	let thumbnail : String?
	let original : String?
	let large : String?
	let medium : String?

	enum CodingKeys: String, CodingKey {

		case thumbnail = "thumbnail"
		case original = "original"
		case large = "large"
		case medium = "medium"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
		original = try values.decodeIfPresent(String.self, forKey: .original)
		large = try values.decodeIfPresent(String.self, forKey: .large)
		medium = try values.decodeIfPresent(String.self, forKey: .medium)
	}

}
