//
//  ContentView.swift
//  DrawFriends
//
//  Created by user229720 on 2.01.2023.
//

import SwiftUI

struct FriendView: View {
    
    @StateObject private var viewModel = FriendViewModel()
    @State private var infoPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.friendText)
                    .padding(.top, 100)
                    .padding(.bottom, 100)
                
                drawButton
                
                Spacer()
                
                infoButton
            }
            .sheet(isPresented: $infoPresented) {
                InfoView()
            }
            .navigationTitle("Draw a Friend")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var drawButton: some View {
        Button(viewModel.drawButtonTitle) {
            viewModel.drawModel()
        }
        .padding(25)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
        .tint(Color.white)
    }
    
    private var infoButton: some View {
        Button("INFO") {
            infoPresented.toggle()
        }
    }

}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
