//
//  Message.swift
//  MessageKitProject1
//
//  Created by Suzuki Mariko on 05/08/2019.
//  Copyright © 2019 Mariko. All rights reserved.
//

import MessageKit

// １件のメッセージのデータを持つクラス
class Message: MessageType {
    
    // 送信者
    let user: ChatUser
    
    // メッセージの本文
    let text: String
    
    // メッセージID(1件のメッセージを特定するため)
    let messageId: String
    
    //送信日付
    let sentDate: Date
    
    init(user: ChatUser, text: String, messageId: String, sentDate: Date) {
        self.user = user
        self.text = text
        self.messageId = messageId
        self.sentDate = sentDate
    }
    
    // メッセージの送信者を返す
    var sender: SenderType {
        return Sender(id: user.senderId, displayName: user.displayName)
    }
    
    // メッセージのタイプを返す
    var kind: MessageKind {
        return .text(text)
    }
}
