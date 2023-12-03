//
//  DiaryDetailView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct DiaryDetailView: View {
    @StateObject var diaryStore: DiaryStore = DiaryStore(diary: diaryData)
    @State var isShowMenu: Bool = false
    
//    var data: ExDiary ?
//
    var body: some View {
        VStack {
            DiaryDetailTopCell(isShowMenu: $isShowMenu)
            
            ZStack {
                
                ScrollView {
                    ForEach(0..<diaryStore.diary.count, id: \.self) { i in
                        DiaryDetailCell(diary: diaryStore.diary[i])
                    }
                }
                HStack {
                    Spacer()
                    DiaryDetailMenuView()
                }
                .padding(.top, -10)
                .opacity(isShowMenu ? 1 : 0)
                
            }
        }
        .background(Color.bgColor)
    }
}

#Preview {
    DiaryDetailView()
}


