package cordova.plugin.bakaan.gioplus;

import com.growingio.android.sdk.collection.GrowingIO;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class echoes a string called from JavaScript.
 */
public class Gioplus extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("getDeviceId")) {
            String message = args.getString(0);
            this.getDeviceId(message, callbackContext);
            return true;
        } else if (action.equals("getSessionId")) {
            String message = args.getString(0);
            this.getDeviceId(message, callbackContext);
            return true;
        }
        return false;
    }

    private void getDeviceId(String message, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) {

            GrowingIO gio = GrowingIO.getInstance();
            String deviceid = gio.getDeviceId();
            JSONObject json = new JSONObject();
            try {
                json.put("deviceid", deviceid);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            callbackContext.success(json);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }

    private void getSessionId(String message, CallbackContext callbackContext) {
        if (message != null && message.length() > 0) {
            callbackContext.success(message);
            GrowingIO gio = GrowingIO.getInstance();
            String sessionid = gio.getSessionId();
            JSONObject json = new JSONObject();
            try {
                json.put("sessionid", sessionid);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            callbackContext.success(json);

        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }
}
