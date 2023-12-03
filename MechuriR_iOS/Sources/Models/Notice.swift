//
//  Notice.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct Notice: Decodable {
    let noticeId, exDiaryId: Int
    let getUser, sendUser, noticeType, content, noticeURL, createdDate, modifiedDate, readCheck: String
    
    enum CodingKeys: String, CodingKey {
        case noticeId, exDiaryId, getUser, sendUser, noticeType, content, noticeURL, createdDate, modifiedDate, readCheck
    }
}
