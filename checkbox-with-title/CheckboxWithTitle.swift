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
    let checkbox = UIImageView()
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
        
        checkbox.image = UIImage(systemName: "square")
        checkbox.contentMode = .scaleAspectFit
        checkbox.tintColor = UIColor(named: "Black")
        
        addSubview(checkbox)
        checkbox.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-20)
        }
    }
    
    public func toggle() {
        self.isChecked = !isChecked
        
        if !isChecked {
            checkbox.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            checkbox.image = UIImage(systemName: "square")
        }
    }
}
