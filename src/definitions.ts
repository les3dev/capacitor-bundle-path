export interface BundlePathPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
