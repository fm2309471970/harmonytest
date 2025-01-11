# @ohos.util.Deque
### @ohos.util.Deque.insertFront

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-deque-0000001427745116-V2#ZH-CN_TOPIC_0000001523648606__insertfront)

:keyboard: 测试用例 1: 测试Deque容器insertFront接口

```typescript
function test_insertFront(loopCount: number): string {
  // test: @ohos.util.Deque.insertFront
  // desc: 测试Deque容器insertFront接口
  const test_id = 1;

  // prepare: setup objects to test
  let deque = new Deque<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.insertFront(1);
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

### @ohos.util.Deque.insertEnd

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-deque-0000001427745116-V2#ZH-CN_TOPIC_0000001523648606__insertend)

:keyboard: 测试用例 2: 测试Deque容器insertEnd接口

```typescript
function test_insertEnd(loopCount: number): string {
  // test: @ohos.util.Deque.insertEnd
  // desc: 测试Deque容器insertEnd接口
  const test_id = 2;

  // prepare: setup objects to test
  let deque = new Deque<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(1);
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
| 测试用例 2 | [Huawei Phone] | 0.00018 ms |

---

### @ohos.util.Deque.has

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-deque-0000001427745116-V2#ZH-CN_TOPIC_0000001523648606__has)

:keyboard: 测试用例 3: 测试在最坏情况下（查找元素不存在的情况）Deque容器的has接口，Deque长度为50000

```typescript
function test_hasWorst(loopCount: number): string {
  // test: @ohos.util.Deque.has
  // desc: 测试在最坏情况下（查找元素不存在的情况）Deque容器的has接口，Deque长度为50000
  const test_id = 3;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < 50000; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.has(50000);
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
| 测试用例 1 | [Huawei Phone] | 0.1188 ms |

---





:keyboard: 测试用例 4: 测试在最优情况下（查找元素为第一个）Deque容器的has接口，Deque长度为50000

```typescript
function test_hasBest(loopCount: number): string {
  // test: @ohos.util.Deque.has
  // desc: 测试在最优情况下（查找元素为第一个）Deque容器的has接口，Deque长度为50000
  const test_id = 4;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < 50000; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.has(0);
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

### @ohos.util.Deque.popFirst

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-deque-0000001427745116-V2#ZH-CN_TOPIC_0000001523648606__popfirst)

:keyboard: 测试用例 5: 测试Deque容器popFirst接口

```typescript
function test_popFirst(loopCount: number): string {
  // test: @ohos.util.Deque.popFirst
  // desc: 测试Deque容器popFirst接口
  const test_id = 5;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.popFirst();
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
| 测试用例 5 | [Huawei Phone] | 0.00018 ms |

---

### @ohos.util.Deque.popLast

:book: [官方API文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/js-apis-deque-0000001427745116-V2#ZH-CN_TOPIC_0000001523648606__poplast)

:keyboard: 测试用例 6: 测试Deque容器popLast接口

```typescript
function test_popLast(loopCount: number): string {
  // test: @ohos.util.Deque.popLast
  // desc: 测试Deque容器popLast接口
  const test_id = 6;

  // prepare: setup objects to test
  let deque = new Deque<number>();
  for (let i = 0; i < loopCount; i++) {
    deque.insertEnd(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    deque.popLast();
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
| 测试用例 6 | [Huawei Phone] | 0.00018 ms |

---

[Huawei Phone]: ../../../device/#huawei-phone
```

