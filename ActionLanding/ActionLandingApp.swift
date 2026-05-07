//
//  ActionLandingApp.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//

import SwiftUI

@main
struct ActionLandingApp: App {
    var body: some Scene {
        WindowGroup {
            ActionView(presenter: Presenter(router: Router(), interactor: Interactor()))
        }
    }
}
