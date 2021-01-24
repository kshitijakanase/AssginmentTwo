//
//  ProductModel.swift
//  AssginmentTwo
//
//  Created by Coditas on 24/01/21.
//

import Foundation
struct products : Codable {
    let productname : String?
    let price : Int?
    let vendorname : String?
    let vendoraddress : String?
    let productImg : String?
    let phoneNumber : Int?
//    let following_url : String?
//    let repos_url : String?
//    let type : String?
//    let score : Double?

    enum CodingKeys: String, CodingKey {

        case productname = "productname"
        case price = "price"
        case vendorname = "vendorname"
        case vendoraddress = "vendoraddress"
        case productImg = "productImg"
        case phoneNumber = "phoneNumber"
//        case following_url = "following_url"
//        case repos_url = "repos_url"
//        case type = "type"
//        case score = "score"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        productname = try values.decodeIfPresent(String.self, forKey: .productname)
        price = try values.decodeIfPresent(Int.self, forKey: .price)

        vendorname = try values.decodeIfPresent(String.self, forKey: .vendorname)
    
        vendoraddress = try values.decodeIfPresent(String.self, forKey: .vendoraddress)
        productImg = try values.decodeIfPresent(String.self, forKey: .productImg)
        phoneNumber = try values.decodeIfPresent(Int.self, forKey: .phoneNumber)
//        following_url = try values.decodeIfPresent(String.self, forKey: .following_url)
//
//        repos_url = try values.decodeIfPresent(String.self, forKey: .repos_url)
//
//        type = try values.decodeIfPresent(String.self, forKey: .type)
//
//        score = try values.decodeIfPresent(Double.self, forKey: .score)
    }

}
