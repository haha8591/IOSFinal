//
//  paintview.swift
//  finalapp
//
//  Created by User01 on 2020/1/10.
//  Copyright © 2020 User01. All rights reserved.
//

import SwiftUI
import Foundation


struct paintview: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<paintview>) -> UIViewController{
        UIStoryboard(name:"Main", bundle:nil).instantiateInitialViewController()!
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<paintview>) {
        
    }
}

