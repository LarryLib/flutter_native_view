import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    
    let factory = NativeViewFactory()
    let registrar = self.registrar(forPlugin: "flutter_native_view_plugin")
    registrar?.register(factory, withId: "flutter_native_view_type")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
