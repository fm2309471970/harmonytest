# iOS.Array
### iOS.Array.append

:keyboard: 测试用例 1: 测试Array容器append接口

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { array.append(1) })
        }
        let result = TestResults(
            containerType: Array,
            operation: append,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [iPhone 16 pro] | 0.000113 ms |


### iOS.Array.insert

:keyboard: 测试用例 2: 测试Array容器insert接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { array.insert(1, at: 0) })
        }
        let result = TestResults(
            containerType: Array,
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
| 测试用例 2 | [iPhone 16 pro] | 0.000583 ms |

### iOS.Array.remove

:keyboard: 测试用例 3: 测试Array容器remove接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { array.remove(at: 0) })
        }
        let result = TestResults(
            containerType: Array,
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
| 测试用例 3 | [iPhone 16 pro] | 0.000402 ms |

### iOS.Array.contains

:keyboard: 测试用例 4: 测试Array容器contains接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = array.contains(500) })
        }
        let result = TestResults(
            containerType: Array,
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
| 测试用例 4 | [iPhone 16 pro] | 0.000082 ms |

### iOS.Array.map

:keyboard: 测试用例 5: 测试Array容器map接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = array.map { $0 * 2 } })
        }
        let result = TestResults(
            containerType: Array,
            operation: map,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 5 | [iPhone 16 pro] | 0.087130 ms |

### iOS.Array.filter

:keyboard: 测试用例 6: 测试Array容器filter接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = array.filter { $0 % 2 == 0 } })
        }
        let result = TestResults(
            containerType: Array,
            operation: filter,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 6 | [iPhone 16 pro] | 0.091443 ms |

### iOS.Array.reduce

:keyboard: 测试用例 7: 测试Array容器reduce接口 

```swift
func testArrayOperations() {
        var results: [TestResults] = []
        var array = Array(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = array.reduce(0, +) })
        }
        let result = TestResults(
            containerType: Array,
            operation: reduce,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 7 | [iPhone 16 pro] | 0.082307 ms |


[iPhone 16 pro]: ../../../device#iPhone 16 pro
