//
//  CherimoyaCoordinator.swift
//  
//
//  Created by Kiefer Wiessler on 06/03/2020.
//

import Foundation
import UIKit



public protocol Storyboarded {}

public extension Storyboarded where Self: UIViewController {
    
    static func instanciate(from storyboard: UIStoryboard) -> Self? {
        guard let identifier = NSStringFromClass(self).components(separatedBy: ".").last else { return nil }
        return storyboard.instantiateViewController(withIdentifier: identifier) as? Self
    }
    
    
}


public protocol CherimoyaCoordinator {
    var childrens: [CherimoyaCoordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

