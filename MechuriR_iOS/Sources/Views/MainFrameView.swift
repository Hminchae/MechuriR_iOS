//
//  MainView.swift
//  MechuriR_iOS
//
//  Created by 황민채 on 12/3/23.
//

import SwiftUI

struct MainFrameView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("dlj")
            }
        }
        .navigationTitle("d;kf;a")
        .toolbar {
            Button {
                
            }label: {
                Image("line.horizontal.3")
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.fontColor)
            }
        }
    }
}
//오른쪽 네비 버튼

struct CenterMechuriView: View {
    var body: some View {
        Image("mechuri1")
    }
}
struct TrailingNaviView: View {
  var body: some View {
    Image(systemName: "line.horizontal.3")
    .resizable()
    .scaledToFit()
    .padding(.top, 15)
    .padding(.trailing, 20)
    .padding(.bottom, 10)
    .frame(width: 50, height: 50, alignment: .center)
  }
}

#Preview {
    MainFrameView()
}
