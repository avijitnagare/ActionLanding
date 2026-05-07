//
//  RootRouter.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-06.
//

import UIKit

protocol RootRouterProtocol: AnyObject {
    
    var rootController: UINavigationController? { get set }
    var shouldShowCloseButton: Bool { get set }
    var onBackTapped: ((Bool)->Void)? { get set }
    
    func push(_ component: UIViewController?)
}

open class RootRouter: NSObject, RootRouterProtocol  {
    
    public var shouldShowCloseButton: Bool = false
    public var onBackTapped: ((Bool)->Void)?
    
    
    //DeeplinkService
    
    var rootController: UINavigationController?
    
    required public override init() {
        super.init()
        self.onBackTapped = { [weak self] _ in
            print("Back button tapped callback at RootRouter called!!")
            //self?.popComponent(animated: animated)
        }
    }
    
    
    func push(_ component: UIViewController?) {
        push(component)
    }

    
}
