//
//  InfoViewController.swift
//  Contact List
//
//  Created by Kate Kashko on 18.04.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        emailLabel.text = "Email: \(person.email)"
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        
    }
}
