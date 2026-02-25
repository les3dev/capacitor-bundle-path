package dev.les3.capacitor.bundlepath;

import android.content.Context;
// import com.getcapacitor.Logger;

public class BundlePath {

    private final Context context;

    public BundlePath(Context context) {
        this.context = context;
    }

    public String get_path(String path) {
        try {
            context.getAssets().open(path).close();
            return "file:///android_asset/" + path;
        } catch (Exception e) {
            return null;
        }
    }
}
