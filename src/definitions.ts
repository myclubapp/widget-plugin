export interface MyClubAppWidgetPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
