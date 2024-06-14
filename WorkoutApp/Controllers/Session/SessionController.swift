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
     
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.Strings.tabBar.session
        
        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }

    override func navBarLeftButtonHandler() {
        print("another")
    }
}

