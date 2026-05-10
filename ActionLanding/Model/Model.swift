//
//  Model.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-09.
//

import Foundation

struct AlertModel: Identifiable {
    var id: UUID = UUID()
    var title: String
    var message: String
}
