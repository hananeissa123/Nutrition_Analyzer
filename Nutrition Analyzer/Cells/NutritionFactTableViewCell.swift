//
//  NutritionFactTableViewCell.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import UIKit

class NutritionFactTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func populate(_ info: NutrientInfo) {
        titleLabel.text = info.title
        valueLabel.text = info.quantity.string(style: .none) + " \(info.unit)"
    }
    
}
