//
//  MyWebview.swift
//  SwiftUI_Webview_Tutorial
//
//  Created by 신미지 on 2021/09/29.
//

import SwiftUI
import WebKit

// UIKit의 UIView를 사용할 수 있도록 한다.
// 만약 UIViewController를 상속받으려면 UIViewControllerRepresentable 하면 된다.
struct MyWebview: UIViewRepresentable {
  
  var urlToLoad: String
  
  // UIView 만들기
  func makeUIView(context: Context) -> WKWebView {
    guard let url = URL(string: self.urlToLoad) else { return WKWebView() }
    
    // Webview 인스턴스 생성
    let webview = WKWebView()
    
    // Webview를 반환한다.
    webview.load(URLRequest(url: url))
    return webview
  }
  
  // 업데이트 UIView
  func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
    
  }
}

struct MyWebview_Previews: PreviewProvider {
  static var previews: some View {
    MyWebview(urlToLoad: "https://www.naver.com")
  }
}
