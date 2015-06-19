//
//  ChecklistItem.swift
//  Checklists2
//
//  Created by Brad Gray on 6/18/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
