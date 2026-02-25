export interface BundlePathPlugin {
  get_path(options: { path: string }): Promise<{ path?: string }>;
}
