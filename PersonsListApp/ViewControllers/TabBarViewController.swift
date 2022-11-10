//
//  TabBarViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/10/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var personList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let contactListOneVC = viewControllers?.first as? ContactListOneViewController else { return }
        contactListOneVC.personList = personList

    }
    
}
