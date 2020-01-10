//
//  mainview.swift
//  finalapp
//
//  Created by User01 on 2020/1/10.
//  Copyright © 2020 User01. All rights reserved.
//

import SwiftUI

struct mainview: View {
    @State private var likeScale:CGFloat=1
    var body: some View {
        //Text("wefwef")
        TabView {
            cameraview().tabItem{
                Image(systemName:"camera.fill")
                Text("相機")
          }
            photoview()
                .tabItem{
                    Image(systemName:"photo.fill")
                    Text("相片")
            }
            paintview()
                .tabItem{
                    Image(systemName:"pencil.tip.crop.circle")
                    Text("繪圖板")
                        /*.contextMenu{
                        Button(action:{
                            self.likeScale=5
                        }){
                            Text("like!")
                            Image(systemName: "suit.heart.fill")
                        }
                    }*/
            }
        }
        .accentColor(.green)
        
    }
}

struct mainview_Previews: PreviewProvider {
    static var previews: some View {
        mainview()
    }
}
