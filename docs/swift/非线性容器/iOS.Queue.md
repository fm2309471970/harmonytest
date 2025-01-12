# iOS.Queue
### iOS.Queue.enqueue

:keyboard: 测试用例 1: 测试Queue容器enqueue接口

```swift
func testQueueOperations() {
        var results: [TestResults] = []
        var Queue = Queue(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { queue.enqueue(1) })
        }
        let result = TestResults(
            containerType: Queue,
            operation: enqueue,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [iPhone 16 pro] | 0.000150 ms |


### iOS.Queue.dequeue

:keyboard: 测试用例 2: 测试Queue容器dequeue接口 

```swift
func testQueueOperations() {
        var results: [TestResults] = []
        var Queue = Queue(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = queue.dequeue() })
        }
        let result = TestResults(
            containerType: Queue,
            operation: dequeue,
            averageTime: times.reduce(0, +) / Double(times.count),
            fastestTime: times.min() ?? 0,
            slowestTime: times.max() ?? 0
        )
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [iPhone 16 pro] | 0.000631 ms |

### iOS.Queue.peek

:keyboard: 测试用例 3: 测试Queue容器peek接口 

```swift
func testQueueOperations() {
        var results: [TestResults] = []
        var Queue = Queue(0..<1000)

        var times: [Double] = []
        for _ in 0..<500 {
            times.append(measureTime { _ = queue.peek() })
        }
        let result = TestResults(
            containerType: Queue,
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
| 测试用例 3 | [iPhone 16 pro] | 0.000167 ms |


[iPhone 16 pro]: ../../../device/#iPhone 16 pro
