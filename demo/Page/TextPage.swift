//
//  TextPage.swift
//  demo
//
//  Created by iOSer on 2019/10/25.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct TextPage : View {

    var body: some View {
        Text("Hello SwiftUI")
    }
}

#if DEBUG
struct TextPage_Preview : PreviewProvider {
    static var previews: some View {
        TextPage()
    }
}
#endif

