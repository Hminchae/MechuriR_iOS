//
//  MainView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct MainView: View {
    @State private var showMakeNewDiaryGroupView: Bool = false
    @StateObject var exDiaryStore: ExDiaryStore = ExDiaryStore(exDiary: exDiaryData)
    private var columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            MainTopCell()
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(exDiaryStore.exDiary, id: \.self.exDiaryId) { exDiary in
                        
                        NavigationLink {
                            DiaryDetailView() //TODO: 값전달 필요
                        } label: {
                            MainViewCell(exDiary: exDiary)
                                .foregroundStyle(.black)
                        }
                    }
                }
            }
            .padding(5)
            
            ZStack {
                Button {
                    showMakeNewDiaryGroupView.toggle()
                }label: {
                    Image("floatBtnImg")
                        .resizable()
                        .frame(width: 60, height: 60)
                }
                .fullScreenCover(isPresented: $showMakeNewDiaryGroupView) {
                    MakeNewDiaryGroupView(isPresented: $showMakeNewDiaryGroupView)
                }
            }
        }
        .background(Color.bgColor)
    }
}

#Preview {
    MainView()
}
