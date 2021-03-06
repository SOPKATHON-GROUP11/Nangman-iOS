
# Project Title

A brief description of what this project does and who it's for

# FruitFruit-iOS

### ๐  ํ๋ก์ ํธ ์ธํ
- ์ฌ์ฉ ๋ผ์ด๋ธ๋ฌ๋ฆฌ: Alamofire
- ๋ฏธ๋๋ฉ ํ๊ฒ: iOS 15.0
- ๋์ ๊ธฐ๊ธฐ: iPhone 13 mini, iPhone SE 2

### ๐ ์๋น์ค ์๊ฐ
#### ์๋น์ค๋ช

ํธ๋ฆ ํธ๋ฆ (fruit fruit)

##### ์๋น์ค ํ ์ค ์๊ฐ

์ผ์ ์ ๊ณ ๋ง๊ณ  ๋ฏธ์ํ ์ฌ๋๋ค์ ๋ง์ง๋ง ๊ทธ ๋ง์์ ์ ํ๊ธฐ๋ ์ฝ์ง ์๋ค.<br>
์ ํ์ง ๋ชปํ๋ ์๋ง์์ ํธ๋ฆ ํธ๋ฆ์ ํตํด ๋จ๊ฒจ๋ณด๋๊ฑด ์ด๋จ๊น?

### ๐ป ์ญํ  ๋ถ๋ฐฐ
| ์ ์ ๋น | ์ด์ธ์ง | ์ต์๋ฆฐ |
| --- | --- | --- |
| * MyTreeView | * WritingView | * FruitListView |
| * PopUpView | * FruitDetailView | * TabBar |
| * MyTreeView | ๐ | ๐ |


### ๐ Convention
### Git
> Issue = Branch = PR

#### Branch Convention

```swift
chore/#3-Project-Setting
feat/#3-HomeView-UI
fix/
```

#### Issue Convention

> ํํ๋ฆฟ ์ฐธ๊ณ 

#### PR Convention

> ํํ๋ฆฟ ์ฐธ๊ณ 

#### Commit Convention

```swift
[Chore] ๊ทธ๋ฅ ๋ณดํต ์์ ์์์์.. move, rename
[Feat] ์๋ก์ด ์ฃผ์ ๊ธฐ๋ฅ ์ถ๊ฐ
[Add] ํ์ผ ์ถ๊ฐ, ์์ ์ถ๊ฐ, etc...
[Fix] ๋ฒ๊ทธ ์์ 
[Del] ์ธ๋ชจ์๋ ์ฝ๋, ๋ญ ์ด์ฉ๊ณ  ์ญ์ 
[Refactor] ์ฝ๋ ๋ฆฌํฉํ ๋ง
[Mod] ์คํ ๋ฆฌ๋ณด๋, Xib ํ์ผ ์์ 
[Docs] Wiki, README ํ์ผ ์์ 
```
### Code
#### MARK

```swift
// MARK: - @IBAction Properties
// MARK: - @IBOutlet Properties
// MARK: - Extensions
// MARK: - Functions
// MARK: - Initialization
// MARK: - View Life Cycle
// MARK: - Properties
// MARK: - Protocols
```

#### ์ฝ์ด

```swift
VC: ViewController
TV: TableView
TVC: TableViewCell
CV: CollectionView
CVC: CollectionViewCell

NVC: NavigationController
TBC: TabbarController
```

#### ๋ค์ด๋ฐ

```swift
@IBAction didTapLoginButton 

func setTableViewCell
func setUI

๋ค์ด๋ฐ ์ ๋์ฌ+๋ช์ฌ... ์์ผ๋ก

profileImageView: UIImageView
appleTableView: UITableView
```

- ์ฌ๋งํ๋ฉด ์ค๋ฐ๊ฟ ๋จ๋ฐํ์ง ๋ง์.
- ํ๋ผ๋ฏธํฐ, ๋๋ฏธ๋ฐ์ดํฐ ๋ฑ ๊ธธ์ด์ง ๊ฒฝ์ฐ, **๋์น๊ป** ๊ฐํํ๊ธฐ(3~4๊ฐ๋ถํฐ)

