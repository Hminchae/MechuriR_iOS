//
//  DiaryDetailMenuView.swift
//  MechuriRiOS
//
//  Created by 노주영 on 2023/11/22.
//

import SwiftUI

struct DiaryDetailMenuView: View {
    private let menuList: [String] = ["일기 쓰기", "멤버 목록", "일기장 관리", "일기장 삭제"]
    
    var body: some View {
        
        VStack {
            
            ForEach(0..<4, id: \.self) { i in
                
                NavigationLink {
                    
                    switch i {
                        
                        case 0:
                            MakeNewDiaryView()
                        case 1:
                            MakeNewDiaryView()
                        case 2:
                            MakeNewDiaryView()
                        case 3:
                            MakeNewDiaryView()
                        default:
                            MakeNewDiaryView()
                    }
                    
                } label: {
                    Text("\(menuList[i])")
                        .padding(10)
                        .font(.cafe2415)
                        .foregroundStyle(i == 3 ? .red : Color.fontColor)
                        .bold()
                        .frame(width: UIScreen.main.bounds.width/3)
                }
                .background( i == 4 ? RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.white)
                    .shadow(color: .white, radius: 0, x: 0, y: 0) : RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 1, x: 1, y: 1)
                )
                .padding(.top, i == 0 ? -8 : -7)
                
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    DiaryDetailMenuView()
}

