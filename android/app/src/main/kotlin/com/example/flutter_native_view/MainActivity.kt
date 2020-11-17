package com.example.flutter_native_view

import io.flutter.embedding.android.FlutterActivity
import androidx.annotation.NonNull
import io.flutter.embedding.engine.FlutterEngine

class MainActivity: FlutterActivity() {
    @Override
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        flutterEngine
                .platformViewsController
                .registry
                .registerViewFactory("flutter_native_view_type", NativeViewFactory())
    }
}
