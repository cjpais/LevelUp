//
//  SearchBarView.swift
//  cjpodcast
//
//  Created by CJ Pais on 5/3/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var query: String
    @State var action: () -> Void

    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
                .padding(.leading)
            TextField("Search/Create Activities", text: $query, onCommit: {
                self.action()
            })
                .font(Font.system(size: 18))
                .padding(.vertical, 7)
            Button(action: {
                self.query = ""
            })
            {
                Image(systemName: "xmark.circle.fill")
            }
            .foregroundColor(.gray)
            .padding(.trailing)
        }
        .background(Color(UIColor.systemGray6))
    }
    

}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(query: .constant("")) {
            
        }
    }
}
