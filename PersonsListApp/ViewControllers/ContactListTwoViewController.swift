//
//  ContactListTwoViewController.swift
//  PersonsListApp
//
//  Created by Max Franz Immelmann on 11/10/22.
//

import UIKit

class ContactListTwoViewController: UITableViewController {
    
    var personList: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList[section].rows.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondView", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        let person = personList[indexPath.section]
        
        content.text = person.rows[indexPath.row]
        
        content.image = indexPath.row == 0
        ? UIImage(systemName: "phone")
        : UIImage(systemName: "tray")
        
        cell.contentConfiguration = content

        return cell
    }
}

extension ContactListTwoViewController {
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView,
                            viewForHeaderInSection section: Int) -> UIView? {
        let fullNameLabel = UILabel()
        fullNameLabel.text = personList[section].fullName
        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        fullNameLabel.textColor = .white
        fullNameLabel.textAlignment = .center
        
        return fullNameLabel
    }
    
    override func tableView(_ tableView: UITableView,
                            willDisplayHeaderView view: UIView,
                            forSection section: Int) {
        view.backgroundColor = .gray
    }
}
