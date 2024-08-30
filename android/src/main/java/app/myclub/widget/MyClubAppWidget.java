package app.myclub.widget;

import android.util.Log;

public class MyClubAppWidget {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
