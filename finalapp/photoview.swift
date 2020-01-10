//
//  photoview.swift
//  finalapp
//
//  Created by User01 on 2020/1/10.
//  Copyright © 2020 User01. All rights reserved.
//

import SwiftUI
import Foundation

struct photoview: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<photoview>) -> UIViewController{
        UIStoryboard(name:"photowall", bundle:nil).instantiateInitialViewController()!
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<photoview>) {
        
    }
}

