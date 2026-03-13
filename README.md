# @les3dev/capacitor-bundle-path

Retrieve the file system path to a bundled asset, or `undefined` if the asset is not found.

## Install

<docgen-install>

<!--INSTALL_TABS_START-->

> **npm**
>
> ```bash
> npm install @les3dev/capacitor-bundle-path
> npx cap sync
> ```

> **pnpm**
>
> ```bash
> pnpm add @les3dev/capacitor-bundle-path
> pnpm exec cap sync
> ```

> **bun**
>
> ```bash
> bun add @les3dev/capacitor-bundle-path
> bunx cap sync
> ```

<!--INSTALL_TABS_END-->

</docgen-install>

<!--DOCGEN_INSTALL_END-->

## API

<docgen-index>

- [`get_path(...)`](#get_path)
- [Interfaces](#interfaces)

</docgen-index>

<docgen-api>

### get_path(...)

```typescript
get_path(options: GetPathOptions) => Promise<GetPathResult>
```

Returns the native file system path for a given bundled asset path.
Returns `undefined` in the `path` field if the asset is not found.

| Param         | Type                                                      |
| ------------- | --------------------------------------------------------- |
| **`options`** | <code><a href="#getpathoptions">GetPathOptions</a></code> |

**Returns:** <code>Promise&lt;<a href="#getpathresult">GetPathResult</a>&gt;</code>

---

### Interfaces

#### GetPathOptions

| Prop       | Type                | Description                             |
| ---------- | ------------------- | --------------------------------------- |
| **`path`** | <code>string</code> | The relative path to the bundled asset. |

#### GetPathResult

| Prop       | Type                             | Description                                                             |
| ---------- | -------------------------------- | ----------------------------------------------------------------------- |
| **`path`** | <code>string \| undefined</code> | The native file system path, or `undefined` if the asset was not found. |

</docgen-api>

## Usage

```typescript
import { BundlePath } from '@les3dev/capacitor-bundle-path';

const result = await BundlePath.get_path({ path: 'assets/myfile.json' });

if (result.path) {
  console.log('Native path:', result.path);
} else {
  console.warn('Asset not found');
}
```
