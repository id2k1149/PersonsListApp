//
//  PersonInfoViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var email: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(person.firstName) \(person.lastName)"
        phoneNumber.text = person.phoneNumber
        email.text = person.email
        
    }
}
