//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 13/11/2023.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructuss", labelImage: "info.circle")
        
}
