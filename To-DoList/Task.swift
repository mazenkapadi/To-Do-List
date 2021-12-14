//
//  Task.swift
//  To-DoList
//
//  Created by Mazen Kapadi on 14/12/21.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
