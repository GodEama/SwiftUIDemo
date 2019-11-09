//
//  WebImagePage.swift
//  demo
//
//  Created by iOSer on 2019/10/25.
//  Copyright © 2019 iOSer. All rights reserved.
//


import SwiftUI

struct WebImagePage : View {
    @State private var image: UIImage? = nil
    let placeholderImage = UIImage(named: "apple")!
    var body: some View {
        Image(uiImage: self.image ?? placeholderImage)
                .resizable()
                .onAppear(perform: downloadWebImage)
                .frame(width: 80,
                       height: 80,
                       alignment: .center)
                .onTapGesture {
                    print("Tap ")
            }.navigationBarTitle(Text("WebImage"))
        }
        
        func downloadWebImage() {
            
            guard let url = URL(string: "https://picsum.photos/50/50?i=30") else {
                print("Invalid URL.")
                return
            }
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data, let image = UIImage(data: data) {
                    self.image = image
                }else {
                    print("error: \(String(describing: error))")
                }
            }.resume()
        }
}

#if DEBUG
struct WebImagePage_Previews : PreviewProvider {
    static var previews: some View {
        WebImagePage()
    }
}
#endif

