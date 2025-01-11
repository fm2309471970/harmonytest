# android.LinkedList
### android.LinkedList.add

:keyboard: 测试用例 1: 测试LinkedList容器add接口

```kotlin
private fun testLinkedList(): Long {
        val list = LinkedList<Int>()
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
| 测试用例 1 | [Android Phone] | 0.00014 ms |


### android.LinkedList.remove

:keyboard: 测试用例 2: 测试LinkedList容器remove接口 

```kotlin
private fun testLinkedList(): Long {
    val list = LinkedList<Int>()
    var cnt:Int = 0
    for (i in 1..500000) {
        list.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            list.remove(i)
        }
    }
}

```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Android Phone] | 0.000196 ms |

### android.LinkedList.get

:keyboard: 测试用例 3: 测试LinkedList容器get接口 

```kotlin
private fun testLinkedList(): Long {
    val list = LinkedList<Int>()
    var cnt:Int = 0
    for (i in 1..500000) {
        list.add(i)
    }
    return measureTimeMillis {
        for (i in 1..500000) {
            list.get(i)
        }
    }
}
```
:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Android Phone] | 0.00001 ms |


[Android Phone]: ../../../device/#android-phone