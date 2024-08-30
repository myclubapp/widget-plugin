# myclub-widget-plugin

Enable myclub App Widget

## Install

```bash
npm install myclub-widget-plugin
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`setItem(...)`](#setitem)
* [`reloadAllTimelines()`](#reloadalltimelines)
* [`reloadTimelines(...)`](#reloadtimelines)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

Echoes the value back to the caller.

| Param         | Type                            | Description                                  |
| ------------- | ------------------------------- | -------------------------------------------- |
| **`options`** | <code>{ value: string; }</code> | An object containing the value to be echoed. |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### setItem(...)

```typescript
setItem(options: { key: string; value: string; group: string; }) => Promise<{ results: boolean; }>
```

Sets an item in UserDefaults within a specified App Group.

| Param         | Type                                                        | Description                                                    |
| ------------- | ----------------------------------------------------------- | -------------------------------------------------------------- |
| **`options`** | <code>{ key: string; value: string; group: string; }</code> | An object containing the key, value, and App Group identifier. |

**Returns:** <code>Promise&lt;{ results: boolean; }&gt;</code>

--------------------


### reloadAllTimelines()

```typescript
reloadAllTimelines() => Promise<{ results: boolean; }>
```

Reloads all widget timelines in the app.

**Returns:** <code>Promise&lt;{ results: boolean; }&gt;</code>

--------------------


### reloadTimelines(...)

```typescript
reloadTimelines(options: { ofKind: string; }) => Promise<{ results: boolean; }>
```

Reloads specific widget timelines in the app by their kind.

| Param         | Type                             | Description                                            |
| ------------- | -------------------------------- | ------------------------------------------------------ |
| **`options`** | <code>{ ofKind: string; }</code> | An object containing the kind of the widget to reload. |

**Returns:** <code>Promise&lt;{ results: boolean; }&gt;</code>

--------------------

</docgen-api>
