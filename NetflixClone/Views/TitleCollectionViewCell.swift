//
//  TitleCollectionViewCell.swift
//  NetflixClone
//
//  Created by Aldair Martinez on 20/09/22.
//

import UIKit
import SDWebImage

class TitleCollectionViewCell: UICollectionViewCell {
 
    static let identifier = "TitleCollectionViewCell"
    
    private lazy var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(posterImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        posterImageView.frame = contentView.bounds
    }
    
    public func configure(with posterPath: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)") else { return }
        posterImageView.sd_setImage(with: url)
        
    }
    
}
