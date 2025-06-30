//
//  SplashViewController.swift
//  NewsApp
//
//  Created by Mehmet Serhat Gültekin on 19.06.2025.
//

import UIKit

class SplashViewController: UIViewController {
    
    // MARK: Properties
    
    private let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "newspaper.fill")
        imageView.contentMode = .scaleAspectFit // en boy oranını bozmadan koyar
        imageView.translatesAutoresizingMaskIntoConstraints = false //
        return imageView
    }()
    
    private let newsLabel: UILabel = {
        let label = UILabel()
        label.text = "News"
        label.textColor = .black
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // MARK: Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
}
// MARK: Private Methods

private extension SplashViewController {
    func configureView() {
        view.backgroundColor = .red
        newsLabel.numberOfLines = 1
        newsLabel.setContentHuggingPriority(.required, for: .vertical) // labelı içerğie göre boyutlandırdı
        addViews()
        configureLayouts()
    }
    
    func addViews() {
        view.addSubview(iconImage) // iconImage'i ekrana yerleştirdi
        view.addSubview(newsLabel)
    }
    
    func configureLayouts() {
        NSLayoutConstraint.activate([                                               // Anchor bir UIView'ın kenar veya boyut referans noktalarını temsil eder: örneğin topAnchor -> üst kenar,                                                                                centerXAnchor -> yatay eksende merkez
            iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            iconImage.widthAnchor.constraint(equalToConstant: 216),
            iconImage.heightAnchor.constraint(equalToConstant: 216),
            
            newsLabel.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 5),
            newsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            

            
        ])
    }
}
#Preview {
    SplashViewController()
}
