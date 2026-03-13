# @les3dev/capacitor-bundle-path

Retrieve the file system path to a bundled asset, or `undefined` if the asset is not found.

## Install

<!--DOCGEN_INSTALL_START-->

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
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

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

### Basic

```typescript
import { BundlePath } from '@les3dev/capacitor-bundle-path';

const result = await BundlePath.get_path({ path: 'public/assets/video.mp4' });

if (result.path) {
  console.log('Native path:', result.path);
} else {
  console.warn('Asset not found');
}
```

### Playing a bundled video with AVPlayer (or any native video player)

A common use case is resolving a bundled video asset to its native path so it can be passed to a native player like AVPlayer on iOS.

```typescript
import { BundlePath } from '@les3dev/capacitor-bundle-path';
import { VideoPlayer } from '@capgo/capacitor-video-player';

const result = await BundlePath.get_path({ path: 'public/assets/video.mp4' });

if (!result.path) {
  console.error('Asset not found');
  return;
}

await VideoPlayer.initPlayer({
  url: result.path, // native file:// path resolved from the bundle
  mode: 'fullscreen',
  playerId: 'video-player',
  componentTag: 'div',
});

await VideoPlayer.play({ playerId: 'video-player' });
```
