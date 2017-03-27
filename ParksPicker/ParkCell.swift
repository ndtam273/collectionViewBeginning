//
//  ParkCell.swift
//  ParksPicker
//
//  Created by Nguyen Duc Tam on 2017/03/23.
//  Copyright © 2017年 Razeware, LLC. All rights reserved.
//

import UIKit

class ParkCell: UICollectionViewCell {
    @IBOutlet weak var parkImageView: UIImageView!
    @IBOutlet weak var gradientView: GradientView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var checkedImageView: UIImageView!
    
    override func prepareForReuse() {
        parkImageView.image = nil
        captionLabel.text = ""
        isSelected = false
    }
    
    var park : Park? {
        didSet {
            if let nationalPark = park {
                parkImageView.image = UIImage(named: nationalPark.photo)
                captionLabel.text = nationalPark.photo
            }
        }
    }
    
    var editing: Bool = false {
        didSet {
            captionLabel.isHidden = editing
            checkedImageView.isHidden = !editing
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if editing {
                checkedImageView.image = UIImage(named: isSelected ? "Checked" : "Unchecked")
            }
        }
    }
    
}
