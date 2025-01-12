# android.ArrayDeque
### android.ArrayDeque.add

:keyboard: 测试用例 1: 测试ArrayDeque容器add接口

```kotlin
private fun testArrayDeque(): Long {
        val deque = ArrayDeque<Int>()
        return measureTimeMillis {
            for (i in 1..500000) {
                deque.add(i)
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.000138 ms |


### android.ArrayDeque.remove

:keyboard: 测试用例 2: 测试ArrayDeque容器remove接口 

```kotlin
private fun testArrayDeque(): Long {
    val deque = ArrayDeque<Int>()
    for (i in 1..500000) {
        deque.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            deque.remove(i)
        }
    }
}

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.00001 ms |

### android.ArrayDeque.contains

:keyboard: 测试用例 3: 测试ArrayDeque容器contains接口 

```kotlin
private fun testArrayDeque(): Long {
    val deque = ArrayDeque<Int>()
    for (i in 1..500000) {
        deque.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            deque.contains(i)
        }
    }
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.0969 ms |

### android.ArrayDeque.peek

:keyboard: 测试用例 3: 测试ArrayDeque容器peek接口 

```kotlin
private fun testArrayDeque(): Long {
    val deque = ArrayDeque<Int>()
    for (i in 1..500000) {
        deque.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            deque.peek()
        }
    }
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [Android Phone] | 0.000006 ms |

[Android Phone]: ../../../device/#android-phone
