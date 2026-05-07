//
//  RootPresenter.swift
//  ActionLanding
//
//  Created by Avijit Nagare on 2026-05-06.
//

import Foundation

protocol RootPresenterProtocol: AnyObject {
    func loadData()
    func pullToRefresh()
    func showLoading()
    func hideLoading()
}

open class RootPresenter: NSObject {
    
    open func loadData() {
        
    }
    
    open func pullToRefresh() {
        
    }
    open func showLoading() {
        
    }
    open func hideLoading() {
        
    }
}
