//
// Created by 
// Copyright © 2017年 i-studio development team. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class ___FILEBASENAMEASIDENTIFIER___AssemblyContainer: Assembly {
    
    func assemble(container: Container) {
        
        container.register(___FILEBASENAMEASIDENTIFIER___Interactor.self) { (r, presenter: ___FILEBASENAMEASIDENTIFIER___Presenter) in
            let interactor = ___FILEBASENAMEASIDENTIFIER___Interactor()
            interactor.presenter = presenter
            return interactor
        }
        
        container.register(___FILEBASENAMEASIDENTIFIER___Router.self) { (r, viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) in
            let router = ___FILEBASENAMEASIDENTIFIER___Router()
            router.view = viewController
            return router
        }
        
        container.register(___FILEBASENAMEASIDENTIFIER___Presenter.self) { (r, viewController: ___FILEBASENAMEASIDENTIFIER___ViewController) in
            let presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
            presenter.view = viewController
            presenter.interactor = r.resolve(___FILEBASENAMEASIDENTIFIER___Interactor.self, argument: presenter)
            presenter.router = r.resolve(___FILEBASENAMEASIDENTIFIER___Router.self, argument: viewController)
            
            return presenter
        }
        
        container.storyboardInitCompleted(___FILEBASENAMEASIDENTIFIER___ViewController.self) { r, c in
            c.presenter = r.resolve(___FILEBASENAMEASIDENTIFIER___Presenter.self, argument: c)
        }
    }
}
