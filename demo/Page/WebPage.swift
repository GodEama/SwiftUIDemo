//
//  WebPage.swift
//  demo
//
//  Created by iOSer on 2019/11/4.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI
import WebKit


struct WebPage : UIViewRepresentable {
        
    func makeUIView(context: Context) -> WKWebView  {
         return WKWebView()
     }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let req = URLRequest(url: URL(string: "https://developer.apple.com/tutorials/swiftui/")!)
        uiView.load(req)
    }
}

#if DEBUG
struct WebPage_Previews : PreviewProvider {
    static var previews: some View {
        WebPage()
    }
}
#endif

