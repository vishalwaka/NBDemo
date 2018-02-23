

import Foundation
struct PropertyModel : Codable {
	let propertyAge : Int?
	let parking : String?
	let parkingDesc : String?
	let shortlistedByLoggedInUser : Bool?
	let lastUpdateDate : Int?
	let balconies : Int?
	let furnishingDesc : String?
	let cupBoard : Int?
	let negotiable : Bool?
	let type : String?
	let ownerId : String?
	let rent : Int?
	let availableFrom : Int?
	let photos : [Photos]?
	let propertySize : Int?
	let loanAvailable : Bool?
	let score : Score?
	let accomodationTypeDesc : String?
	let propertyCode : String?
	let id : String?
	let localityId : String?
	let adminEvent : String?
	let bathroom : Int?
	let propertyTitle : String?
	let longitude : Double?
	let powerBackup : String?
	let dateOnly : Int?
	let inactiveReason : String?
	let locality : String?
	let active : Bool?
	let weight : Double?
	let creationDate : Int?
	let swimmingPool : Bool?
	let accomodationType : String?
	let relevance : Double?
	let waterSupply : String?
	let accurateLocation : Bool?
	let pinCode : Int?
	let totalFloor : Int?
	let lift : Bool?
	let deposit : Int?
	let gym : Bool?
	let detailUrl : String?
	let activationDate : Int?
	let facingDesc : String?
	let furnishing : String?
	let amenities : String?
	let photoAvailable : Bool?
	let typeDesc : String?
	let city : String?
	let shortUrl : String?
	let latitude : Double?
	let description : String?
	let facing : String?
	let title : String?
	let nbLocality : String?
	let leaseType : String?
	let society : String?
	let ownerName : String?
	let street : String?
	let managed : String?
	let propertyType : String?
	let secondaryTitle : String?
	let floor : Int?
	let lastActivationDate : Int?
	let forLease : Bool?
	let inactiveReasonDesc : String?
	let mass_value : Double?
	let sponsored : Bool?
	let buildingId : String?
	let tenantTypeDesc : String?
	let amenitiesMap : AmenitiesMap?
	let location : String?
	let sharedAccomodation : Bool?
	let buildingType : String?

	enum CodingKeys: String, CodingKey {

