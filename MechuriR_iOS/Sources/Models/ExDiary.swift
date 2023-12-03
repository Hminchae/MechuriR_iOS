//
//  ExDiary.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import Foundation

struct ExDiary: Decodable { // 내가 포함된 교환일기 조회, 교환일기 단일조회
    let exDiaryId: Int
    
    let createdDate: String
    let modifiedDate: String
    
    let startDate: String
    let finishDate: String
    
    let exDiaryName: String
    let createMemberName: String
    
    let img: String
    let backgroundColor: String
    
    enum CodingKeys: String, CodingKey {
        case exDiaryId, createdDate, modifiedDate, startDate, finishDate, exDiaryName, createMemberName, img, backgroundColor
    }
    
}

