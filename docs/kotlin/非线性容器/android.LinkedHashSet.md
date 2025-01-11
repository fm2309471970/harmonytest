# android.LinkedHashSet
### android.LinkedHashSet.add

:keyboard: 测试用例 1: 测试LinkedHashSet容器add接口

```kotlin
private fun testLinkedHashSet(): Long {
        val set = LinkedHashSet<Int>()
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
| 测试用例 1 | [Android Phone] | 0.000186 ms |


### android.LinkedHashSet.remove

:keyboard: 测试用例 2: 测试LinkedHashSet容器remove接口 

```kotlin
private fun testLinkedHashSet(): Long {
        val set = LinkedHashSet<Int>()
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
| 测试用例 2 | [Android Phone] | 0.000202 ms |

### android.LinkedHashSet.contains

:keyboard: 测试用例 3: 测试LinkedHashSet容器contains接口 

```kotlin
private fun testLinkedHashSet(): Long {
        val set = LinkedHashSet<Int>()
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
| 测试用例 3 | [Android Phone] | 0.00022 ms |


[Android Phone]: ../../../device/#android-phone