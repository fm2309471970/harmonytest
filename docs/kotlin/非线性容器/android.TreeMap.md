# android.TreeMap
### android.TreeMap.put

:keyboard: 测试用例 1: 测试TreeMap容器put接口

```kotlin
private fun testTreeMap(): Long {
        val map = TreeMap<Int, String>()
        return measureTimeMillis {
            for (i in 1..50000) {
                map[i] = "Value $i"
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.000932 ms |


### android.TreeMap.remove

:keyboard: 测试用例 2: 测试TreeMap容器remove接口 

```kotlin
private fun testTreeMap(): Long {
        val map = TreeMap<Int, String>()
        for (i in 1..50000) {
            map[i] = "Value $i"
        }
        return measureTimeMillis {
            for (i in 1..50000) {
                map.remove(i)
            }
        }
    }

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.00037 ms |

### android.TreeMap.get

:keyboard: 测试用例 3: 测试TreeMap容器get接口 

```kotlin
private fun testTreeMap(): Long {
        val map = TreeMap<Int, String>()
        for (i in 1..50000) {
            map[i] = "Value $i"
        }
        return measureTimeMillis {
            for (i in 1..50000) {
                map.get(i)
            }
        }
    }
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.00028 ms |


[Android Phone]: ../../../device/#android-phone