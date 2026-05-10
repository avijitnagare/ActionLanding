//
//  Interactor.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//

import Foundation


// MARK: - Interactor to Presenter

protocol InteractorProtocol: AnyObject {
    var presenter: PresenterProtocol? { get set }
    func sendUserName(name: String) async -> String
}


final class Interactor: RootInteractor, InteractorProtocol {
   
    func sendUserName(name: String) async -> String {
        return "Successfully created!!"
    }
    
    weak var presenter: PresenterProtocol?
    
    
}

