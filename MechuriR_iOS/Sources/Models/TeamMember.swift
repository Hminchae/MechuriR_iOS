//
//  TeamMember.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct TeamMember: Decodable {
    
    let teamMemberId, exDiaryId: Int
    let memberId: Int?
    let memberName, createdDate, modifiedDate, status, profile: String
    
    enum CodingKeys: String, CodingKey {
        case teamMemberId, exDiaryId, memberId, memberName, createdDate, modifiedDate, status, profile //profile = 임시
    }
}
