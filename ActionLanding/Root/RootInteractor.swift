//
//  RootInteractor.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-06.
//


import Foundation


//MARK: - Presenter to interactor
protocol RootInteractorProtocol: AnyObject {
   
}

open class RootInteractor: RootInteractorProtocol {
    
    public init () {
        
    }
    
}

// MARK: - Interactor to Presenter

protocol RootInteractorOutputProtocol: AnyObject {
    func showLoading()
    func hideLoading()
    func showError(_ error: NSError)
}
