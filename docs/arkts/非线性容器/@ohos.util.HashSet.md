# @ohos.util.HashSet
### @ohos.util.HashSet.add

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-hashset-0000001478341437-V2#ZH-CN_TOPIC_0000001573929325__add)

:keyboard: 测试用例 1: 测试HashSet容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: @ohos.util.HashSet.add
  // desc: 测试HashSet容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let hashSet = new HashSet<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    hashSet.add(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 1 | [Huawei Phone] | 0.00018 ms |

---

### @ohos.util.HashSet.remove

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-hashset-0000001478341437-V2#ZH-CN_TOPIC_0000001573929325__remove)

:keyboard: 测试用例 2: 测试HashSet容器remove接口

```typescript
function test_remove(loopCount: number): string {
  // test: @ohos.util.HashSet.remove
  // desc: 测试HashSet容器remove接口
  const test_id = 2;

  // prepare: setup objects to test
  let hashSet = new HashSet<number>();
  for (let i = 0; i < 50000; i++) {
    hashSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    hashSet.remove(i);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Huawei Phone] | 0.00012 ms |

---

### @ohos.util.HashSet.has

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-hashset-0000001478341437-V2#ZH-CN_TOPIC_0000001573929325__has)

:keyboard: 测试用例 3: 测试在最优情况下（查找存在的第一个元素）HashSet容器的has接口，HashSet长度为50000

```typescript
function test_hasBest(loopCount: number): string {
  // test: @ohos.util.HashSet.has
  // desc: 测试在最优情况下（查找存在的第一个元素）HashSet容器的has接口，HashSet长度为50000
  const test_id = 3;

  // prepare: setup objects to test
  let hashSet = new HashSet<number>();
  for (let i = 0; i < 50000; i++) {
    hashSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    hashSet.has(0);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 3 | [Huawei Phone] | 0.00012 ms |

---



:keyboard: 测试用例 4: 测试在最坏情况下（查找不存在的元素）HashSet容器的has接口，HashSet长度为50000

```typescript
function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.HashSet.has
  // desc: 测试在最坏情况下（查找不存在的元素）HashSet容器的has接口，HashSet长度为50000
  const test_id = 4;

  // prepare: setup objects to test
  let hashSet = new HashSet<number>();
  for (let i = 0; i < 50000; i++) {
    hashSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    hashSet.has(50000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 4 | [Huawei Phone] | 0.00034 ms |

---

[Huawei Phone]: ../../../device#huawei-phone
```

