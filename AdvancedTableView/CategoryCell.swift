//
//  CategoryCell.swift
//  AdvancedTableView
//
//  Created by Oscar Berggren on 2020-03-08.
//  Copyright © 2020 Oscar Berggren. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var arrowImageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    
    private var boldFont = UIFont(name: "Helvetica", size: 35)
    private var normalFont = UIFont(name: "Zapf Dingbats", size: 17)
    
    func setTitleText(text: String) {
        titleLabel.text = text
    }
    
    func changeFont(selected: Bool) {
        titleLabel.font = selected ? boldFont : normalFont
    }
    
    func setBackgroundImage(show: Bool, image: UIImage) {
        backgroundImageView.image = show ? image : UIImage()
    }
    
    func toggleArrowVisibility(show: Bool) {
        arrowImageView.isHidden = show
    }
    
    func changeFontColor(black: Bool) {
        titleLabel.textColor = !black ? .black : .white
    }
    
    func changeArrowTintColor(black: Bool) {
        arrowImageView.tintColor = !black ? .black : .white
    }
    
    func rotateArrow(selected: Bool) {
        arrowImageView.transform = .identity
        arrowImageView.transform = selected ? arrowImageView.transform.rotated(by: (.pi/180) * 90) : .identity
    }
}
