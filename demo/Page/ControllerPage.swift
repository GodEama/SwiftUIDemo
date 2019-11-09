//
//  ControllerPage.swift
//  demo
//
//  Created by iOSer on 2019/11/4.
//  Copyright © 2019 iOSer. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class ControllerPage: UIViewController {
    
    override func viewDidLoad() {
        
        view.addSubview(button)
        
    }
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open SwiftUI View", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.orange, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(openContentView),
                         for: .touchUpInside)
        return button
    }()
    
    @objc func openContentView() {
        
        let hostVC = UIHostingController(rootView: ContentView())
        present(hostVC, animated: true, completion: nil)
    }
    
}
