# iOS.Dictionary
### iOS.Dictionary.insert

:keyboard: 测试用例 1: 测试Dictionary容器insert接口

```swift
func testDictionaryOperations() {
        var results: [TestResults] = []
        var Dictionary = Dictionary(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { dict[1] = "value" })
        }
        let result = TestResults(
            containerType: Dictionary,
            operation: insert,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [iPhone 16 pro] | 0.000159 ms |


### iOS.Dictionary.update

:keyboard: 测试用例 2: 测试Dictionary容器update接口 

```swift
func testDictionaryOperations() {
        var results: [TestResults] = []
        var Dictionary = Dictionary(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { dict[1] = "newValue" })
        }
        let result = TestResults(
            containerType: Dictionary,
            operation: update,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [iPhone 16 pro] | 0.000122 ms |

### iOS.Dictionary.remove

:keyboard: 测试用例 3: 测试Dictionary容器remove接口 

```swift
func testDictionaryOperations() {
        var results: [TestResults] = []
        var Dictionary = Dictionary(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { dict.removeValue(forKey: 1) })
        }
        let result = TestResults(
            containerType: Dictionary,
            operation: remove,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [iPhone 16 pro] | 0.000097 ms |

### iOS.Dictionary.contains

:keyboard: 测试用例 4: 测试Dictionary容器contains接口 

```swift
func testDictionaryOperations() {
        var results: [TestResults] = []
        var Dictionary = Dictionary(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = dict.keys.contains(1) })
        }
        let result = TestResults(
            containerType: Dictionary,
            operation: contains,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [iPhone 16 pro] | 0.000092 ms |


[iPhone 16 pro]: ../../../device#iPhone 16 pro
