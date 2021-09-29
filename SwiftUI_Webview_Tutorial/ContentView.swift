//
//  ContentView.swift
//  SwiftUI_Webview_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
        HStack {
          NavigationLink(destination: MyWebview(urlToLoad: "https://www.naver.com").edgesIgnoringSafeArea(.all)
          ) {
            Text("네이버")
              .font(.system(size: 20))
              .fontWeight(.bold)
              .padding(10)
              .foregroundColor(Color.white)
              .background(Color.green)
              .cornerRadius(15)
          }
          
          NavigationLink(destination: MyWebview(urlToLoad: "https://www.daum.net").edgesIgnoringSafeArea(.all)
          ) {
            Text("다음")
              .font(.system(size: 20))
              .fontWeight(.bold)
              .padding(10)
              .foregroundColor(Color.white)
              .background(Color.blue)
              .cornerRadius(15)
          }
          
          NavigationLink(destination: MyWebview(urlToLoad: "https://www.google.com").edgesIgnoringSafeArea(.all)
          ) {
            Text("구글")
              .font(.system(size: 20))
              .fontWeight(.bold)
              .padding(10)
              .foregroundColor(Color.white)
              .background(Color.orange)
              .cornerRadius(15)
          }
          
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
