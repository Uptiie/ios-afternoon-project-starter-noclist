//
//  AgentDetailViewController.swift
//  NOCList
//
//  Created by Heather Langager on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AgentDetailViewController: UIViewController {
    
    @IBOutlet weak var coverNameLabel: UILabel!
    @IBOutlet weak var realNameLabel: UILabel!
    @IBOutlet weak var accessLevelLabel: UILabel!
    
    var agent: (coverName: String, realName: String, accesslevel: Int, compromised: Bool)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = agents.name
        coverNameLabel.text = "Cover Name \(agent.coverName)"
        realNameLabel.text = "Real Name \(agent.realName)"
        accessLevelLabel.text = "Access Level \(agents.accessLevel)"
        if agent.compromised == true {
            view.backgroundColor = .red
        }
        

        // Do any additional setup after loading the view.
    }
}
