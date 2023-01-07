# muljipsa

## FIXME

- 글읽기: 한번에 모든 데이터를 가져옴. 추후 커스텀스크롤뷰로 리팩토링 필요.
- 글읽기/댓글: 대댓글 기능 구현 안함.

## 이미지 업로드

### image_picker 패키지 설치

- 사이트: https://pub.dev/packages/image_picker
- image_picker: ^0.8.6

### 핸드폰 접근 권한 부여, 비디오, 사진

- <project root>/ios/Runner/Info.plist 파일 안에 아래 형식으로 추가

```dart
    <key>NSPhotoLibraryUsageDescription</key>
    <string>사진첩 권한을 허가 해주세요!</string>
    <key>NSCameraUsageDescription</key>
    <string>카메라 권한을 허가 해주세요!</string>
    <key>NSMicrophoneUsageDescription</key>
    <string>마이크 권한을 허가 해주세요!</string>
</dict>
```