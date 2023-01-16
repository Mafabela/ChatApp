//
//  Message.swift
//  ChatApp2
//
//  Created by Consultant on 1/15/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

