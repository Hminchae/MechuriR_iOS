//
//  DiaryDetailCell.swift
//  MechuriRiOS
//
//  Created by 노주영 on 2023/11/22.
//

import SwiftUI

struct DiaryDetailCell: View {
    var diary: Diary
    
    var body: some View {
        VStack(alignment: .leading) {
        
            HStack(alignment: .bottom) {
                Text("이름 : \(diary.userId)번 사람")             //글쓴이
                    .font(.cafe2415)
                    .foregroundStyle(Color.fontColor)
                    .bold()
                
                Spacer()
                
                Button {
                    print("펜 버튼 엑션 넣기") //TODO: 스탬프 기능 넣기
                } label: {
                    Image("stampIcon")
                        .resizable()
                        .frame(width: 25,height: 25)
                }
                
                Button {
                    print("대화 버튼 엑션 넣기") //TODO: 댓글 기능 넣기
                } label: {
                    Image("commentIcon")
                        .resizable()
                        .frame(width: 25,height: 25)
                }
            }
            
            //일기장 이미지
            VStack {
                HStack {
                    let componetDate = diary.createdDate.prefix(10).components(separatedBy: "-")
                    
                    Text("\(componetDate[0])년 \(componetDate[1])월 \(componetDate[2])일")       //작성일
                        .font(.cafe2415)
                        .foregroundStyle(Color.fontColor)
                        .bold()
                        .padding(.top, 10)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                Image(diary.img)                               //일기장 사진
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .border(.black, width: 1)
            }
            .border(.black, width: 1)
            
            Text(diary.writing)     //일기장 내용
                .padding(.vertical, 10)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
                .font(.custom("Cafe24SsurroundAir", size: 12))
                .frame(width: UIScreen.main.bounds.width - 40, alignment: .leading)
                .border(.black, width: 1)
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
        )
        
        Rectangle()
            .frame(width: UIScreen.main.bounds.width, height: 10)
            .foregroundStyle(Color.bgColor)
    }
}

