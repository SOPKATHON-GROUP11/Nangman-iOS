
# Project Title

A brief description of what this project does and who it's for

# FruitFruit-iOS

### 🛠 프로젝트 세팅
- 사용 라이브러리: Alamofire
- 미니멈 타겟: iOS 15.0
- 대응 기기: iPhone 13 mini, iPhone SE 2

### 🙃 서비스 소개
#### 서비스명

푸릇 푸릇 (fruit fruit)

##### 서비스 한 줄 소개

일상 속 고맙고 미안한 사람들은 많지만 그 마음을 전하기는 쉽지 않다.<br>
전하지 못했던 속마음을 푸릇 푸릇을 통해 남겨보는건 어떨까?

### 💻 역할 분배
| 정정빈 | 이세진 | 최영린 |
| --- | --- | --- |
| * MyTreeView | * WritingView | * FruitListView |
| * PopUpView | * FruitDetailView | * TabBar |
| * MyTreeView | 🍎 | 🍎 |


### 📄 Convention
### Git
> Issue = Branch = PR

#### Branch Convention

```swift
chore/#3-Project-Setting
feat/#3-HomeView-UI
fix/
```

#### Issue Convention

> 템플릿 참고

#### PR Convention

> 템플릿 참고

#### Commit Convention

```swift
[Chore] 그냥 보통 작업 있잖아요.. move, rename
[Feat] 새로운 주요 기능 추가
[Add] 파일 추가, 에셋 추가, etc...
[Fix] 버그 수정
[Del] 쓸모없는 코드, 뭐 어쩌고 삭제
[Refactor] 코드 리팩토링
[Mod] 스토리보드, Xib 파일 수정
[Docs] Wiki, README 파일 수정
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

#### 약어

```swift
VC: ViewController
TV: TableView
TVC: TableViewCell
CV: CollectionView
CVC: CollectionViewCell

NVC: NavigationController
TBC: TabbarController
```

#### 네이밍

```swift
@IBAction didTapLoginButton 

func setTableViewCell
func setUI

네이밍 시 동사+명사... 순으로

profileImageView: UIImageView
appleTableView: UITableView
```

- 웬만하면 줄바꿈 남발하지 말자.
- 파라미터, 더미데이터 등 길어질 경우, **눈치껏** 개행하기(3~4개부터)

### 🗂 폴더링 방식
```
.
├── Common
│   └── Base
│       └── BaseVC.swift
├── Extensions
│   ├── Adjusted+.swift
├── Info.plist
├── Network
│   ├── APIConstants.swift
│   ├── GenericResponse.swift
│   └── NetworkResult.swift
├── Resources
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   └── Contents.json
│   ├── Main.storyboard
│   ├── Colorsets.xcassets
│   └── Font
├── Scenes
│   ├── LaunchScreen.storyboard
│   ├── FruitDetail
│   ├── FruitList
│   ├── MyTree
│   ├── PopUp
│   ├── TabBar
│   └── Writing
└── Supports
    ├── AppDelegate.swift
    └── SceneDelegate.swift

```
### 파트 사진, 팀 사진
<img width="1079" alt="스크린샷 2022-05-22 오전 12 19 25" src="https://user-images.githubusercontent.com/43312096/169658082-fce59b0d-3ca1-495f-b1fa-5831802717df.png">
<img width="600" alt="스크린샷 2022-05-22 오전 12 20 55" src="https://user-images.githubusercontent.com/43312096/169658159-5c6a8ed0-be7b-4d09-aa1f-0f415a2d4ac4.png">


### 🧐 기능
| 가능 | 설명 |
| --- | --- | 
| 모든 과일 | 모든 유저의 과일을 확인할 수 있음 | 
| 마이 트리 | 나만의 트리에 사과, 감을 추가하고 과일이 10개가 되면 수확할 수 있음 |
| 내 과일 | 내가 작성한 과일을 확인할 수 있음 | 

### 구현 여부

| 가능 | 설명 |
| --- | --- | 
| 모든 과일 | 모든 유저의 과일을 확인할 수 있음 |  UI 구현 + 서버 미완
| 마이 트리 | 나만의 트리에 사과, 감을 추가하고 과일이 10개가 되면 수확할 수 있음 | UI 구현 + 서버 미완
| 내 과일 | 내가 작성한 과일을 확인할 수 있음 | UI 구현 + 서버 구현


### 새벽감성
<img width="654" alt="스크린샷 2022-05-22 오전 8 23 03" src="https://user-images.githubusercontent.com/43312096/169672048-26321028-fa40-4e2a-8ed7-1d2e8731a3e9.png">

### 🎥 시연 영상
- 

