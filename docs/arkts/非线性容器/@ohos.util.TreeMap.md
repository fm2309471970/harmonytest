# @ohos.util.TreeMap

### @ohos.util.TreeMap.set

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-treemap-0000001478341441-V2#ZH-CN_TOPIC_0000001523488482__set)

:keyboard: 测试用例 1: 测试TreeMap容器set接口

```typescript
function test_set(loopCount: number): string {
  // test: TreeMap.set
  // desc: 测试TreeMap容器set接口
  const test_id = 1;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.set(`key${i}`, i);
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
| 测试用例 1 | [Huawei Phone] | 0.00112 ms |

---

### @ohos.util.TreeMap.get

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-treemap-0000001478341441-V2#ZH-CN_TOPIC_0000001523488482__get)

:keyboard: 测试用例 1: 测试TreeMap容器get接口

```typescript
function test_get(loopCount: number): string {
  // test: TreeMap.get
  // desc: 测试TreeMap容器get接口
  const test_id = 2;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.get(`key${i}`);
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
| 测试用例 1 | [Huawei Phone] | 0.0005 ms |

---

### @ohos.util.TreeMap.remove

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-treemap-0000001478341441-V2#ZH-CN_TOPIC_0000001523488482__remove)

:keyboard: 测试用例 1: 测试TreeMap容器remove接口

```typescript
function test_remove(loopCount: number): string {
  // test: TreeMap.remove
  // desc: 测试TreeMap容器remove接口
  const test_id = 3;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.remove(`key${i}`);
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
| 测试用例 1 | [Huawei Phone] | 0.00046 ms |

---

### @ohos.util.TreeMap.hasKey
:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-treemap-0000001478341441-V2#ZH-CN_TOPIC_0000001523488482__haskey)
#### 最优情况



:keyboard: 测试用例 1: 测试在最优情况下（查找存在的第一个元素）TreeMap容器的hasKey接口

```typescript
function test_hasKeyBest(loopCount: number): string {
  // test: TreeMap.hasKey
  // desc: 测试在最优情况下（查找存在的第一个元素）TreeMap容器的hasKey接口，TreeMap长度为 50000
  const test_id = 4;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasKey('key0');
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
| 测试用例 1 | [Huawei Phone] | 0.00028 ms |

---

#### 最坏情况


:keyboard: 测试用例 2: 测试在最坏情况下（查找不存在的元素）TreeMap容器的hasKey接口

```typescript
function test_hasKeyWorst(loopCount: number): string {
  // test: TreeMap.hasKey
  // desc: 测试在最坏情况下（查找不存在的元素）TreeMap容器的hasKey接口，TreeMap长度为 50000
  const test_id = 5;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 50000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasKey('nonexistentKey');
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
| 测试用例 2 | [Huawei Phone] | 0.00038 ms |

---

### @ohos.util.TreeMap.hasValue
:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-treemap-0000001478341441-V2#ZH-CN_TOPIC_0000001523488482__hasvalue)
#### 最优情况



:keyboard: 测试用例 1: 测试在最优情况下（查找存在的第一个元素对应的值）TreeMap容器的hasValue接口

```typescript
function test_hasValueBest(loopCount: number): string {
  // test: TreeMap.hasValue
  // desc: 测试在最优情况下（查找存在的第一个元素对应的值）TreeMap容器的hasValue接口，TreeMap长度为 50000
  const test_id = 6;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 5000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasValue(0);
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
| 测试用例 1 | [Huawei Phone] | 0.005 ms |

---

#### 最坏情况


:keyboard: 测试用例 2: 测试在最坏情况下（查找不存在的值）TreeMap容器的hasValue接口

```typescript
function test_hasValueWorst(loopCount: number): string {
  // test: TreeMap.hasValue
  // desc: 测试在最坏情况下（查找不存在的值）TreeMap容器的hasValue接口，TreeMap长度为 50000
  const test_id = 7;

  // prepare: setup objects to test
  let treeMap = new TreeMap<string, number>();
  for (let i = 0; i < 5000; i++) {
    treeMap.set(`key${i}`, i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    treeMap.hasValue(100000);
  }
  const endTime = new Date();

  // finish
  const executionTime = endTime.getTime() - startTime.getTime();
  const averageTime = executionTime

 / loopCount;
  return `!${test_id}: ${averageTime} ms`;
}
```

:joystick: 测试结果

| 测试用例   | 测试平台           | 运行时间        |
|:-------|:---------------|:------------|
| 测试用例 2 | [Huawei Phone] | 0.02024 ms |
[Huawei Phone]: ../../../device#huawei-phone
---