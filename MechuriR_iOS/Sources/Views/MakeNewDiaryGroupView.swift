//
//  MakeNewDiaryGroupView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct MakeNewDiaryGroupView: View {
    @State private var diaryName: String = ""
    @State private var selectedDate = Date()
    @State private var selectedColor: Color = Color.diaryBgColor
    @State private var diaryDescriptionIcon: String = ""
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            
            MakeNewDiaryGroupTopCell()
                
            VStack {
                TextField("일기장 이름을 입력하세요.", text: $diaryName)
                    .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
                
                DatePicker("날짜", selection: $selectedDate)
                    .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
                
                HStack {
                    Image("placeIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                    Text("장소") //TODO: 장소 구현 아직;;
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
                
                HStack {
                    
                    Image("descriptionIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                    
                    TextField("설명", text: $diaryDescriptionIcon)
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
                
                HStack {
                    
                    Image("colorIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 21)
                    
                    ColorPicker("색상", selection: $selectedColor)

                    
                }
                .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
                
                HStack {
                    
                    Image("membersIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25)
                    
                    Text("멤버")
                    
                    Spacer()
                    
                    Button {
                        //TODO: 친구목록 뷰 불러오기
                    } label: {
                        Image(systemName: "plus")
                    }
                    .foregroundStyle(Color.fontColor)
                    
                }
                .padding(.horizontal, 20)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.deviderColor)
            }
            Spacer()
                
        }
        .font(.cafe2415)
        .foregroundStyle(Color.emptyFontColor)//TODO: 배경색 해결
    }
}


