//
//  AlertPage.swift
//  demo
//
//  Created by iOSer on 2019/10/29.
//  Copyright © 2019 iOSer. All rights reserved.
//

import SwiftUI

struct AlertPage : View {
    
    @State var showAlert = false
    
    var body: some View {
        Button(action: {
            self.showAlert = true
            print("Tap")
        }) {
            Text("点击弹出Alert")
                .font(.system(size: 40,
                              design: .rounded))
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("标题"),
                  message: Text("提示信息"),
                  primaryButton: .destructive(Text("确认")) { print("OOOOOOOOOOOOOK") },
                  secondaryButton: .cancel())
        }).navigationBarTitle(Text("Alert"))
        
    }
}

#if DEBUG
struct AlertPage_Previews : PreviewProvider {
    static var previews: some View {
        AlertPage()
    }
}
#endif
