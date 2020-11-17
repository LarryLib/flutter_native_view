//
//  NativeViewFactory.swift
//  Runner
//
//  Created by Larry Mac Pro on 2020/11/18.
//

import UIKit

class NativeViewFactory: NSObject {

}

extension NativeViewFactory: FlutterPlatformViewFactory {
    func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        return NativeView(withFrame: frame, viewIdentifier: viewId, arguments: args)
    }
    
    func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
    
}
