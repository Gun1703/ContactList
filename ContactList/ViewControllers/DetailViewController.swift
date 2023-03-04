//
//  DetailViewController.swift
//  ContactList
//
//  Created by 1234 on 04.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contactDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contactDetail.fullName

        phoneLabel.text = "Телефон: \(contactDetail.phone)"
        emailLabel.text = "e-mail: \(contactDetail.email)"
    }
}
