//
//  ActivityView.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import SwiftUI

struct SingleActivityView: View {
    
    var activity: Activity = Activity()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
                
                Button(action: {
                    
                }) {
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 2)
                            .frame(width: 71, height: 71)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 63, height: 63)
                            .foregroundColor(.red)
                    }.padding(.vertical)
                }
                .padding(.bottom, geometry.safeAreaInsets.bottom)
                .frame(width: geometry.size.width)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(11)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        SingleActivityView()
    }
}
