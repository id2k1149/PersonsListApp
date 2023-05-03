//
//  PersonListViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/9/22.
//

import UIKit

class ContactListOneViewController: UITableViewController {
    
    var personList: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstView", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let person = personList[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? PersonInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC.person = personList[indexPath.row]
    }
}
