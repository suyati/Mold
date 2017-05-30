//
// Created by Rijo George
// Copyright (c) 2017 Rijo George. All rights reserved.
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___PresenterProtocol: class
{
    var view: ___FILEBASENAMEASIDENTIFIER___ViewProtocol? { get set }
    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol? { get set }
    var wireFrame: ___FILEBASENAMEASIDENTIFIER___WireFrameProtocol? { get set }
    /**
     * Methods for communication VIEW -> PRESENTER
     */
}

protocol ___FILEBASENAMEASIDENTIFIER___ViewProtocol: class
{
    var presenter: ___FILEBASENAMEASIDENTIFIER___PresenterProtocol? { get set }
    /**
    * Methods for communication PRESENTER -> VIEW
    */
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol: class
{
    var presenter: ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol? { get set }
    
    /**
     * Methods for communication PRESENTER -> INTERACTOR
     */
}

protocol ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol: class
{
    /**
     * Methods for communication INTERACTOR -> PRESENTER
     */
}

protocol ___FILEBASENAMEASIDENTIFIER___WireFrameProtocol: class
{
    static func present___FILEBASENAMEASIDENTIFIER___Module(fromView view: AnyObject)
    /**
    * Methods for communication PRESENTER -> WIREFRAME
    */
}







