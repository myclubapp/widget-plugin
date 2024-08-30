export interface MyClubAppWidgetPlugin {
  /**
   * Echoes the value back to the caller.
   * @param options An object containing the value to be echoed.
   * @returns A promise that resolves with the echoed value.
   */
  echo(options: { value: string }): Promise<{ value: string }>;

  /**
   * Sets an item in UserDefaults within a specified App Group.
   * @param options An object containing the key, value, and App Group identifier.
   * @returns A promise that resolves with a boolean indicating success.
   */
  setItem(options: {
    key: string;
    value: string;
    group: string;
  }): Promise<{ results: boolean }>;

  /**
   * Reloads all widget timelines in the app.
   * @returns A promise that resolves with a boolean indicating success.
   */
  reloadAllTimelines(): Promise<{ results: boolean }>;

  /**
   * Reloads specific widget timelines in the app by their kind.
   * @param options An object containing the kind of the widget to reload.
   * @returns A promise that resolves with a boolean indicating success.
   */
  reloadTimelines(options: { ofKind: string }): Promise<{ results: boolean }>;
}
