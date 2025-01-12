# iOS.Tree
### iOS.Tree.insert

:keyboard: 测试用例 1: 测试Tree容器insert接口

```swift
func testTreeOperations() {
        var results: [TestResults] = []
        var Tree = Tree(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { tree.insert(50) })
        }
        let result = TestResults(
            containerType: Tree,
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
| 测试用例 1 | [iPhone 16 pro] | 0.020476 ms |


### iOS.Tree.search

:keyboard: 测试用例 2: 测试Tree容器search接口 

```swift
func testTreeOperations() {
        var results: [TestResults] = []
        var Tree = Tree(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = tree.search(50) })
        }
        let result = TestResults(
            containerType: Tree,
            operation: search,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [iPhone 16 pro] | 0.000091 ms |

### iOS.Tree.delete

:keyboard: 测试用例 3: 测试Tree容器delete接口 

```swift
func testTreeOperations() {
        var results: [TestResults] = []
        var Tree = Tree(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { tree.delete(50) })
        }
        let result = TestResults(
            containerType: Tree,
            operation: delete,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [iPhone 16 pro] | 0.000265 ms |


[iPhone 16 pro]: ../../../device#iPhone 16 pro
