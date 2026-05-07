//
//  Presenter.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//


protocol PresenterProtocol {
    
}


class Presenter: RootPresenter {
    
    var router: RouterProtocol
    
    init(router: RouterProtocol) {
        self.router = router
    }
    
    override func loadData() {
        
    }
}

extension Presenter: PresenterProtocol {
    
}
