//
//  PageRow.swift
//  demo
//
//  Created by iOSer on 2019/10/25.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct PageRow : View {
    private let title: String
    private let subtitle: String?
    
    init(title:String,subtitle: String? = nil) {
        self.title = title;
        self.subtitle = subtitle;
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subtitle != nil {
                Text(subtitle!).font(.subheadline).opacity(0.5).lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct PageRow_Preview : PreviewProvider {
    static var previews: some View {
        PageRow(title: "123",subtitle: "qwer")
    }
}
#endif

