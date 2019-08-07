//
//  ChatUser.swift
//  MessageKitProject1
//
//  Created by Suzuki Mariko on 05/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//

import MessageKit

class ChatUser: SenderType {
    
    // ユーザーID
    var senderId: String
    
    // 表示名
    var displayName: String
    
    
    // コンストラクタ(クラスをインスタント化するときに呼ばれるもの)
    // ChatUserを作るときは必ずユーザーIDと表示名を設定するようにする
    init(senderId: String, displayName: String) {
        self.senderId = senderId
        self.displayName = displayName
    }
}
