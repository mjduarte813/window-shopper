//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Marcel Duarte on 8/8/17.
//  Copyright © 2017 Marcel Duarte. All rights reserved.
//

import UIKit

@IBDesignable // This is a class attribute that allows these changes to show up in the Interface builder
class CurrencyTxtField: UITextField {
    
    override func prepareForInterfaceBuilder() { // Allows the changes to be reflected in Interface builder
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder { //Checks if placeholder is nil
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
