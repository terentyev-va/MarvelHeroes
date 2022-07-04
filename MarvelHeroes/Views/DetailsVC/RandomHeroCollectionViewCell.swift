//
//  RandomHeroCollectionViewCell.swift
//  MarvelHeroes
//
//  Created by Вячеслав Терентьев on 04.07.2022.
//

import UIKit

class RandomHeroCollectionViewCell: UICollectionViewCell {
    
    let heroImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        backgroundColor = .green
        addSubview(heroImageView)
    }
    
    private func setConstraints() {
      
        NSLayoutConstraint.activate([
            heroImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            heroImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            heroImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            heroImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }
}
