//
//  FriendViewModel.swift
//  DrawFriends
//
//  Created by user229720 on 2.01.2023.
//

import SwiftUI

class FriendViewModel: ObservableObject {
    
    private let drawFriendsHelper = DrawFriendsHelper()
    @Published var friendText: String = "Press Draw button to start!"
    @Published var drawButtonTitle = "DRAW"
    
    init() {
        drawFriendsHelper.delegate = self
    }
    
    func drawModel() {
        let friend = drawFriendsHelper.drawAFriend()
        
        if let friend {
            friendText = friend
        }
    }
}

extension FriendViewModel: DrawFriendsDelegate {
    func getReadyForShuffle() {
        drawButtonTitle = "CLEAR"
    }
    
    func resetUI() {
        drawButtonTitle = "DRAW"
        friendText = "Press Draw button to start again!"
    }
}
