# @ohos.util.Vector

### @ohos.util.Vector.add

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-vector-0000001477981485-V2#ZH-CN_TOPIC_0000001523488906__add)

:keyboard: 测试用例 1: 测试Vector容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: @ohos.util.Vector.add
  // desc: 测试Vector容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let vector = new Vector<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.add(i);
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
| 测试用例 1 | [Huawei Phone] | 0.0001 ms |

---

### @ohos.util.Vector.insert

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-vector-0000001477981485-V2#ZH-CN_TOPIC_0000001523488906__insert)

:keyboard: 测试用例 2: 测试Vector容器insert接口

```typescript
function test_insert(loopCount: number): string {
  // test: @ohos.util.Vector.insert
  // desc: 测试Vector容器insert接口
  const test_id = 2;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }
  const indexToInsert = 25000;

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.insert(indexToInsert, i);
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
| 测试用例 2 | [Huawei Phone] | 0.0141 ms |

---

### @ohos.util.Vector.has
:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-vector-0000001477981485-V2#ZH-CN_TOPIC_0000001523488906__has)
#### 最优情况



:keyboard: 测试用例 3: 测试在最优情况下（查找元素为第一个）Vector容器的has接口

```typescript
function test_hasBest(loopCount: number): string {
  // test: @ohos.util.Vector.has
  // desc: 测试在最优情况下（查找元素为第一个）Vector容器的has接口，Vector长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.has(0);
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
| 测试用例 3 | [Huawei Phone] | 0.00008 ms |

---

#### 最坏情况

:keyboard: 测试用例 4: 测试在最坏情况下（查找元素不存在的情况）Vector容器的has接口

```typescript
function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.Vector.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）Vector容器的has接口，Vector长度为 50000
  const test_id = 3;

  // prepare: setup objects to test
  let vector = new Vector<number>();
  for (let i = 0; i < 50000; i++) {
    vector.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    vector.has(50000);
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
| 测试用例 4 | [Huawei Phone] | 0.0661 ms |
[Huawei Phone]: ../../../device#huawei-phone
---