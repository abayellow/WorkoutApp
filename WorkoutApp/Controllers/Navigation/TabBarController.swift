import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        configureApperance()
    }
    
    private func configureApperance() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let controllers: [NavBarController] = Tabs.allCases.map { tap in
            let controller = NavBarController(rootViewController: getControllers(for: tap))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tap),
                                                 image: R.Images.TabBar.icon(for: tap),
                                                 tag: tap.rawValue)
            return controller
        }
        
        setViewControllers(controllers, animated: false)
        
//        let overviewController = OverviewController()
//        let sessionController = SessionController()
//        let progressController = ProgressController()
//        let settingsController = SettingsController()
//
//        let overviewNavigation = NavBarController(rootViewController: overviewController)
//        let sessionNavigation  = NavBarController(rootViewController: sessionController)
//        let progressNavigation = NavBarController(rootViewController: progressController)
//        let settingsNavigation = NavBarController(rootViewController: settingsController)
//
//        overviewController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.overview,
//                                                     image: R.Images.TabBar.overview,
//                                                     tag: Tabs.overview.rawValue)
//
//        sessionController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.session,
//                                                     image: R.Images.TabBar.session,
//                                                     tag: Tabs.overview.rawValue)
//
//        progressController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.progress,
//                                                     image: R.Images.TabBar.progress,
//                                                     tag: Tabs.overview.rawValue)
//
//        settingsController.tabBarItem = UITabBarItem(title: R.Strings.TabBar.setting,
//                                                     image: R.Images.TabBar.setting,
//                                                     tag: Tabs.overview.rawValue)
        
//        setViewControllers([
//            overviewNavigation,
//            sessionNavigation,
//            progressNavigation,
//            settingsNavigation
//        ], animated: false)
        
       
        }
    private func getControllers(for tab: Tabs) -> BaseController {
        switch tab {
        case .overview: return OverviewController()
        case .session: return SessionController()
        case .progress: return ProgressController()
        case .settings: return SessionController()
            
        }
        
    }
    
}
