import Foundation
import UIKit
import SnapKit

final class HomeView: UIView {
    let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "It's works, welcome!"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = .green
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "It's works, welcome!"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = .green
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViewConfiguration()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView: ViewCodingProtocol {
    func buildViewHierarchy() {
        addSubview(welcomeLabel)
        addSubview(dateLabel)
    }
    
    func setupConstraints() {
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        dateLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().inset(16)
            
            let insetBottom = safeAreaInsets.bottom == 0.0 ? 16 : safeAreaInsets.bottom
            make.bottom.equalToSuperview().inset(insetBottom)
        }
    }
    
    func configurationViews() {
        backgroundColor = .gray
    }
}
