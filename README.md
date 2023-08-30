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
        .image(UIImage(systemName: "swift"))
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

ButtinBuilder는 반환타입이 ButtonBuilder이기 때문에 꼭 makeButton()

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

# ButtonBuilder

## Available Button Styles(사용 가능한 버튼 스타일)

- plain
- tinted
- gray
- filled
- borderless
- bordered
- borderedTinted
- borderedProminent

  <br/>

## Available Configurations

- Here are the available methods for ButtonBuilder:
- `baseBackgroundColor(_ color:)`: sets the button's background color with highlight color enabled
- `baseForegroundColor(_ color:)`: sets the button's text color
- `title(_ text:)`: sets the button's title
- `titleWithFont(title:size:weight:)`: sets the button's title with a custom font
- `titleAlignment(_ alignment:)`: sets the button's title alignment
- `titlePadding(_ padding:)`: sets the button's title padding
- `subtitle(_ text:)`: sets the button's subtitle
- `subtitleWithFont(title:size:weight:)`: sets the button's subtitle with a custom font
- `image(_ image:)`: sets the button's image
- `cornerStyle(_ cornerStyle:)`: sets the button's corner style
- `borderColor(_ color:)`: sets the button's border color
- `borderWidth(_ width:)`: sets the button's border width
- `cornerRadius(_ radius:)`: sets the button's corner radius
- `imagePadding(_ padding:)`: sets the button's image padding
- `imagePlacement(_ placement:)`: sets the button's image placement
- `contentInsets(_ insets:)`: sets the button's content insets
- `buttonSize(_ size:)`: sets the button's size
- `showsActivityIndicator(_ bool:)`: shows or hides the button's activity indicator
- `addAction(_ action:)`: adds an action to the button
- `addConfigurationUpdateHandler(_ action:)`: adds a configuration update handler to the button

<br/>

## **사용 가능한 설정**

- ButtonBuilder에서 사용 가능한 메서드는 다음과 같습니다:
- `baseBackgroundColor(_ color:)`: 하이라이트 색상이 활성화된 버튼의 배경색을 설정합니다.
- `baseForegroundColor(_ color:)`: 버튼의 텍스트 색상을 설정합니다.
- `title(_ text:)`: 버튼의 제목을 설정합니다.
- `titleWithFont(title:size:weight:)`: 사용자 지정 폰트로 버튼의 제목을 설정합니다.
- `titleAlignment(_ alignment:)`: 버튼의 제목 정렬을 설정합니다.
- `titlePadding(_ padding:)`: 버튼의 제목 패딩을 설정합니다.
- `subtitle(_ text:)`: 버튼의 부제목을 설정합니다.
- `subtitleWithFont(title:size:weight:)`: 사용자 지정 폰트로 버튼의 부제목을 설정합니다.
- `image(_ image:)`: 버튼의 이미지를 설정합니다.
- `cornerStyle(_ cornerStyle:)`: 버튼의 모서리 스타일을 설정합니다.
- `borderColor(_ color:)`: 버튼의 테두리 색상을 설정합니다.
- `borderWidth(_ width:)`: 버튼의 테두리 너비를 설정합니다.
- `cornerRadius(_ radius:)`: 버튼의 모서리 반경을 설정합니다.
- `imagePadding(_ padding:)`: 버튼의 이미지 패딩을 설정합니다.
- `imagePlacement(_ placement:)`: 버튼의 이미지 위치를 설정합니다.
- `contentInsets(_ insets:)`: 버튼의 콘텐츠 인셋을 설정합니다.
- `buttonSize(_ size:)`: 버튼의 크기를 설정합니다.
- `showsActivityIndicator(_ bool:)`: 버튼의 활동 지시기를 표시하거나 숨깁니다.
- `addAction(_ action:)`: 버튼에 액션을 추가합니다.
- `addConfigurationUpdateHandler(_ action:)`: 버튼에 구성 업데이트 핸들러를 추가합니다.

위 코드는 SwiftUI 스타일로 버튼을 쉽게 만들어주는 툴입니다. 이 도구를 사용하여 다양한 스타일과 설정을 사용하여 쉽게 사용자 정의 버튼을 만들 수 있습니다.

<br/>

# UIView Components

## Available Configurations
### UIView

