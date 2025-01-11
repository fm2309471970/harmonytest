# @ohos.util.LightWeightSet
### @ohos.util.LightWeightSet.add

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-lightweightset-0000001477981481-V2#ZH-CN_TOPIC_0000001523968842__add)

:keyboard: 测试用例 1: 测试LightWeightSet容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.add
  // desc: 测试LightWeightSet容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.add(i);
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
| 测试用例 1 | [Huawei Phone] | 0.00012 ms |

---

### @ohos.util.LightWeightSet.remove

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-lightweightset-0000001477981481-V2#ZH-CN_TOPIC_0000001523968842__remove)

:keyboard: 测试用例 2: 测试LightWeightSet容器remove接口

```typescript
function test_remove(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.remove
  // desc: 测试LightWeightSet容器remove接口
  const test_id = 2;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 50000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.remove(i);
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
| 测试用例 2 | [Huawei Phone] | 0.0135 ms |

---

### @ohos.util.LightWeightSet.has

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-lightweightset-0000001477981481-V2#ZH-CN_TOPIC_0000001523968842__has)

:keyboard: 测试用例 3: 测试在最优情况下（查找存在的第一个元素）LightWeightSet容器的has接口，LightWeightSet长度为50000

```typescript
function test_hasBest(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.has
  // desc: 测试在最优情况下（查找存在的第一个元素）LightWeightSet容器的has接口，LightWeightSet长度为50000
  const test_id = 3;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 5000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.has(0);
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



:keyboard: 测试用例 4: 测试在最坏情况下（查找不存在的元素）LightWeightSet容器的has接口，LightWeightSet长度为50000

```typescript
function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.LightWeightSet.has
  // desc: 测试在最坏情况下（查找不存在的元素）LightWeightSet容器的has接口，LightWeightSet长度为50000
  const test_id = 4;

  // prepare: setup objects to test
  let lightWeightSet = new LightWeightSet<number>();
  for (let i = 0; i < 5000; i++) {
    lightWeightSet.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightSet.has(50000);
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
| 测试用例 4 | [Huawei Phone] | 0.0001 ms |

---

[Huawei Phone]: ../../../device#huawei-phone
```
