//
//  FourthViewController.swift
//  dz10
//
//  Created by Akhmed Mongush on 01/02/2026.
//

import UIKit

class FourthViewController: UIViewController {
    var textToDisplay = ""
    
    private let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " "
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Tap me", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewProperties ()
        setupSubviews()
        setupConstraints()
        
        label.text = textToDisplay
    }

    private func setupViewProperties() {
        view.backgroundColor = .green
    }
    private func setupSubviews() {
        view.addSubview(label)
        view.addSubview(button)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    }
    
    @objc private func buttonTapped() {
        let vc = FifthViewController(text: "Text from page 4")
        navigationController?.pushViewController(vc, animated: true)
    }
}
