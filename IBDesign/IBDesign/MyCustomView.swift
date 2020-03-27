//
//  MyCustomView.swift
//  IBDesign
//
//  Created by sunil.kumar1 on 3/26/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

@IBDesignable
class MyCustomView: UIView {
    var view : UIView?
    
    @IBOutlet var centreView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        if view != nil {
            view!.frame = bounds
            view!.autoresizingMask =  [.flexibleWidth, .flexibleHeight]
            addSubview(view!)
        }
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "MyCustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView
        return view
    }

}
