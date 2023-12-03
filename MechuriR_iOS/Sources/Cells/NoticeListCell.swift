//
//  NoticeCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct NoticeListCell: View {
    var notice: Notice
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                
                Image(notice.noticeType)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                
                Text(notice.content)
                    .font(.cafe24Air15)
                    .foregroundStyle(Color.fontColor)
            }
            Divider()
                .frame(height: 2)
                .background(Color.deviderColor)
        }
    }
}
