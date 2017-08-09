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
    
    override func draw(_ rect: CGRect) {
        //Never implement this function if empty.
        //Only use this if you want to add a subview or draw a subview itself
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6493053736, green: 0.6493053736, blue: 0.6493053736, alpha: 0.8002035651)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        // When working in Draw Rect, you have to set clip to bounds because this function removes that functionality by default
        currencyLbl.clipsToBounds = true
        addSubview(currencyLbl) //Adds currency label to the Currency Text Field
        
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder { //Checks if placeholder is nil
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
