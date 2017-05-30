//
// Created by Rijo George
// Copyright (c) 2017 Rijo George. All rights reserved.
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___WireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrameProtocol
{
    class func present___FILEBASENAMEASIDENTIFIER___Module(fromView parentView: AnyObject)
    {
        // Generating module components
        let view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol = ___FILEBASENAMEASIDENTIFIER___View()
        let presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol & ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol = ___FILEBASENAMEASIDENTIFIER___Presenter()
        let interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol = ___FILEBASENAMEASIDENTIFIER___Interactor()
        let wireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrameProtocol = ___FILEBASENAMEASIDENTIFIER___WireFrame()
        
        // Connecting
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
//        (parentView as! UIViewController).navigationController?.pushViewController(view as! UIViewController, animated: true)
    }
}
