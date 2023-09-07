[![Hits](https://hits.sh/github.com/Jimmy-Jung/JimmyKit.svg?view=today-total&label=visited&logo=base64)](https://hits.sh/github.com/Jimmy-Jung/JimmyKit/)
# JimmyKit

✨ JimmyKit is a stylish swift tool that allows you to easily create UIKit Components with various styles and settings.

✨ JimmyKit은 Swifty하게 UIKit 컴포넌트를 만들 수 있는 툴입니다.

<br/>

# Installation
## Swift Package Manager
```
https://github.com/Jimmy-Jung/JimmyKit.git
```

Swift Package Manager is a tool for managing the distribution of Swift code. 

It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

<br/>

Swift Package Manager은 Swift 코드의 배포를 관리하기 위해 설계된 도구입니다. 

Swift 빌드 시스템과 밀접하게 통합되어 있어 의존성을 자동으로 다운로드, 컴파일 및 링크하는 것이 쉽습니다.


CocoaPod도 배워서 조만간 배포해 보겠습니다...

<br/>

# Examples of use(사용 예시)

## ButtonBuilder

In UIKit, buttons are typically created using the following method:

<br/>

UIKit에서는 일반적으로 다음과 같은 방법으로 버튼을 생성합니다. (토나옵니다 진짜)


```swift
lazy var button1: UIButton = {
    let button = UIButton()
    var config = UIButton.Configuration.plain()
    config.title = "Plain Button"
    config.subtitle = "SubTitle"
    config.buttonSize = .medium
    config.image = UIImage(systemName: "swift")
    button.configuration = config
    button.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
    return button
}()

@objc func button1Tapped() {
    print("Button Tapped")
}

```

However, with JimmyKit, you can create a button like this:

ButtonBuilder must return a UIButton by calling 

the makeButton() since its return type is ButtonBuilder. 

<br/>

하지만 JimmyKit을 사용하면 다음과 같이 만들 수 있습니다. (너무 멋지죠?!)

ButtonBuilder는 반환타입이 ButtonBuilder이기 때문에 꼭 makeButton()

메서드를 호출해 UIButton을 반환해줘야 합니다.


```swift
let button1: UIButton = ButtonBuilder(.plain)
    .title("Plain Button")
    .subtitle("SubTitle")
    .buttonSize(.medium)
    .image(UIImage(systemName: "swift"))
    .addAction { [unowned self] in
        print("Button Tapped")
    }
    .makeButton()

```

<br/>

## Reasons for designing it this way(이렇게 설계한 이유)

✨ This design choice was made to prevent confusion 

caused by too many existing properties in UIButton if they were implemented as an extension. 

However, if you don't like this approach, UIButton also provides chaining methods.

<br>

✨ 이렇게 설계한 이유는 UIButton에 Extension으로 구현하면 

기존 프로퍼티가 너무 많아서 혼란스러울 수 있기 때문입니다. 

하지만 이 방식이 마음에 들지 않는다면 UIButton 체이닝 메서드도 제공합니다.


<br/>

### UIView Components

```swift

let button = UIButton()
    .title("Plain Button")
    .subtitle("SubTitle")
    .buttonSize(.medium)
    .image(UIImage(systemName: "swift"))
    .addAction { [unowned self] in
        print("Button Tapped")
    }

let textField = UITextField()
    .text("Enter your name")
    .textColor(.black)
    .font(UIFont.systemFont(ofSize: 16))
    .placeholder("Name")

let view = UIView()
    .backgroundColor(.red)
    .cornerRadius(8)
    .clipsToBounds(true)
    .addSubView(textField)
    
let segmentedControl = UISegmentedControl(items: ["One", "Two"])
    .backgroundColor(.red)
    .clipsToBounds(true)
    .cornerRadius(20)
    
let scrollView = UIScrollView()
    .backgroundColor(.red)
    .clipsToBounds(true)
    .cornerRadius(20)

```

<br/>

## Transition(화면전환)

Screen transitions in storyboards can be summarized in just one line.

스토리보드에서 화면전환은 단 한줄로 요약할 수 있습니다. (아름답습니다)

```swift
// Before
let sb = UIStoryboard(name: "Main", bundle: nil)
let vc = sb.instantiateViewController(withIdentifier: "MyViewController") as! MyViewController
present(vc, animated: true)

// After
transition(storyboard: "Main", viewController: MyViewController.self, style: .present)

```

Of course, data transfer is also possible.

물론 데이터 전달도 가능합니다. (굉장히 직관적이죠?)

```swift
// Before
let vc = MyViewController()
vc.someProperty = "Some Value"
let nav = UINavigationController(rootViewController: vc)
present(nav, animated: true)

// After
transition(viewController: MyViewController, style: .presentNavigation) {vc in
    vc.someProperty = "Some Value"
}

```

<br/>

## Identifier

When registering a cell, there is a risk of runtime error if the Identifier is entered as a String.

Identifier를 String으로 입력하여 기존 셀을 등록할 경우, 런타임 오류가 발생할 위험이 있습니다.

```swift
// Before
collectionView.register(
    MyCell.self,
    forCellWithReuseIdentifier: "MyCell"
)

// After
collectionView.register(
    MyCell.self,
    forCellWithReuseIdentifier: MyCell.identifier
)

```

However, it is safe to set the name of the object instance itself as the identifier as follows:

하지만 객체 인스턴스 자체의 이름을 identifier로 설정하는 아래와 같은 방식은 안전합니다.

```swift
static var identifier: String { return String(describing: self) }

```

```swift
// Before
let cell = collectionView.dequeueReusableCell(
    withReuseIdentifier: "MyCell",
    for: indexPath
) as! MyCell

// After
let cell = collectionView.dequeueReusableCell(
    withReuseIdentifier: MyCell.identifier,
    for: indexPath
) as! MyCell

```

<br/>

## Create Code Snippet

It's very convenient to use by setting it up in the code snippet.

코드스니펫에 설정해서 사용하면 너무 꿀입니다.

<img width="470" alt="1" src="https://github.com/Jimmy-Jung/JimmyKit/assets/115251866/6bfac3bf-25c5-4de4-8332-7f296af74ab0">

<br/> 
<img width="470" alt="2" src="https://github.com/Jimmy-Jung/JimmyKit/assets/115251866/e249e7e0-0aee-4bba-bd3b-0f1d8bec1956">


<br/> 
<br/> 
  
```swift
lazy var <#Button#>: UIButton = ButtonBuilder(<#T##style: ButtonBuilder.ButtonStyle##ButtonBuilder.ButtonStyle#>)
        .title(<#T##text: String##String#>)
        .buttonSize(<#T##size: UIButton.Configuration.Size##UIButton.Configuration.Size#>)
        .cornerStyle(<#T##cornerStyle: UIButton.Configuration.CornerStyle##UIButton.Configuration.CornerStyle#>)
        .addAction { [unowned self] in <#Code#> }
        .makeButton()
```


<br/>

### License

Then is under MIT license. See the [License](https://github.com/Jimmy-Jung/JimmyKit/blob/main/LICENSE). file for more info.
