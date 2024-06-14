//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Alexander Abanshin on 13.06.2024.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }

    override func navBarLeftButtonHandler() {
        print("another")
    }
}

