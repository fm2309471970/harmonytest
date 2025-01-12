# iOS.LinkedList
### iOS.LinkedList.append

:keyboard: 测试用例 1: 测试LinkedList容器append接口

```swift
func testLinkedListOperations() {
        var results: [TestResults] = []
        var LinkedList = LinkedList(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { LinkedList.append(1) })
        }
        let result = TestResults(
            containerType: LinkedList,
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
| 测试用例 1 | [iPhone 16 pro] | 0.000262 ms |


### iOS.LinkedList.insert

:keyboard: 测试用例 2: 测试LinkedList容器insert接口 

```swift
func testLinkedListOperations() {
        var results: [TestResults] = []
        var LinkedList = LinkedList(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { linkedList.insert(at: 0, value: 1) })
        }
        let result = TestResults(
            containerType: LinkedList,
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
| 测试用例 2 | [iPhone 16 pro] | 0.000475 ms |

### iOS.LinkedList.remove

:keyboard: 测试用例 3: 测试LinkedList容器remove接口 

```swift
func testLinkedListOperations() {
        var results: [TestResults] = []
        var LinkedList = LinkedList(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { LinkedList.remove(at: 0) })
        }
        let result = TestResults(
            containerType: LinkedList,
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
| 测试用例 3 | [iPhone 16 pro] | 0.000124 ms |


[iPhone 16 pro]: ../../../device/#iPhone 16 pro
