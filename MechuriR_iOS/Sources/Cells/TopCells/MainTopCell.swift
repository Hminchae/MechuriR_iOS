//
//  TopCell.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/2/23.
//

//MARK: 메인 탑 셀

import SwiftUI

struct MainTopCell: View {
    var body: some View {
        
        HStack{
            
            Text("[username] 의 일기장")
                .font(.cafe2418)
                .foregroundStyle(Color.fontColor)
                .bold()
                .padding()
            
            Spacer()
            
        }
        .background(Rectangle()
            .fill(Color.btnColor)
            .frame(height: 45)
        )
        
    }
}

#Preview {
    MainTopCell()
}
