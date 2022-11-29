//
//  ViewController.swift
//  checkbox-with-title
//
//  Created by Sherary Apriliana on 29/11/22.
//

import UIKit

class ViewController: UIViewController {

    private lazy var checkbox: CheckboxWithTitle = {
        let checkbox = CheckboxWithTitle(text: "Check Me!")
        
        return checkbox
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLayouts()
        integrateTapGestures()
    }

    private func setLayouts() {
        view.backgroundColor = .white
        view.addSubview(checkbox)
        checkbox.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(20)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(12)
            make.left.equalToSuperview()
        }
    }
    
    private func integrateTapGestures() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckboxWithTitle))
        checkbox.addGestureRecognizer(gesture)
    }
    
    @objc private func didTapCheckboxWithTitle() {
        checkbox.toggle()
        
        if checkbox.isChecked == true {
            print("Unchecked")
        } else {
            print("Checked")
        }
    }
}

