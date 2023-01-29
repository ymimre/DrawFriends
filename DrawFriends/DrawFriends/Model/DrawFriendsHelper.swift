
class DrawFriendsHelper {
        
    private var friendList: [String] = []
    
    weak var delegate: DrawFriendsDelegate?
    init() {
        initializeAndShuffleFriendList()
    }
    
    private func initializeAndShuffleFriendList() {
        friendList.removeAll(keepingCapacity: true)
        
        friendList.append("Sidar")
        friendList.append("Cem")
        friendList.append("Eray")
        friendList.append("Kaan")
        friendList.append("Melike")
        friendList.append("Rıza")
        friendList.append("İrem")
        friendList.append("Enes")
        friendList.append("Metehan")
        friendList.append("Alperen")
        
        friendList.shuffle()
    }
    
    func drawAFriend() -> String? {
        if friendList.count == 7 {
            initializeAndShuffleFriendList()
            delegate?.resetUI()
            return nil
        } else if friendList.count == 8 {
            delegate?.getReadyForShuffle()
        }
        return friendList.removeFirst()
    }
}
