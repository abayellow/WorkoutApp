import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryButton()
    private let addButton = UIButton()
    
//    private let weekView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .blue.withAlphaComponent(0.2)
//        return view
//    }()
    
    private let weekView = WeekView()
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: R.Colors.separator, height: 1)
    }
    
    func addAllWorkoutsAction(_ action: Selector, eith target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
        
    }
    
    func addAdditingAction(_ action: Selector, eith target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
        
    }
    
}

extension OverviewNavBar {
    override func setupViews() {
         super.setupViews()
        
        setupView(titleLabel)
        setupView(allWorkoutsButton)
        setupView(addButton)
        setupView(weekView)
    }
    
    override func constantViews() {
        super.constantViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 47)
        ])
        
   
    }
    
    override func configureApperiance() {
        super.configureApperiance()
        backgroundColor = .white
//        addBottomBorder(with: Resources.Colors.separator, height: 1)
        
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Colors.titleGray
        titleLabel.font = R.Fonts.helveticaRegular(with: 22)
        
//        allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitel(R.Strings.Overview.allWorkoutButton)
//        allWorkoutsButton.addTarget(self,
//                                    action: #selector(allWorkoutsButtonAction),
//                                    for: .touchUpInside)
        
//        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage(R.Images.Common.addButton, for: .normal)
//        addButton.addTarget(self,
//                            action: #selector(addButtonAction),
//                            for: .touchUpInside)
        
//        weekView.translatesAutoresizingMaskIntoConstraints = false
    }
}


//@objc extension OverviewNavBar {
//    func allWorkoutsButtonAction() {
//        print("All work add")
//    }
//
//    func addButtonAction() {
//        print("All work add")
//    }
//}
