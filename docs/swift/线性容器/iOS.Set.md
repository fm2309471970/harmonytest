# iOS.Set
### iOS.Set.insert

:keyboard: 测试用例 1: 测试Set容器insert接口

```swift
func testSetOperations() {
        var results: [TestResults] = []
        var Set = Set(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { set.insert(1) })
        }
        let result = TestResults(
            containerType: Set,
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
| 测试用例 1 | [iPhone 16 pro] | 0.000083 ms |


### iOS.Set.remove

:keyboard: 测试用例 2: 测试Set容器remove接口 

```swift
func testSetOperations() {
        var results: [TestResults] = []
        var Set = Set(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { set.remove(1) })
        }
        let result = TestResults(
            containerType: Set,
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
| 测试用例 2 | [iPhone 16 pro] | 0.000072 ms |

### iOS.Set.contains

:keyboard: 测试用例 3: 测试Set容器contains接口 

```swift
func testSetOperations() {
        var results: [TestResults] = []
        var Set = Set(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = set.contains(1) })
        }
        let result = TestResults(
            containerType: Set,
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
| 测试用例 3 | [iPhone 16 pro] | 0.000063 ms |


[iPhone 16 pro]: ../../../device/#iPhone 16 pro
