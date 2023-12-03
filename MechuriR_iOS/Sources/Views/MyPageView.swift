//
//  MyPageView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

//MARK: 마이페이지 뷰

import SwiftUI

struct MyPageView: View {
    @StateObject var userStore: UserStore = UserStore(user: userData) //TODO: 데이터 바인딩 필요
    
    var profileImage: String = "sampleProfileImage"
    @State var userName: String = "[username]"
    var userCode: String = "아모르파티"
    
    var body: some View {
        VStack {
            
            MyPageTopCell()
            
            Image(profileImage) //TODO: 프로필 이미지 수정
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.btnColor, lineWidth: 5))
                .frame(width: 250, height: 250)
            
            HStack {
                
                Spacer()
                
                TextField(userName, text: $userName)
                    .frame(width: 120)
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor)
                    .bold()
                
                Button {
                    //TODO: 텍스트필드 수정버튼 구현
                } label: {
                     Image(systemName: "pencil")
                        .foregroundStyle(Color.emptyFontColor)
                        .fontWeight(.heavy)
                }
                
                Spacer()
                
            }
            .padding(5)
            
            Divider()
                .frame(height: 4)
                .background(Color.deviderColor)
            
            HStack {
                
                Text("친구 추가 코드")
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor)
                
                Spacer()
                
                Text(userCode)
                    .font(.cafe2418)
                    .foregroundStyle(Color.fontColor)
                
                Button {
                    
                } label: {
                    Image(systemName: "square.on.square")
                        .foregroundStyle(Color.emptyFontColor)
                        .fontWeight(.heavy)
                }
            }
            .padding(.horizontal, 30)
        }
        .background(Color.clear)
        Spacer()
    }
}

#Preview {
    MyPageView()
}
