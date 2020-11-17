//
//  NativeView.swift
//  Runner
//
//  Created by Larry Mac Pro on 2020/11/18.
//

import UIKit

class NativeView: UIView {

    let textLabel = UILabel()
    
    init(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NativeView: FlutterPlatformView {
    func view() -> UIView {
        textLabel.frame = UIScreen.main.bounds
        textLabel.textAlignment = .center
        textLabel.text = "原生 iOS View"
        textLabel.textColor = .red
        return textLabel
    }
}
