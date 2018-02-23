

import Foundation

struct AmenitiesMap : Codable {
	let iNTERCOM : Bool?
	let aC : Bool?
	let rWH : Bool?
	let hK : Bool?
	let iNTERNET : Bool?
	let lIFT : Bool?
	let cLUB : Bool?
	let gP : Bool?
	let fS : Bool?
	let sTP : Bool?
	let pARK : Bool?
	let sC : Bool?
	let pB : Bool?
	let cPA : Bool?
	let sECURITY : Bool?
	let pOOL : Bool?
	let gYM : Bool?
	let vP : Bool?
	let sERVANT : Bool?

	enum CodingKeys: String, CodingKey {

		case iNTERCOM = "INTERCOM"
		case aC = "AC"
		case rWH = "RWH"
		case hK = "HK"
		case iNTERNET = "INTERNET"
		case lIFT = "LIFT"
		case cLUB = "CLUB"
		case gP = "GP"
		case fS = "FS"
		case sTP = "STP"
		case pARK = "PARK"
		case sC = "SC"
		case pB = "PB"
		case cPA = "CPA"
		case sECURITY = "SECURITY"
		case pOOL = "POOL"
		case gYM = "GYM"
		case vP = "VP"
		case sERVANT = "SERVANT"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		iNTERCOM = try values.decodeIfPresent(Bool.self, forKey: .iNTERCOM)
		aC = try values.decodeIfPresent(Bool.self, forKey: .aC)
		rWH = try values.decodeIfPresent(Bool.self, forKey: .rWH)
		hK = try values.decodeIfPresent(Bool.self, forKey: .hK)
		iNTERNET = try values.decodeIfPresent(Bool.self, forKey: .iNTERNET)
		lIFT = try values.decodeIfPresent(Bool.self, forKey: .lIFT)
		cLUB = try values.decodeIfPresent(Bool.self, forKey: .cLUB)
		gP = try values.decodeIfPresent(Bool.self, forKey: .gP)
		fS = try values.decodeIfPresent(Bool.self, forKey: .fS)
		sTP = try values.decodeIfPresent(Bool.self, forKey: .sTP)
		pARK = try values.decodeIfPresent(Bool.self, forKey: .pARK)
		sC = try values.decodeIfPresent(Bool.self, forKey: .sC)
		pB = try values.decodeIfPresent(Bool.self, forKey: .pB)
		cPA = try values.decodeIfPresent(Bool.self, forKey: .cPA)
		sECURITY = try values.decodeIfPresent(Bool.self, forKey: .sECURITY)
		pOOL = try values.decodeIfPresent(Bool.self, forKey: .pOOL)
		gYM = try values.decodeIfPresent(Bool.self, forKey: .gYM)
		vP = try values.decodeIfPresent(Bool.self, forKey: .vP)
		sERVANT = try values.decodeIfPresent(Bool.self, forKey: .sERVANT)
	}

}
