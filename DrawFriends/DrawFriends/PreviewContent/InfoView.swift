//
//  InfoView.swift
//  DrawFriends
//
//  Created by user229720 on 2.01.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Text("Info \n \nThis app randomly selects the names of my friends from a list of 10. They all live in different cities/countries from me. I called the first 6 of them at the New Year's Eve. \n \nThis app has a similar structure with the CardGame app.")
            .padding(20)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
