package com.facebook.ads.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class AdAnalogData {
    private static Sensor accelerometer;
    private static volatile float[] accelerometerValues;
    private static Map analogInfo;
    private static Sensor gyroscope;
    private static volatile float[] gyroscopeValues;
    private static String[] sensorDimensions;
    private static SensorManager sensorManager;

    private static class AdSensorEventListener implements SensorEventListener {
        private AdSensorEventListener() {
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor == accelerometer) {
                accelerometerValues = sensorEvent.values;
            } else if (sensorEvent.sensor == gyroscope) {
                gyroscopeValues = sensorEvent.values;
            }
            AdAnalogData.stopUpdate(this);
        }
    }

    static {
        sensorManager = null;
        accelerometer = null;
        gyroscope = null;
        analogInfo = new ConcurrentHashMap();
        sensorDimensions = new String[]{"x", "y", "z"};
    }

    public static Map getAnalogInfo() {
        Map hashMap = new HashMap();
        hashMap.putAll(analogInfo);
        putSensorData(hashMap);
        return hashMap;
    }

    private static void putBatteryData(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("level", -1);
            int intExtra2 = registerReceiver.getIntExtra("scale", -1);
            int intExtra3 = registerReceiver.getIntExtra("status", -1);
            int i = intExtra3 == 2 || intExtra3 == 5;
            float f = BitmapDescriptorFactory.HUE_RED;
            if (intExtra2 > 0) {
                f = (((float) intExtra) / ((float) intExtra2)) * 100.0f;
            }
            analogInfo.put("battery", Float.valueOf(f));
            analogInfo.put("charging", Integer.valueOf(i != 0 ? 1 : 0));
        }
    }

    private static void putDiskInfo(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long availableBlocks = (long) statFs.getAvailableBlocks();
        analogInfo.put("free_space", Long.valueOf(availableBlocks * ((long) statFs.getBlockSize())));
    }

    private static void putMemoryInfo(Context context) {
        MemoryInfo memoryInfo = new MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        analogInfo.put("available_memory", String.valueOf(memoryInfo.availMem));
    }

    private static void putSensorData(Map map) {
        int i = 0;
        float[] fArr = accelerometerValues;
        float[] fArr2 = gyroscopeValues;
        if (fArr != null) {
            int i2 = 0;
            while (i2 < fArr.length) {
                map.put("accelerometer_" + sensorDimensions[i2], Float.valueOf(fArr[i2]));
                i2++;
            }
        }
        if (fArr2 != null) {
            while (i < fArr2.length) {
                map.put("rotation_" + sensorDimensions[i], Float.valueOf(fArr2[i]));
                i++;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void startUpdate(android.content.Context r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.AdAnalogData.startUpdate(android.content.Context):void");
        /*
        r1 = com.facebook.ads.internal.AdAnalogData.class;
        monitor-enter(r1);
        putMemoryInfo(r5);	 Catch:{ all -> 0x005f }
        putDiskInfo(r5);	 Catch:{ all -> 0x005f }
        putBatteryData(r5);	 Catch:{ all -> 0x005f }
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0020;
    L_0x0010:
        r0 = "sensor";
        r0 = r5.getSystemService(r0);	 Catch:{ all -> 0x005f }
        r0 = (android.hardware.SensorManager) r0;	 Catch:{ all -> 0x005f }
        sensorManager = r0;	 Catch:{ all -> 0x005f }
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x0020;
    L_0x001e:
        monitor-exit(r1);
        return;
    L_0x0020:
        r0 = accelerometer;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x002d;
    L_0x0024:
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        r2 = 1;
        r0 = r0.getDefaultSensor(r2);	 Catch:{ all -> 0x005f }
        accelerometer = r0;	 Catch:{ all -> 0x005f }
    L_0x002d:
        r0 = gyroscope;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x003a;
    L_0x0031:
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        r2 = 4;
        r0 = r0.getDefaultSensor(r2);	 Catch:{ all -> 0x005f }
        gyroscope = r0;	 Catch:{ all -> 0x005f }
    L_0x003a:
        r0 = accelerometer;	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x004c;
    L_0x003e:
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        r2 = new com.facebook.ads.internal.AdAnalogData$AdSensorEventListener;	 Catch:{ all -> 0x005f }
        r3 = 0;
        r2.<init>();	 Catch:{ all -> 0x005f }
        r3 = accelerometer;	 Catch:{ all -> 0x005f }
        r4 = 3;
        r0.registerListener(r2, r3, r4);	 Catch:{ all -> 0x005f }
    L_0x004c:
        r0 = gyroscope;	 Catch:{ all -> 0x005f }
        if (r0 == 0) goto L_0x001e;
    L_0x0050:
        r0 = sensorManager;	 Catch:{ all -> 0x005f }
        r2 = new com.facebook.ads.internal.AdAnalogData$AdSensorEventListener;	 Catch:{ all -> 0x005f }
        r3 = 0;
        r2.<init>();	 Catch:{ all -> 0x005f }
        r3 = gyroscope;	 Catch:{ all -> 0x005f }
        r4 = 3;
        r0.registerListener(r2, r3, r4);	 Catch:{ all -> 0x005f }
        goto L_0x001e;
    L_0x005f:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
    }

    public static synchronized void stopUpdate(AdSensorEventListener adSensorEventListener) {
        synchronized (AdAnalogData.class) {
            if (sensorManager != null) {
                sensorManager.unregisterListener(adSensorEventListener);
            }
        }
    }
}