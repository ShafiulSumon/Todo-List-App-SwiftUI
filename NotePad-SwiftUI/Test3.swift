//
//  Test3.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/29/23.
//

import SwiftUI

struct Test3: View {
    var body: some View {
//        ZStack(alignment: .bottom) {
//            Image(systemName: "folder")
//                .font(.system(size: 55, weight: .thin))
//            Text("❤️")
//        }
        
//        Image(systemName: "folder")
//            .font(.system(size: 55, weight: .thin))
//            .overlay(Text("❤️"), alignment: .bottom)
        
//        ZStack {
//            Rectangle()
//                .frame(width: 300, height: 300, alignment: .center)
//                .foregroundColor(.red)
//                .zIndex(0)
//
//            Rectangle()
//                .frame(width: 250, height: 250, alignment: .center)
//                .foregroundColor(.blue)
//                .zIndex(-1)
//
//            Rectangle()
//                .frame(width: 240, height: 240, alignment: .center)
//                .foregroundColor(.yellow)
//        }
        
//        ZStack(alignment: .bottom) {
//            Image(systemName: "folder")
//                .font(.system(size: 55, weight: .thin))
//            Text("❤️").font(.system(size: 55, weight: .thin))
//        }
//        .clipped()
        
//        Image(systemName: "folder")
//            .font(.system(size: 55, weight: .thin))
//            .overlay(Text("❤️").font(.system(size: 55, weight: .thin)), alignment: .bottom)
//            .clipped()
        
        HStack {
            Text("Hello")
                .font(.title)
            
            Text("World")
                .font(.title)
                .offset(x: -150)
        }
    }
}

struct Test3_Previews: PreviewProvider {
    static var previews: some View {
        Test3()
    }
}
