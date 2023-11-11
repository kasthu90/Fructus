//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 11/11/2023.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
