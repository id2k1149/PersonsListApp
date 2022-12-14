//
//  ContactListTwoViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/10/22.
//

import UIKit

class ContactListTwoViewController: UITableViewController {
    
    var personList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        personList[section].fullName
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = personList[indexPath.section]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondView", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if indexPath.item == 0 {
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        }
        
        if indexPath.item == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content

        return cell
    }
}
