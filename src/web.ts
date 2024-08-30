import { WebPlugin } from '@capacitor/core';

import type { MyClubAppWidgetPlugin } from './definitions';

export class MyClubAppWidgetWeb
  extends WebPlugin
  implements MyClubAppWidgetPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async setItem(options: {
    key: string;
    value: string;
    group: string;
  }): Promise<{ results: boolean }> {
    console.log('SET ITEM', options);

    // Since the web doesn't have a direct equivalent of iOS's UserDefaults with App Groups,
    // you could use localStorage or sessionStorage for the web.
    // Here's an example using localStorage:
    try {
      localStorage.setItem(`${options.group}-${options.key}`, options.value);
      return { results: true };
    } catch (e) {
      console.error('Error setting item in localStorage', e);
      return { results: false };
    }
  }

  async reloadAllTimelines(): Promise<{ results: boolean }> {
    console.log('RELOAD ALL TIMELINES');

    // On the web, there's no direct equivalent to WidgetCenter's reloadAllTimelines,
    // so you can just return a dummy response.
    return { results: true };
  }

  async reloadTimelines(options: {
    ofKind: string;
  }): Promise<{ results: boolean }> {
    console.log('RELOAD TIMELINES of kind', options.ofKind);

    // On the web, there's no direct equivalent to WidgetCenter's reloadTimelines,
    // so this is a no-op that just returns a dummy success response.
    return { results: true };
  }
}
