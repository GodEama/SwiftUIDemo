//
//  ViewControllerPage.swift
//  demo
//
//  Created by iOSer on 2019/11/4.
//  Copyright © 2019 iOSer. All rights reserved.
//


import Foundation
import SwiftUI
import UIKit

struct ViewControllerPage<T: UIViewController> : UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerPage>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<ViewControllerPage>) {
        debugPrint("\(#function)：\(type(of: T.self))")
    }
    
}

#if DEBUG
struct ViewControllerPage_Previews : PreviewProvider {
    static var previews: some View {
        ViewControllerPage()
    }
}
#endif

