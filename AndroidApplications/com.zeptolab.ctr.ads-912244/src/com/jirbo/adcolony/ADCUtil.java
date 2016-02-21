package com.jirbo.adcolony;

import android.content.pm.PackageManager.NameNotFoundException;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.UUID;

class ADCUtil {
    static byte[] byte_buffer;
    static StringBuilder string_buffer;

    static class Stopwatch {
        long start_ms;

        Stopwatch() {
            this.start_ms = System.currentTimeMillis();
        }

        double elapsed_seconds() {
            return ((double) (System.currentTimeMillis() - this.start_ms)) / 1000.0d;
        }

        void restart() {
            this.start_ms = System.currentTimeMillis();
        }

        public String toString() {
            return ADCUtil.format(elapsed_seconds(), GoogleScorer.CLIENT_PLUS);
        }
    }

    static class Timer {
        double target_time;

        Timer(double d) {
            this.target_time = (double) System.currentTimeMillis();
            restart(d);
        }

        boolean expired() {
            return remaining_seconds() == 0.0d;
        }

        double remaining_seconds() {
            double currentTimeMillis = this.target_time - ((double) System.currentTimeMillis()) / 1000.0d;
            return currentTimeMillis <= 0.0d ? 0.0d : currentTimeMillis;
        }

        void restart(double d) {
            this.target_time = ((double) System.currentTimeMillis()) / 1000.0d + d;
        }

        public String toString() {
            return ADCUtil.format(remaining_seconds(), GoogleScorer.CLIENT_PLUS);
        }
    }

    static {
        byte_buffer = new byte[1024];
        string_buffer = new StringBuilder();
    }

    ADCUtil() {
    }

    static boolean application_exists(String str) {
        try {
            AdColony.activity().getApplication().getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    static String application_version() {
        try {
            return AdColony.activity().getPackageManager().getPackageInfo(AdColony.activity().getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            ADC.log_error("Failed to retrieve package info.");
            return "1.0";
        }
    }

    static String calculate_sha1(String str) {
        try {
            return AeSimpleSHA1.sha1(str);
        } catch (Exception e) {
            return null;
        }
    }

    static String create_uuid() {
        return UUID.randomUUID().toString();
    }

    static double current_time() {
        return ((double) System.currentTimeMillis()) / 1000.0d;
    }

    static String format(double d, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        format(d, i, stringBuilder);
        return stringBuilder.toString();
    }

    static void format(double d, int i, StringBuilder stringBuilder) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            stringBuilder.append(d);
        } else {
            if (d < 0.0d) {
                d = -d;
                stringBuilder.append('-');
            }
            if (i == 0) {
                stringBuilder.append(Math.round(d));
            } else {
                long pow = (long) Math.pow(10.0d, (double) i);
                long round = Math.round(((double) pow) * d);
                stringBuilder.append(round / pow);
                stringBuilder.append('.');
                long j = round % pow;
                if (j == 0) {
                    int i2 = 0;
                    while (i2 < i) {
                        stringBuilder.append('0');
                        i2++;
                    }
                } else {
                    round = j * 10;
                    while (round < pow) {
                        stringBuilder.append('0');
                        round *= 10;
                    }
                    stringBuilder.append(j);
                }
            }
        }
    }

    static String load_file(String str) {
        return load_file(str, AdTrackerConstants.BLANK);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.lang.String load_file(java.lang.Object r7, java.lang.String r8) {
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.ADCUtil.load_file(java.lang.String, java.lang.String):java.lang.String");
        /*
        r1 = 0;
        if (r7 == 0) goto L_0x0068;
    L_0x0003:
        r0 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x0059 }
        r2 = "Loading ";
        r0 = r0.print(r2);	 Catch:{ IOException -> 0x0059 }
        r0.println(r7);	 Catch:{ IOException -> 0x0059 }
        r3 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0059 }
        r3.<init>(r7);	 Catch:{ IOException -> 0x0059 }
        r4 = byte_buffer;	 Catch:{ IOException -> 0x0059 }
        monitor-enter(r4);	 Catch:{ IOException -> 0x0059 }
        r0 = string_buffer;	 Catch:{ all -> 0x0056 }
        r2 = 0;
        r0.setLength(r2);	 Catch:{ all -> 0x0056 }
        r0 = string_buffer;	 Catch:{ all -> 0x0056 }
        r0.append(r8);	 Catch:{ all -> 0x0056 }
        r0 = byte_buffer;	 Catch:{ all -> 0x0056 }
        r2 = 0;
        r5 = byte_buffer;	 Catch:{ all -> 0x0056 }
        r5 = r5.length;	 Catch:{ all -> 0x0056 }
        r0 = r3.read(r0, r2, r5);	 Catch:{ all -> 0x0056 }
        r2 = r0;
    L_0x002c:
        r0 = -1;
        if (r2 == r0) goto L_0x004b;
    L_0x002f:
        r0 = r1;
    L_0x0030:
        if (r0 >= r2) goto L_0x003f;
    L_0x0032:
        r5 = string_buffer;	 Catch:{ all -> 0x0056 }
        r6 = byte_buffer;	 Catch:{ all -> 0x0056 }
        r6 = r6[r0];	 Catch:{ all -> 0x0056 }
        r6 = (char) r6;	 Catch:{ all -> 0x0056 }
        r5.append(r6);	 Catch:{ all -> 0x0056 }
        r0 = r0 + 1;
        goto L_0x0030;
    L_0x003f:
        r0 = byte_buffer;	 Catch:{ all -> 0x0056 }
        r2 = 0;
        r5 = byte_buffer;	 Catch:{ all -> 0x0056 }
        r5 = r5.length;	 Catch:{ all -> 0x0056 }
        r0 = r3.read(r0, r2, r5);	 Catch:{ all -> 0x0056 }
        r2 = r0;
        goto L_0x002c;
    L_0x004b:
        r3.close();	 Catch:{ all -> 0x0056 }
        r0 = string_buffer;	 Catch:{ all -> 0x0056 }
        r0 = r0.toString();	 Catch:{ all -> 0x0056 }
        monitor-exit(r4);	 Catch:{ all -> 0x0056 }
    L_0x0055:
        return r0;
    L_0x0056:
        r0 = move-exception;
        monitor-exit(r4);	 Catch:{ all -> 0x0056 }
        throw r0;	 Catch:{ IOException -> 0x0059 }
    L_0x0059:
        r0 = move-exception;
        r0 = com.jirbo.adcolony.ADCLog.error;
        r1 = "Unable to load ";
        r0 = r0.print(r1);
        r0.println(r7);
        r0 = "";
        goto L_0x0055;
    L_0x0068:
        r0 = "";
        goto L_0x0055;
        */
    }

    static String package_name() {
        return ADC.activity().getPackageName();
    }
}