package dev.les3.capacitor.bundlepath;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "BundlePath")
public class BundlePathPlugin extends Plugin {

    private BundlePath implementation = new BundlePath();

    @PluginMethod
    public void get_path(PluginCall call) {
        String path = call.getString("path");
        JSObject ret = new JSObject();

        ret.put("path", implementation.get_path(path));
        call.resolve(ret);
    }
}
