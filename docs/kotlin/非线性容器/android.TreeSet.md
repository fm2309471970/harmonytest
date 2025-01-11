# android.TreeSet
### android.TreeSet.add

:keyboard: 测试用例 1: 测试TreeSet容器add接口

```kotlin
private fun testTreeSet(): Long {
        val set = TreeSet<Int>()
        return measureTimeMillis {
            for (i in 1..50000) {
                set.add(i)
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.000394 ms |


### android.TreeSet.remove

:keyboard: 测试用例 2: 测试TreeSet容器remove接口 

```kotlin
private fun testTreeSet(): Long {
        val set = TreeSet<Int>()
        for (i in 1..50000) {
            set.add(i)
        }
        return measureTimeMillis {
            for (i in 1..50000) {
                set.remove(i)
            }
        }
    }

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.00033 ms |

### android.TreeSet.contains

:keyboard: 测试用例 3: 测试TreeSet容器contains接口 

```kotlin
private fun testTreeSet(): Long {
        val set = TreeSet<Int>()
        for (i in 1..50000) {
            set.add(i)
        }
        return measureTimeMillis {
            for (i in 1..50000) {
                set.contains(i)
            }
        }
    }
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.00034 ms |


[Android Phone]: ../../../device/#android-phone