import UIKit

class OverviewController: BaseController {
    
    private let navBar = OverviewNavBar()
//    private let allWorkoutsButton = SecondaryButton()



}

extension OverviewController {
    override func addViews() {
        super.addViews()
        
        view.addSubview(navBar)
//        view.addSubview(allWorkoutsButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            navBar.heightAnchor.constraint(equalToConstant: 113),
        
//            allWorkoutsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            allWorkoutsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
//            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130)
        
        ])
    }
    
    override func configure() {
        super.configure()
        
        navigationController?.navigationBar.isHidden = true
        
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
//        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
//        allWorkoutsButton.setTitel(Resources.Strings.Overview.allWorkoutButton)
//        allWorkoutsButton.addTarget(self,
//                                    action: #selector(allWorkoutsButtonAction),
//                                    for: .touchUpInside)
    }
}

//@objc extension OverviewController {
//    func allWorkoutsButtonAction() {
//        print("All work add")
//    }
//}
