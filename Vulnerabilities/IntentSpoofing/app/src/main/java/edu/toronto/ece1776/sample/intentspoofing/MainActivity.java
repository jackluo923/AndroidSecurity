package edu.toronto.ece1776.sample.intentspoofing;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public static class UnprotectedReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            String extra = intent.getStringExtra("extra_string");
            Log.e("TEST", "Received: " + extra);
        }
    }
}
