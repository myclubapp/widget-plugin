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
}
