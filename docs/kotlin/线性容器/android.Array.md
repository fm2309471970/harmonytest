# android.Array
### android.Array.元素插入

:keyboard: 测试用例 1: Array默认使用下标插入、访问元素测试Array的数据插入

```kotlin
private fun testArray(): Long {
        val array = IntArray(500000)
        return measureTimeMillis {
            for (i in 0 until 500000) {
                array[i] = i
            }
        }
    }
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Android Phone] | 0.00004 ms |

[Android Phone]: ../../../device/#android-phone