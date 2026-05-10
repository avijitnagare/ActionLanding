//
//  Presenter.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-05.
//
import Combine

protocol PresenterProtocol: AnyObject {
    var userNameText: String { get set }
    var alert: AlertModel? { get set }
}

class Presenter: RootPresenter, PresenterProtocol, ObservableObject {
    @Published var alert: AlertModel?
    @Published var userNameText = ""
    
    
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
    
    @MainActor
    func onSubmitClick() {
        print("Final values from text fields: \(self.userNameText)")
        Task {
            let result = await interactor.sendUserName(name: userNameText)
            print("Result from interactor: \(result)")
            alert = AlertModel(title: "Alert!!", message: result)
        }
    }
}

