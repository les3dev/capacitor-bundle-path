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

* [`get_path(...)`](#get_path)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### get_path(...)

```typescript
get_path(options: { path: string; }) => any
```

| Param         | Type                           |
| ------------- | ------------------------------ |
| **`options`** | <code>{ path: string; }</code> |

**Returns:** <code>any</code>

--------------------

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
