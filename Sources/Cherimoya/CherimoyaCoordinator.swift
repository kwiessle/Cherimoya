//
//  CherimoyaCoordinator.swift
//  
//
//  Created by Kiefer Wiessler on 06/03/2020.
//

import Foundation
import UIKit


public extension UIStoryboard {
    class var main: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}


public protocol Storyboarded {}
public extension Storyboarded where Self: UIViewController {
    static func instanciate() -> Self? {
        guard let identifier = NSStringFromClass(self).components(separatedBy: ".").first else { return nil }
        return UIStoryboard.main.instantiateViewController(withIdentifier: identifier) as? Self
    }
}


public protocol CherimoyaCoordinator {
    var childrens: [CherimoyaCoordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

