import { registerPlugin } from '@capacitor/core';

import type { BundlePathPlugin } from './definitions';

const BundlePath = registerPlugin<BundlePathPlugin>('BundlePath', {
  web: () => import('./web').then((m) => new m.BundlePathWeb()),
});

export * from './definitions';
export { BundlePath };
