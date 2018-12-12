//
//  UIButton+Extension.swift
//  JXCategoryKit
//
//  Created by RavenY on 2018/12/12.
//

import UIKit

extension UIButton{
    func title(_ title: String?, titleColor: UIColor?, image: String?, backgroundColor: UIColor?, fontSize: CGFloat, target: Any?, action: Selector) {
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        addTarget(target, action: action, for: .touchUpInside)
        titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        setImage(UIImage(named: image ?? ""), for: .normal)
    }
}
