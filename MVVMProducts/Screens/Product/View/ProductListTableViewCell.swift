//
//  ProductListTableViewCell.swift
//  MVVMProducts
//
//  Created by Syed Faraz Haider Zaidi on 19/06/2024.
//

import UIKit

class ProductListTableViewCell: UITableViewCell {
    
    var product : Product?{
        didSet { //property observer
            productDetailConfiguration()
        }
    }

    @IBOutlet weak var productBackgroundView: UIView!
    @IBOutlet weak var productImagView: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var rateButton: UIButton!
    @IBOutlet weak var productCategoryLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 
    func productDetailConfiguration(){
        guard let product else {
            return
        }
        productImagView.setImage(with: product.image)
        productPriceLabel.text = "$\(product.price)"
        productTitleLabel.text = product.title
        productCategoryLabel.text = product.category
        productDescriptionLabel.text = product.description
        rateButton.setTitle("\(product.rating.rate)", for: .normal)
    }
}
