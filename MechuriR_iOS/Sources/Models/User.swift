//
//  User.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct User: Decodable {
    let userId, userName, userProfileImage, userCode: String
    
    enum CodingKeys: String, CodingKey {
        case userId, userName, userProfileImage, userCode
    }
}
