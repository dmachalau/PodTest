//
//  UsefulInterface.swift
//  Pods
//
//  Created by Dzmitry Machalau on 30/01/2017.
//
//

import Foundation

open class UsefulInterface {
    open func doSomething() {
        print("I did something!")
    }
}


public typealias AccessToken = String

public class ConnectionJourneyCoordinator {
    public init(accessToken: AccessToken) {
        //rootViewController = UIViewController
    }
    public weak var delegate: ConnectionJourneyDelegate?
    //public let rootViewController: UIViewController
}

public protocol ConnectionJourneyDelegate: class {
    func coordinator(_ coordinator: ConnectionJourneyCoordinator, didCompleteWithResult result: ConnectionJourneyResult)
}

public enum ConnectionJourneyResult {
    case success
    case failure(Error)
}
