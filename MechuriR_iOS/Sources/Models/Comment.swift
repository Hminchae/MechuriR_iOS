//
//  Comment.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct Comment: Decodable {
    let commentId, diaryId: Int
    let createdDate, modifiedDate, writer, content: String
    
    enum CodingKeys: String, CodingKey {
        case commentId, diaryId, createdDate, modifiedDate, writer, content
    }
}