### ๐ ํด๋๋ง ๋ฐฉ์
```
.
โโโ Common
โย ย  โโโ Base
โย ย      โโโ BaseVC.swift
โโโ Extensions
โย ย  โโโ Adjusted+.swift
โโโ Info.plist
โโโ Network
โย ย  โโโ APIConstants.swift
โย ย  โโโ GenericResponse.swift
โย ย  โโโ NetworkResult.swift
โโโ Resources
โย ย  โโโ Assets.xcassets
โย ย  โย ย  โโโ AccentColor.colorset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โโโ AppIcon.appiconset
โย ย  โย ย  โย ย  โโโ Contents.json
โย ย  โย ย  โโโ Contents.json
โย ย  โโโ Main.storyboard
โย ย  โโโ Colorsets.xcassets
โย ย  โโโ Font
โโโ Scenes
โย ย  โโโ LaunchScreen.storyboard
โย ย  โโโ FruitDetail
โย ย  โโโ FruitList
โย ย  โโโ MyTree
โย ย  โโโ PopUp
โย ย  โโโ TabBar
โย ย  โโโ Writing
โโโ Supports
 ย ย  โโโ AppDelegate.swift
 ย ย  โโโ SceneDelegate.swift

```
### ํํธ ์ฌ์ง, ํ ์ฌ์ง
<img width="1079" alt="แแณแแณแแตแซแแฃแบ 2022-05-22 แแฉแแฅแซ 12 19 25" src="https://user-images.githubusercontent.com/43312096/169658082-fce59b0d-3ca1-495f-b1fa-5831802717df.png">
<img width="600" alt="แแณแแณแแตแซแแฃแบ 2022-05-22 แแฉแแฅแซ 12 20 55" src="https://user-images.githubusercontent.com/43312096/169658159-5c6a8ed0-be7b-4d09-aa1f-0f415a2d4ac4.png">


### ๐ง ๊ธฐ๋ฅ
| ๊ฐ๋ฅ | ์ค๋ช |
| --- | --- | 
| ๋ชจ๋  ๊ณผ์ผ | ๋ชจ๋  ์ ์ ์ ๊ณผ์ผ์ ํ์ธํ  ์ ์์ | 
| ๋ง์ด ํธ๋ฆฌ | ๋๋ง์ ํธ๋ฆฌ์ ์ฌ๊ณผ, ๊ฐ์ ์ถ๊ฐํ๊ณ  ๊ณผ์ผ์ด 10๊ฐ๊ฐ ๋๋ฉด ์ํํ  ์ ์์ |
| ๋ด ๊ณผ์ผ | ๋ด๊ฐ ์์ฑํ ๊ณผ์ผ์ ํ์ธํ  ์ ์์ | 

### ๊ตฌํ ์ฌ๋ถ

| ๊ฐ๋ฅ | ์ค๋ช |
| --- | --- | 
| ๋ชจ๋  ๊ณผ์ผ | ๋ชจ๋  ์ ์ ์ ๊ณผ์ผ์ ํ์ธํ  ์ ์์ |  UI ๊ตฌํ + ์๋ฒ ๋ฏธ์
| ๋ง์ด ํธ๋ฆฌ | ๋๋ง์ ํธ๋ฆฌ์ ์ฌ๊ณผ, ๊ฐ์ ์ถ๊ฐํ๊ณ  ๊ณผ์ผ์ด 10๊ฐ๊ฐ ๋๋ฉด ์ํํ  ์ ์์ | UI ๊ตฌํ + ์๋ฒ ๋ฏธ์
| ๋ด ๊ณผ์ผ | ๋ด๊ฐ ์์ฑํ ๊ณผ์ผ์ ํ์ธํ  ์ ์์ | UI ๊ตฌํ + ์๋ฒ ๊ตฌํ


### ์๋ฒฝ๊ฐ์ฑ
<img width="654" alt="แแณแแณแแตแซแแฃแบ 2022-05-22 แแฉแแฅแซ 8 23 03" src="https://user-images.githubusercontent.com/43312096/169672048-26321028-fa40-4e2a-8ed7-1d2e8731a3e9.png">

### ๐ฅ ์์ฐ ์์
- 

