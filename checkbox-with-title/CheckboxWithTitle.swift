//
//  CheckboxWithTitle.swift
//  checkbox-with-title
//
//  Created by Sherary Apriliana on 29/11/22.
//

import UIKit
import SnapKit

class CheckboxWithTitle: UIView {
    var isChecked = false
    let checkround = UIImageView()
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init (text: String) {
        super.init(frame: .zero)
        createSubViews(text: text)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private func createSubViews(text: String) {
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = text
        label.textAlignment = .left
        
        addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
        }
        
        checkround.image = UIImage(systemName: "circle")
        checkround.contentMode = .scaleAspectFit
        checkround.tintColor = UIColor(named: "Black")
        
        addSubview(checkround)
        checkround.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
        }
    }
    
    public func toggle() {
        self.isChecked = !isChecked
        
        if !isChecked {
            checkround.image = UIImage(systemName: "circle.circle.fill")
        } else {
            checkround.image = UIImage(systemName: "circle")
        }
    }
}
