//
//  NavigationButtonPage.swift
//  demo
//
//  Created by iOSer on 2019/10/28.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct NavigationButtonPage : View {
    
    var body: some View {
        NavigationLink(destination: NavigationButtonPage()) {
                Text("NavigationButton").bold()
                    .foregroundColor(.orange)
                    .font(.largeTitle)
                }
        .navigationBarTitle(Text("NavigationButtonPage"))
    }
}

#if DEBUG
struct NavigationButtonPage_Previews : PreviewProvider {
    static var previews: some View {
        NavigationButtonPage()
    }
}
#endif

