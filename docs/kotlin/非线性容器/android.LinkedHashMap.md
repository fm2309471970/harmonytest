# android.LinkedHashMap
### android.LinkedHashMap.put

:keyboard: 测试用例 1: 测试LinkedHashMap容器put接口

```kotlin
private fun testLinkedHashMap(): Long {
        val map = LinkedHashMap<Int, String>()
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
| 测试用例 1 | [Android Phone] | 0.000704 ms |


### android.LinkedHashMap.remove

:keyboard: 测试用例 2: 测试LinkedHashMap容器remove接口 

```kotlin
private fun testLinkedHashMap(): Long {
        val map = LinkedHashMap<Int, String>()
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
| 测试用例 2 | [Android Phone] | 0.000212 ms |

### android.LinkedHashMap.get

:keyboard: 测试用例 3: 测试LinkedHashMap容器get接口 

```kotlin
private fun testLinkedHashMap(): Long {
        val map = LinkedHashMap<Int, String>()
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
| 测试用例 3 | [Android Phone] | 0.00018 ms |


[Android Phone]: ../../../device/#android-phone