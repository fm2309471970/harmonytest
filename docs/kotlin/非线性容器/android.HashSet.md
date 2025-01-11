# android.HashSet
### android.HashSet.add

:keyboard: 测试用例 1: 测试HashSet容器add接口

```kotlin
private fun testHashSet(): Long {
        val set = HashSet<Int>()
        return measureTimeMillis {
            for (i in 1..500000) {
                set.add(i)
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.000176 ms |


### android.HashSet.remove

:keyboard: 测试用例 2: 测试HashSet容器remove接口 

```kotlin
private fun testHashSet(): Long {
        val set = HashSet<Int>()
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
| 测试用例 2 | [Android Phone] | 0.000208 ms |

### android.HashSet.contains

:keyboard: 测试用例 3: 测试HashSet容器contains接口 

```kotlin
private fun testHashSet(): Long {
        val set = HashSet<Int>()
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
| 测试用例 3 | [Android Phone] | 0.0002 ms |


[Android Phone]: ../../../device/#android-phone