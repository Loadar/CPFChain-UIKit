# CPFChain-UIKit
UIKit链式调用

## 使用方法

```Swift
// 支持Pods
pod 'CPFChain+UIKit', '~>1.0.0'
```

```Swift
// 引入对应模块
import CPFChain+UIKit
```


## 示例

```Swift
// 明确view层次
let view = UIView()
let label = UILabel()
let imageView = UIImageView()
let containerView = UIView()
let detailLabel = UILabel()

view.cpf
    .add(lable)
    .add(imageView)
    .add(containerView.cpf
        .add(detailLabel))
```

```Swift
// 属性设置
let textField = UITextField()
let imageView = UIImageView()
textField.cpf
    .font(UIFont.systemFont(ofSize: 14))
    .text(alignment: .left)
    .textColor(.purple)
    .clearButton(mode: .whileEditing)
    .keyboard(type: .numberPad)
    .returnKey(type: .next)
    .placeholder("输入手机号")
    .delegate(self)
imageView.cpf
    .image(UIImage(named: "xxx"))
    .content(mode: .scaleAspectFit)
```

