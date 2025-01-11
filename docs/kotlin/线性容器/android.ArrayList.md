# android.ArrayList
### android.ArrayList.add

:keyboard: 测试用例 1: 测试ArrayList容器add接口

```kotlin
private fun testArrayList(): Long {
        val list = ArrayList<Int>()
        var cnt:Int = 0
        return measureTimeMillis {
            for (i in 1..500000) {
                list.add(i)
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.0002 ms |


### android.ArrayList.get

:keyboard: 测试用例 2: 测试ArrayList容器get接口 

```kotlin
private fun testArrayList(): Long {
    val list = ArrayList<Int>()
    var cnt:Int = 0
    for (i in 1..500000) {
        list.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            cnt = list.get(i)
        }
    }
}

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.000006 ms |

### android.ArrayList.indexOf

:keyboard: 测试用例 3: 测试ArrayList容器indexOf接口 

```kotlin
private fun testArrayList(): Long {
    val list = ArrayList<Int>()
    var cnt:Int = 0
    for (i in 1..500000) {
        list.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            cnt = list.indexOf(i)
        }
    }
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.000142 ms |


[Android Phone]: ../../../device/#android-phone