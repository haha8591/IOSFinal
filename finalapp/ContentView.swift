//
//  ContentView.swift
//  finalapp
//
//  Created by User01 on 2020/1/10.
//  Copyright © 2020 User01. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var likeScale:CGFloat=1
    var body: some View {
        Text("Hello World").contextMenu{
            Button(action:{
                self.likeScale=5
            }){
                Text("like!")
                Image(systemName: "suit.heart.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
