package com.amazon.device.ads;

import android.app.Activity;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;

public class AdActivity extends Activity {
    protected static final String a = "adapter";
    private static final String b = "AdAdapter";
    private IAdActivityAdapter c;

    IAdActivityAdapter a() {
        String stringExtra = getIntent().getStringExtra(a);
        if (stringExtra == null) {
            Log.e(b, "Unable to launch the AdActivity due to an internal error.");
            return null;
        } else {
            try {
                try {
                    try {
                        return (IAdActivityAdapter) Class.forName(stringExtra).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    } catch (IllegalArgumentException e) {
                        Log.e(b, "Illegal arguments given to the default constructor.");
                        return null;
                    } catch (InstantiationException e2) {
                        Log.e(b, "Instantiation exception when instantiating the adapter.");
                        return null;
                    } catch (IllegalAccessException e3) {
                        Log.e(b, "Illegal access exception when instantiating the adapter.");
                        return null;
                    } catch (InvocationTargetException e4) {
                        Log.e(b, "Invocation target exception when instantiating the adapter.");
                        return null;
                    }
                } catch (SecurityException e5) {
                    Log.e(b, "Security exception when trying to get the default constructor.");
                    return null;
                } catch (NoSuchMethodException e6) {
                    Log.e(b, "No default constructor exists for the adapter.");
                    return null;
                }
            } catch (ClassNotFoundException e7) {
                Log.e(b, "Unable to get the adapter class.");
                return null;
            }
        }
    }

    public void onCreate(Bundle bundle) {
        InternalAdRegistration.getInstance().contextReceived(getApplicationContext());
        this.c = a();
        if (this.c == null) {
            finish();
        } else {
            this.c.setActivity(this);
            this.c.preOnCreate();
            super.onCreate(bundle);
            this.c.onCreate();
        }
    }

    public void onPause() {
        super.onPause();
        this.c.onPause();
    }

    public void onResume() {
        super.onResume();
        this.c.onResume();
    }

    public void onStop() {
        this.c.onStop();
        super.onStop();
    }
}