		case propertyAge = "propertyAge"
		case parking = "parking"
		case parkingDesc = "parkingDesc"
		case shortlistedByLoggedInUser = "shortlistedByLoggedInUser"
		case lastUpdateDate = "lastUpdateDate"
		case balconies = "balconies"
		case furnishingDesc = "furnishingDesc"
		case cupBoard = "cupBoard"
		case negotiable = "negotiable"
		case type = "type"
		case ownerId = "ownerId"
		case rent = "rent"
		case availableFrom = "availableFrom"
		case photos = "photos"
		case propertySize = "propertySize"
		case loanAvailable = "loanAvailable"
		case score
		case accomodationTypeDesc = "accomodationTypeDesc"
		case propertyCode = "propertyCode"
		case id = "id"
		case localityId = "localityId"
		case adminEvent = "adminEvent"
		case bathroom = "bathroom"
		case propertyTitle = "propertyTitle"
		case longitude = "longitude"
		case powerBackup = "powerBackup"
		case dateOnly = "dateOnly"
		case inactiveReason = "inactiveReason"
		case locality = "locality"
		case active = "active"
		case weight = "weight"
		case creationDate = "creationDate"
		case swimmingPool = "swimmingPool"
		case accomodationType = "accomodationType"
		case relevance = "relevance"
		case waterSupply = "waterSupply"
		case accurateLocation = "accurateLocation"
		case pinCode = "pinCode"
		case totalFloor = "totalFloor"
		case lift = "lift"
		case deposit = "deposit"
		case gym = "gym"
		case detailUrl = "detailUrl"
		case activationDate = "activationDate"
		case facingDesc = "facingDesc"
		case furnishing = "furnishing"
		case amenities = "amenities"
		case photoAvailable = "photoAvailable"
		case typeDesc = "typeDesc"
		case city = "city"
		case shortUrl = "shortUrl"
		case latitude = "latitude"
		case description = "description"
		case facing = "facing"
		case title = "title"
		case nbLocality = "nbLocality"
		case leaseType = "leaseType"
		case society = "society"
		case ownerName = "ownerName"
		case street = "street"
		case managed = "managed"
		case propertyType = "propertyType"
		case secondaryTitle = "secondaryTitle"
		case floor = "floor"
		case lastActivationDate = "lastActivationDate"
		case forLease = "forLease"
		case inactiveReasonDesc = "inactiveReasonDesc"
		case mass_value = "mass_value"
		case sponsored = "sponsored"
		case buildingId = "buildingId"
		case tenantTypeDesc = "tenantTypeDesc"
		case amenitiesMap
		case location = "location"
		case sharedAccomodation = "sharedAccomodation"
		case buildingType = "buildingType"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		propertyAge = try values.decodeIfPresent(Int.self, forKey: .propertyAge)
		parking = try values.decodeIfPresent(String.self, forKey: .parking)
		parkingDesc = try values.decodeIfPresent(String.self, forKey: .parkingDesc)
		shortlistedByLoggedInUser = try values.decodeIfPresent(Bool.self, forKey: .shortlistedByLoggedInUser)
		lastUpdateDate = try values.decodeIfPresent(Int.self, forKey: .lastUpdateDate)
		balconies = try values.decodeIfPresent(Int.self, forKey: .balconies)
		furnishingDesc = try values.decodeIfPresent(String.self, forKey: .furnishingDesc)
		cupBoard = try values.decodeIfPresent(Int.self, forKey: .cupBoard)
		negotiable = try values.decodeIfPresent(Bool.self, forKey: .negotiable)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		ownerId = try values.decodeIfPresent(String.self, forKey: .ownerId)
		rent = try values.decodeIfPresent(Int.self, forKey: .rent)
		availableFrom = try values.decodeIfPresent(Int.self, forKey: .availableFrom)
		photos = try values.decodeIfPresent([Photos].self, forKey: .photos)
		propertySize = try values.decodeIfPresent(Int.self, forKey: .propertySize)
		loanAvailable = try values.decodeIfPresent(Bool.self, forKey: .loanAvailable)
		score = try Score(from: decoder)
		accomodationTypeDesc = try values.decodeIfPresent(String.self, forKey: .accomodationTypeDesc)
		propertyCode = try values.decodeIfPresent(String.self, forKey: .propertyCode)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		localityId = try values.decodeIfPresent(String.self, forKey: .localityId)
		adminEvent = try values.decodeIfPresent(String.self, forKey: .adminEvent)
		bathroom = try values.decodeIfPresent(Int.self, forKey: .bathroom)
		propertyTitle = try values.decodeIfPresent(String.self, forKey: .propertyTitle)
		longitude = try values.decodeIfPresent(Double.self, forKey: .longitude)
		powerBackup = try values.decodeIfPresent(String.self, forKey: .powerBackup)
		dateOnly = try values.decodeIfPresent(Int.self, forKey: .dateOnly)
		inactiveReason = try values.decodeIfPresent(String.self, forKey: .inactiveReason)
		locality = try values.decodeIfPresent(String.self, forKey: .locality)
		active = try values.decodeIfPresent(Bool.self, forKey: .active)
		weight = try values.decodeIfPresent(Double.self, forKey: .weight)
		creationDate = try values.decodeIfPresent(Int.self, forKey: .creationDate)
		swimmingPool = try values.decodeIfPresent(Bool.self, forKey: .swimmingPool)
		accomodationType = try values.decodeIfPresent(String.self, forKey: .accomodationType)
		relevance = try values.decodeIfPresent(Double.self, forKey: .relevance)
		waterSupply = try values.decodeIfPresent(String.self, forKey: .waterSupply)
		accurateLocation = try values.decodeIfPresent(Bool.self, forKey: .accurateLocation)
		pinCode = try values.decodeIfPresent(Int.self, forKey: .pinCode)
		totalFloor = try values.decodeIfPresent(Int.self, forKey: .totalFloor)
		lift = try values.decodeIfPresent(Bool.self, forKey: .lift)
		deposit = try values.decodeIfPresent(Int.self, forKey: .deposit)
		gym = try values.decodeIfPresent(Bool.self, forKey: .gym)
		detailUrl = try values.decodeIfPresent(String.self, forKey: .detailUrl)
		activationDate = try values.decodeIfPresent(Int.self, forKey: .activationDate)
		facingDesc = try values.decodeIfPresent(String.self, forKey: .facingDesc)
		furnishing = try values.decodeIfPresent(String.self, forKey: .furnishing)
		amenities = try values.decodeIfPresent(String.self, forKey: .amenities)
		photoAvailable = try values.decodeIfPresent(Bool.self, forKey: .photoAvailable)
		typeDesc = try values.decodeIfPresent(String.self, forKey: .typeDesc)
		city = try values.decodeIfPresent(String.self, forKey: .city)
		shortUrl = try values.decodeIfPresent(String.self, forKey: .shortUrl)
		latitude = try values.decodeIfPresent(Double.self, forKey: .latitude)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		facing = try values.decodeIfPresent(String.self, forKey: .facing)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		nbLocality = try values.decodeIfPresent(String.self, forKey: .nbLocality)
		leaseType = try values.decodeIfPresent(String.self, forKey: .leaseType)
		society = try values.decodeIfPresent(String.self, forKey: .society)
		ownerName = try values.decodeIfPresent(String.self, forKey: .ownerName)
		street = try values.decodeIfPresent(String.self, forKey: .street)
		managed = try values.decodeIfPresent(String.self, forKey: .managed)
		propertyType = try values.decodeIfPresent(String.self, forKey: .propertyType)
		secondaryTitle = try values.decodeIfPresent(String.self, forKey: .secondaryTitle)
		floor = try values.decodeIfPresent(Int.self, forKey: .floor)
		lastActivationDate = try values.decodeIfPresent(Int.self, forKey: .lastActivationDate)
		forLease = try values.decodeIfPresent(Bool.self, forKey: .forLease)
		inactiveReasonDesc = try values.decodeIfPresent(String.self, forKey: .inactiveReasonDesc)
		mass_value = try values.decodeIfPresent(Double.self, forKey: .mass_value)
		sponsored = try values.decodeIfPresent(Bool.self, forKey: .sponsored)
		buildingId = try values.decodeIfPresent(String.self, forKey: .buildingId)
		tenantTypeDesc = try values.decodeIfPresent(String.self, forKey: .tenantTypeDesc)
		amenitiesMap = try AmenitiesMap(from: decoder)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		sharedAccomodation = try values.decodeIfPresent(Bool.self, forKey: .sharedAccomodation)
		buildingType = try values.decodeIfPresent(String.self, forKey: .buildingType)
	}

}
