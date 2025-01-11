# android.HashMap
### android.HashMap.put

:keyboard: 测试用例 1: 测试HashMap容器put接口

```kotlin
private fun testHashMap(): Long {
        val map = HashMap<Int, String>()
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
| 测试用例 1 | [Android Phone] | 0.000668 ms |


### android.HashMap.remove

:keyboard: 测试用例 2: 测试HashMap容器remove接口 

```kotlin
private fun testHashMap(): Long {
        val map = HashMap<Int, String>()
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
| 测试用例 2 | [Android Phone] | 0.000238 ms |

### android.HashMap.get

:keyboard: 测试用例 3: 测试HashMap容器get接口 

```kotlin
private fun testHashMap(): Long {
        val map = HashMap<Int, String>()
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
| 测试用例 3 | [Android Phone] | 0.0002 ms |


[Android Phone]: ../../../device/#android-phone