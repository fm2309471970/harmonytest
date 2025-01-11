# @ohos.util.Queue

### @ohos.util.Queue.add

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-queue-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__add)

:keyboard: 测试用例 1: 测试Queue容器add接口

```typescript
function test_add(loopCount: number): string {
  // test: Queue.add
  // desc: 测试Queue容器add接口
  const test_id = 1;

  // prepare: setup objects to test
  let queue = new Queue<number>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
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
| 测试用例 1 | [Huawei Phone] | 0.14 ms |

---

### @ohos.util.Queue.pop

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-queue-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__pop)

:keyboard: 测试用例 1: 测试Queue容器pop接口

```typescript
function test_pop(loopCount: number): string {
  // test: Queue.pop
  // desc: 测试Queue容器pop接口
  const test_id = 2;

  // prepare: setup objects to test
  let queue = new Queue<number>();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.pop();
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
| 测试用例 1 | [Huawei Phone] | 0.15 ms |

---

### @ohos.util.Queue.getFirst

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-queue-0000001427585156-V3#ZH-CN_TOPIC_0000001523488842__getFirst)

:keyboard: 测试用例 1: 测试Queue容器getFirst接口

```typescript
function test_getFirst(loopCount: number): string {
  // test: Queue.getFirst
  // desc: 测试Queue容器getFirst接口
  const test_id = 3;

  // prepare: setup objects to test
  let queue = new Queue<number>();
  for (let i = 0; i < loopCount; i++) {
    queue.add(i);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    queue.getFirst();
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
| 测试用例 1 | [Huawei Phone] | 0.12 ms |

[Huawei Phone]: ../../device/#huawei-phone

---

这个文档以代码段1的结构呈现了您提供的代码段2的相关信息。如果您有更多的代码段2格式的内容，随时可以提供给我，我将帮助您生成相应的代码段1文档。