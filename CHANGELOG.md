# 项目环境
Flutter version 1.22.4
Platform android-29, build-tools 29.0.2
Xcode 12.0.1, Build version 12A7300
CocoaPods version 1.8.4

# 创建项目：flutter_native_view

# Android部分
> 创建NativeView.kt
> 创建NativeViewFactory.kt
> 在MainActivity注册NativeViewFactory

# iOS部分
> 创建NativeView.swift 
> 创建NativeViewFactory.swift
> 在AppDelegate中注册NativeViewFactory

# flutter部分
> 创建NativeViewPage.dart
> 在mai中调用NativeViewPage

# 注意事项
### 1、[android] "io.flutter.embedded_views_preview"相关错误
`E/flutter (20478): [ERROR:flutter/flow/layers/platform_view_layer.cc(25)] Trying to embed a platform view but the PrerollContext does not support embedding
 E/flutter (20478): [ERROR:flutter/flow/layers/platform_view_layer.cc(40)] Trying to embed a platform view but the PaintContext does not support embedding
`
#### Update AndroidMainifest.xml：
`<!-- Hybrid composition -->
 <meta-data
     android:name="io.flutter.embedded_views_preview"
     android:value="true" />
`
### 2、[android]style attribute 'attr/colorPrimary' not found
#### Make sure you have not missed appcompat implementation in build.gradle(app)
`implementation 'com.android.support:appcompat-v7:28.0.0'
 implementation 'androidx.appcompat:appcompat:1.2.0'
`
### 3、[ios]
#### 在info.plist增加io.flutter.embedded_views_preview=true

