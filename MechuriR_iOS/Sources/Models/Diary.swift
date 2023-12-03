//
//  Diary.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct Diary: Decodable {
    let diaryId, exDiaryId, userId: Int
    let createdDate, modifiedDate, writing, img: String
    
    enum CodingKeys: String, CodingKey {
        case diaryId, exDiaryId, userId, createdDate, modifiedDate, writing, img
    }
}
