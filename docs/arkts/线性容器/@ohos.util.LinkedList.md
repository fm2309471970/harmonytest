# @ohos.util.LinkedList

### @ohos.util.LinkedList.addFirst

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-linkedlist-0000001427902748-V2#ZH-CN_TOPIC_0000001573928869__addfirst)

:keyboard: 测试用例 1: 测试LinkedList容器addFirst接口

```typescript
function test_addFirst(loopCount: number): string {
  // test: @ohos.util.LinkedList.addFirst
  // desc: 测试LinkedList容器addFirst接口
  const test_id = 1;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.addFirst(i);
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

### @ohos.util.LinkedList.add

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-linkedlist-0000001427902748-V2#ZH-CN_TOPIC_0000001573928869__add)

:keyboard: 测试用例 2: 测试LinkedList容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: @ohos.util.LinkedList.add
  // desc: 测试LinkedList容器add接口
  const test_id = 2;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.add(i);
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
| 测试用例 2 | [Huawei Phone] | 0.00016 ms |

---

### @ohos.util.LinkedList.has 

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-linkedlist-0000001427902748-V2#ZH-CN_TOPIC_0000001573928869__has)

:keyboard: 测试用例 3: 测试在最坏情况下（查找元素不存在的情况）LinkedList容器的has接口，LinkedList长度为50000

```typescript
function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.LinkedList.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）LinkedList容器的has接口，LinkedList长度为50000
  const test_id = 3;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();
  for (let i = 0; i < 50000; i++) {
    linkedList.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.has(50000);
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
| 测试用例 3 | [Huawei Phone] | 0.07972 ms |

---



:keyboard: 测试用例 4: 测试在最优情况下（查找元素为第一个）LinkedList容器的has接口，LinkedList长度为50000

```typescript
function test_hasBest(loopCount: number): string {
  // test: @ohos.util.LinkedList.has
  // desc: 测试在最优情况下（查找元素为第一个）LinkedList容器的has接口，LinkedList长度为50000
  const test_id = 4;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();
  for (let i = 0; i < 50000; i++) {
    linkedList.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.has(0);
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

### @ohos.util.LinkedList.insert

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-linkedlist-0000001427902748-V2#ZH-CN_TOPIC_0000001573928869__insert)

:keyboard: 测试用例 5: 测试LinkedList容器insert接口

```typescript
function test_insert(loopCount: number): string {
  // test: @ohos.util.LinkedList.insert
  // desc: 测试LinkedList容器insert接口
  const test_id = 5;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();
  for (let i = 0; i < 50000; i++) {
    linkedList.add(i);
  }
  const indexToInsert = 25000;

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.insert(indexToInsert, i);
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
| 测试用例 5 | [Huawei Phone] | 0.0335 ms |

---

### @ohos.util.LinkedList.get

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-linkedlist-0000001427902748-V2#ZH-CN_TOPIC_0000001573928869__get)

:keyboard: 测试用例 6: 测试LinkedList容器get接口

```typescript
function test_get(loopCount: number): string {
  // test: @ohos.util.LinkedList.get
  // desc: 测试LinkedList容器get接口
  const test_id = 6;

  // prepare: setup objects to test
  let linkedList = new LinkedList<number>();
  for (let i = 0; i < 50000; i++) {
    linkedList.add(i);
  }
  const indexToGet = 25000;

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    linkedList.get(indexToGet);
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
| 测试用例 6 | [Huawei Phone] | 0.03238 ms |

---

[Huawei Phone]: ../../../device#huawei-phone
