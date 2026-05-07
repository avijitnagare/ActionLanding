//
//  Presenter.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//


protocol PresenterProtocol: AnyObject {
    
}

class Presenter: RootPresenter, PresenterProtocol {
    
    var router: RouterProtocol
    var interactor: InteractorProtocol
    
    init(router: RouterProtocol, interactor: InteractorProtocol) {
        self.router = router
        self.interactor = interactor
        super.init()
        
        self.interactor.presenter = self
    }
    
    override func loadData() {
        
    }
}

