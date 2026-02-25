import { WebPlugin } from '@capacitor/core';

import type { BundlePathPlugin } from './definitions';

export class BundlePathWeb extends WebPlugin implements BundlePathPlugin {
  async get_path(options: { path: string }): Promise<{ path?: string }> {
    return { path: options.path };
  }
}
