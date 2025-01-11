# @ohos.util.LightWeightMap
### @ohos.util.LightWeightMap.get

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#get)

:keyboard: 测试用例 1: 测试LightWeightMap容器get接口

```typescript
function test_get(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.get
  // desc: 测试LightWeightMap容器get接口
  const test_id = 1;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();
  for (let i = 0; i < 50000; i++) {
    lightWeightMap.set(i, `Value${i}`);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.get(i);
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

---

### @ohos.util.LightWeightMap.set

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#set)

:keyboard: 测试用例 2: 测试LightWeightMap容器set接口

```typescript
function test_set(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.set
  // desc: 测试LightWeightMap容器set接口
  const test_id = 2;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.set(i, `Value${i}`);
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
| 测试用例 2 | [Huawei Phone] | 0.18 ms |

---

### @ohos.util.LightWeightMap.hasKey (最优情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#hasKey)

:keyboard: 测试用例 3: 测试在最优情况下（查找存在的第一个键）LightWeightMap容器的hasKey接口，LightWeightMap长度为50000

```typescript
function test_hasKeyBest(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.hasKey
  // desc: 测试在最优情况下（查找存在的第一个键）LightWeightMap容器的hasKey接口，LightWeightMap长度为50000
  const test_id = 3;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();
  for (let i = 0; i < 50000; i++) {
    lightWeightMap.set(i, `Value${i}`);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.hasKey(0);
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
| 测试用例 3 | [Huawei Phone] | 0.09 ms |

---

### @ohos.util.LightWeightMap.hasKey (最坏情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#hasKey)

:keyboard: 测试用例 4: 测试在最坏情况下（查找不存在的键）LightWeightMap容器的hasKey接口，LightWeightMap长度为50000

```typescript
function test_hasKeyWorst(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.hasKey
  // desc: 测试在最坏情况下（查找不存在的键）LightWeightMap容器的hasKey接口，LightWeightMap长度为50000
  const test_id = 4;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();
  for (let i = 0; i < 50000; i++) {
    lightWeightMap.set(i, `Value${i}`);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.hasKey(50000);
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
| 测试用例 4 | [Huawei Phone] | 0.22 ms |

---

### @ohos.util.LightWeightMap.hasValue (最优情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#hasValue)

:keyboard: 测试用例 5: 测试在最优情况下（查找存在的第一个值）LightWeightMap容器的hasValue接口，LightWeightMap长度为50000

```typescript
function test_hasValueBest(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.hasValue
  // desc: 测试在最优情况下（查找存在的第一个值）LightWeightMap容器的hasValue接口，LightWeightMap长度为50000
  const test_id = 5;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();
  for (let i = 0; i < 5000; i++) {
    lightWeightMap.set(i, `Value${i}`);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.hasValue(`Value0`);
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
| 测试用例 5 | [Huawei Phone] | 0.11 ms |

---

### @ohos.util.LightWeightMap.hasValue (最坏情况)

:book: [官方API文档](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/js-apis-lightweightmap-0000001427585156-V3#hasValue)

:keyboard: 测试用例 6: 测试在最坏情况下（查找不存在的值）LightWeightMap容器的hasValue接口，LightWeightMap长度为50000

```typescript
function test_hasValueWorst(loopCount: number): string {
  // test: @ohos.util.LightWeightMap.hasValue
  // desc: 测试在最坏情况下（查找不存在的值）LightWeightMap容器的hasValue接口，LightWeightMap长度为50000
  const test_id = 6;

  // prepare: setup objects to test
  let lightWeightMap = new LightWeightMap<number, string>();
  for (let i = 0; i < 5000; i++) {


    lightWeightMap.set(i, `Value${i}`);
  }

  // test
  const startTime = new Date();
  for (let i = 0; i < loopCount; i++) {
    lightWeightMap.hasValue(`NonExistentValue`);
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
| 测试用例 6 | [Huawei Phone] | 0.20 ms |

---

[Huawei Phone]: ../../device/#huawei-phone
```
