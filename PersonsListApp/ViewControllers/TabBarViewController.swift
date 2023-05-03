//
//  TabBarViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/10/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        guard let contactListOneVC = viewControllers?.first as? ContactListOneViewController else { return }
        
        guard let contactListTwoVC = viewControllers?.last as? ContactListTwoViewController else { return }
        
        let personList = Person.getPersonList()
        contactListOneVC.personList = personList
        contactListTwoVC.personList = personList
    }
}
