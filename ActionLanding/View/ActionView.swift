//
//  ActionView.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//
import SwiftUI

struct ActionView: View {
    
    var presenter: PresenterProtocol
   
    init(presenter: PresenterProtocol) {
        self.presenter = presenter
    }
    
    var body: some View {
        Text("Hello, World! Action Landing!!")
    }
}


