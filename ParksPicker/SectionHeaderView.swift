//
//  SectionHeaderView.swift
//  ParksPicker
//
//  Created by Nguyen Duc Tam on 2017/03/24.
//  Copyright © 2017年 Razeware, LLC. All rights reserved.
//

import UIKit

class SectionHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel : UILabel!
    @IBOutlet weak var iconImageView : UIImageView!
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    var icon : UIImage? {
        didSet {
            iconImageView.image = icon
        }
    }
}
