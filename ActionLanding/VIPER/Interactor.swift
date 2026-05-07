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
}


final class Interactor: RootInteractor, InteractorProtocol {
    weak var presenter: PresenterProtocol?
    
    
}

