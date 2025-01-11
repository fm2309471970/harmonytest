# android.PriorityQueue
### android.PriorityQueue.add

:keyboard: 测试用例 1: 测试PriorityQueue容器add接口

```kotlin
private fun testPriorityQueue(): Long {
        val queue = PriorityQueue<Int>()
        return measureTimeMillis {
            for (i in 1..500000) {
                queue.add(i)
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.000156 ms |


### android.PriorityQueue.poll

:keyboard: 测试用例 2: 测试PriorityQueue容器poll接口 

```kotlin
private fun testPriorityQueue(): Long {
        val queue = PriorityQueue<Int>()
        for (i in 1..500000) {
            queue.add(i)
        }
        return measureTimeMillis {
            for (i in 1..500000) {
                queue.poll()
            }
        }
    }

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.000248 ms |

### android.PriorityQueue.contains

:keyboard: 测试用例 3: 测试PriorityQueue容器contains接口 

```kotlin
private fun testPriorityQueue(): Long {
        val queue = PriorityQueue<Int>()
        for (i in 1..500000) {
            queue.add(i)
        }
        return measureTimeMillis {
            for (i in 1..500000) {
                queue.contains(i)
            }
        }
    }
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.08822 ms |

### android.PriorityQueue.peek

:keyboard: 测试用例 4: 测试PriorityQueue容器peek接口 

```kotlin
private fun testPriorityQueue(): Long {
        val queue = PriorityQueue<Int>()
        for (i in 1..500000) {
            queue.add(i)
        }
        return measureTimeMillis {
            for (i in 1..500000) {
                queue.peek()
            }
        }
    }
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [Android Phone] | 0.000002 ms |

[Android Phone]: ../../../device/#android-phone