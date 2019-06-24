//
//  Project.swift
//  iOSToDoApp
//
//  Created by Karl Denby on 21/06/2019.
//  Copyright © 2019 Karl Denby. All rights reserved.
//

import Foundation
import RealmSwift

class Project: Object {
    @objc dynamic var projectId: String = UUID().uuidString
    @objc dynamic var owner: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var timestamp: Date = Date()
    
    let items = List<Item>()
    
    override static func primaryKey() -> String? {
        return "projectId"
    }
}
