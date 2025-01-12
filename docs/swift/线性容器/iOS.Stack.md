# iOS.Stack
### iOS.Stack.push

:keyboard: 测试用例 1: 测试Stack容器push接口

```swift
func testStackOperations() {
        var results: [TestResults] = []
        var Stack = Stack(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { stack.push(1) })
        }
        let result = TestResults(
            containerType: Stack,
            operation: push,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [iPhone 16 pro] | 0.000865 ms |


### iOS.Stack.pop

:keyboard: 测试用例 2: 测试Stack容器pop接口 

```swift
func testStackOperations() {
        var results: [TestResults] = []
        var Stack = Stack(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = stack.pop() })
        }
        let result = TestResults(
            containerType: Stack,
            operation: pop,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [iPhone 16 pro] | 0.000994 ms |

### iOS.Stack.peek

:keyboard: 测试用例 3: 测试Stack容器peek接口 

```swift
func testStackOperations() {
        var results: [TestResults] = []
        var Stack = Stack(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = stack.peek() })
        }
        let result = TestResults(
            containerType: Stack,
            operation: peek,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [iPhone 16 pro] | 0.000191 ms |


[iPhone 16 pro]: ../../../device/#iPhone-16-pro
