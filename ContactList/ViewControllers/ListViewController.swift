//
//  ViewController.swift
//  ContactList
//
//  Created by 1234 on 04.03.2023.
//

import UIKit

class ListViewController: UITableViewController {
    var listPerson = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - UITableViewDataSource
    extension ListViewController {
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            listPerson.count
        }
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let currentCell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
            let currentContact = listPerson[indexPath.row]
            var content = currentCell.defaultContentConfiguration()
            content.text = currentContact.fullName
            currentCell.contentConfiguration = content
            
            return currentCell
        }
    }

