//
//  ButtonPage.swift
//  demo
//
//  Created by iOSer on 2019/10/28.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct ButtonPage : View {
    
    var body: some View {
        Button(action: {
            print("Clicked")
        }){
            Text("This is a Button").bold().font(.system(size: 40, design: .rounded)).shadow(radius: 2)
        }.navigationBarTitle("Button")
    }
}

#if DEBUG
struct ButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        ButtonPage()
    }
}
#endif

