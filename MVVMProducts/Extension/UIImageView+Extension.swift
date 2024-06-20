//
//  UIImageView+Extension.swift
//  MVVMProducts
//
//  Created by Syed Faraz Haider Zaidi on 19/06/2024.
//

import UIKit
import Kingfisher

extension UIImageView{
    func setImage(with urlString:String) {
        guard let url = URL.init(string: urlString) else {
            return
        }
        let resource = ImageResource(downloadURL: url, cacheKey: urlString)
        kf.indicatorType = .activity
        kf.setImage(with: resource)
        
    }
}