- `cornerRadius(_:)`: sets the corner radius of the view
- `backgroundColor(_:)`: sets the background color of the view
- `clipsToBounds(_:)`: sets the `clipsToBounds` property of the view
- `contentMode(_:)`: sets the `contentMode` property of the view
- `isHidden(_:)`: sets the `isHidden` property of the view

### UIControl

- `addAction(_:for:)`: adds an action to the control for the specified event
- `isEnabled(_:)`: sets the `isEnabled` property of the control
- `isUserInteractionEnabled(_:)`: sets the `isUserInteractionEnabled` property of the control
- `tintColor(_:)`: sets the tint color of the control

### UITextField

- `text(_:)`: sets the text of the text field
- `font(_:)`: sets the font of the text field
- `textAlignment(_:)`: sets the text alignment of the text field
- `textColor(_:)`: sets the text color of the text field
- `capitalizationType(_:)`: sets the autocapitalization type of the text field
- `keyboardType(_:)`: sets the keyboard type of the text field
- `isSecureTextEntry(_:)`: sets the `isSecureTextEntry` property of the text field
- `autocorrectionType(_:)`: sets the autocorrection type of the text field
- `contentType(_:)`: sets the text content type of the text field
- `clearButtonMode(_:)`: sets the clear button mode of the text field
- `placeholder(_:)`: sets the placeholder text of the text field
- `returnKeyType(_:)`: sets the return key type of the text field
- `delegate(_:)`: sets the delegate of the text field
- `attributedPlaceholder(_:color:font:)`: sets the attributed placeholder text of the text field

Each method returns the instance of the object with the specified property updated.

<br/>

## **사용 가능한 설정**

### UIView

- `cornerRadius(_:)`: 뷰의 모서리 반경을 설정합니다.
- `backgroundColor(_:)`: 뷰의 배경색을 설정합니다.
- `clipsToBounds(_:)`: 뷰의 `clipsToBounds` 속성을 설정합니다.
- `contentMode(_:)`: 뷰의 `contentMode` 속성을 설정합니다.
- `isHidden(_:)`: 뷰의 `isHidden` 속성을 설정합니다.

### UIControl

- `addAction(_:for:)`: 지정된 이벤트에 대한 컨트롤에 액션을 추가합니다.
- `isEnabled(_:)`: 컨트롤의 `isEnabled` 속성을 설정합니다.
- `isUserInteractionEnabled(_:)`: 컨트롤의 `isUserInteractionEnabled` 속성을 설정합니다.
- `tintColor(_:)`: 컨트롤의 틴트 색상을 설정합니다.

### UITextField

- `text(_:)`: 텍스트 필드의 텍스트를 설정합니다.
- `font(_:)`: 텍스트 필드의 폰트를 설정합니다.
- `textAlignment(_:)`: 텍스트 필드의 텍스트 정렬을 설정합니다.
- `textColor(_:)`: 텍스트 필드의 텍스트 색상을 설정합니다.
- `capitalizationType(_:)`: 텍스트 필드의 자동 대문자 설정 유형을 설정합니다.
- `keyboardType(_:)`: 텍스트 필드의 키보드 유형을 설정합니다.
- `isSecureTextEntry(_:)`: 텍스트 필드의 `isSecureTextEntry` 속성을 설정합니다.
- `autocorrectionType(_:)`: 텍스트 필드의 자동 교정 유형을 설정합니다.
- `contentType(_:)`: 텍스트 필드의 텍스트 콘텐츠 유형을 설정합니다.
- `clearButtonMode(_:)`: 텍스트 필드의 클리어 버튼 모드를 설정합니다.
- `placeholder(_:)`: 텍스트 필드의 플레이스홀더 텍스트를 설정합니다.
- `returnKeyType(_:)`: 텍스트 필드의 반환 키 유형을 설정합니다.
- `delegate(_:)`: 텍스트 필드의 델리게이트를 설정합니다.
- `attributedPlaceholder(_:color:font:)`: 텍스트 필드의 속성 플레이스홀더 텍스트를 설정합니다.

각 메서드는 지정된 속성이 업데이트된 객체의 인스턴스를 반환합니다.

<br/>

### License

Then is under MIT license. See the [License](https://github.com/Jimmy-Jung/JimmyKit/blob/main/LICENSE). file for more info.
