//
//  NoticeView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct NoticeView: View {
    
    @StateObject var noticeStore: NoticeStore = NoticeStore(notice: noticeData)
    
    var body: some View {
        VStack {
            
            NoticeTopCell()
            
            List {
                ForEach (0..<noticeStore.notice.count, id: \.self) { i in
                    
                    NoticeListCell(notice: noticeStore.notice[i])
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    NoticeView()
}
