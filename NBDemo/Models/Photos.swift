
import Foundation
struct Photos : Codable {
	let imagesMap : ImagesMap?
	let displayPic : Bool?
	let name : String?
	let title : String?

	enum CodingKeys: String, CodingKey {

		case imagesMap
		case displayPic = "displayPic"
		case name = "name"
		case title = "title"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		imagesMap = try values.decodeIfPresent(ImagesMap.self, forKey: .imagesMap)
		displayPic = try values.decodeIfPresent(Bool.self, forKey: .displayPic)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		title = try values.decodeIfPresent(String.self, forKey: .title)
	}

}
