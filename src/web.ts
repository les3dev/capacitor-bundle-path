import { WebPlugin } from '@capacitor/core';

import type { BundlePathPlugin } from './definitions';

export class BundlePathWeb extends WebPlugin implements BundlePathPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
