import UIKit

enum Resources {

    enum Colors {
        static var active = UIColor(hexString: "#437BFE")
        static var inactive = UIColor(hexString: "#929DA5")
        
        static var background = UIColor(hexString: "F8F9F9")
        static var separator = UIColor(hexString: "#E8ECEF")
        static var secondary = UIColor(hexString: "#F0F3FF")
        
        static var titleGray = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let setting = "Settings"
        }
        
        enum NavBar {
            static let session = "High Intensity Cardio"
            static let progress = "Workout Progress"
        }
        
        enum Overview {
            static let allWorkoutButton = "All Workouts"
        }
        
        enum Session {
            static let navBarLeft = "Pause"
            static let navBarRight = "Finish"
        }
        
        enum Progress {
            static let navBarLeft = "Export"
            static let navBarRight = "Details"
        }
        
        enum Setting {
            
        }
    }
    
    enum Images {
        enum TabBar {
            static var overview = UIImage(named: "overview_tab")
            static var session = UIImage(named: "session_tab")
            static var progress = UIImage(named: "progress_tab")
            static var setting = UIImage(named: "settings_tab")
        }
        
        enum Common {
            static let downArrow = UIImage(named: "down_arrow")
        }
        
    }
    
    enum Fonts {
        static func helveticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
