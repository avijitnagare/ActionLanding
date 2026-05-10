//
//  ActionView.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//
import SwiftUI
import Combine

struct ActionView: View {
    
    @ObservedObject var presenter: Presenter
   
    init(presenter: Presenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Username", text: $presenter.userNameText)
                .textFieldStyle(.roundedBorder)
                .border(Color.red)
            Button {
                presenter.onSubmitClick()
            } label: {
                Text("Submit")
            }

        }
        .onAppear {
            print("ActionView appeared")
        }
    }
}
