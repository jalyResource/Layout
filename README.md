# Layout

[![CI Status](https://img.shields.io/travis/wuzhenli/Layout.svg?style=flat)](https://travis-ci.org/wuzhenli/Layout)
[![Version](https://img.shields.io/cocoapods/v/Layout.svg?style=flat)](https://cocoapods.org/pods/Layout)
[![License](https://img.shields.io/cocoapods/l/Layout.svg?style=flat)](https://cocoapods.org/pods/Layout)
[![Platform](https://img.shields.io/cocoapods/p/Layout.svg?style=flat)](https://cocoapods.org/pods/Layout)

## Example

仿 `SnapKit` 的布局框架。实现了`SnapKit`中常用功能。仅供参考，不推荐在项目里使用。

## Usage
和 `SnapKit` 用法如出一辙。ep：

```
lblGray.jl.makeConstraints { (make) in
    make.top.equalTo(100)
    make.left.equalToSuperview().offset(10)
    make.size.equalTo(CGSize(width: 120, height: 30))
}

lblCenter.jl.makeConstraints { (make) in
    make.center.equalTo(greenView.jl.center)
    make.height.equalTo(39)
}

// chain syntex
lblChainSyntex.jl.remakeConstraints { (make) in
    make.left.top.equalTo(lblRemake2)// .offset(20)
}

viewContainer.jl.makeConstraints { (make) in
    make.centerX.centerY.equalToSuperview()
    make.width.height.equalTo(300)
}
```

## Author

wuzhenli, zhenli@6.cn

## License

Layout is available under the MIT license. See the LICENSE file for more info.
