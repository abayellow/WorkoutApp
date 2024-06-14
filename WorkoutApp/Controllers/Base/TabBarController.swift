import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation  = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.session,
                                                     image: Resources.Images.TabBar.session,
                                                     tag: Tabs.overview.rawValue)
        
        progressController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.overview.rawValue)
        
        settingsController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.setting,
                                                     image: Resources.Images.TabBar.setting,
                                                     tag: Tabs.overview.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
        

        
    }
    
}
