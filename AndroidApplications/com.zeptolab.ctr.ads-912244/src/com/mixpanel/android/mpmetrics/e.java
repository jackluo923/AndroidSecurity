package com.mixpanel.android.mpmetrics;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.mixpanel.android.surveys.SurveyActivity;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class e {
    public static String a;

    static {
        a = "MixpanelAPI.ConfigurationChecker";
    }

    e() {
    }

    private static String a(String str) {
        return "<receiver android:name=\"com.mixpanel.android.mpmetrics.GCMReceiver\"\n          android:permission=\"com.google.android.c2dm.permission.SEND\" >\n    <intent-filter>\n       <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n       <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n       <category android:name=\"" + str + "\" />\n" + "    </intent-filter>\n" + "</receiver>";
    }

    public static boolean a(Context context) {
        if (VERSION.SDK_INT < 8) {
            Log.i(a, "Push not supported in SDK " + VERSION.SDK_INT);
            return false;
        } else {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            String str = packageName + ".permission.C2D_MESSAGE";
            try {
                packageManager.getPermissionInfo(str, AccessibilityNodeInfoCompat.ACTION_SCROLL_FORWARD);
                if (packageManager.checkPermission("com.google.android.c2dm.permission.RECEIVE", packageName) != 0) {
                    Log.w(a, "Package does not have permission com.google.android.c2dm.permission.RECEIVE");
                    Log.i(a, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />");
                    return false;
                } else if (packageManager.checkPermission("android.permission.INTERNET", packageName) != 0) {
                    Log.w(a, "Package does not have permission android.permission.INTERNET");
                    Log.i(a, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.INTERNET\" />");
                    return false;
                } else if (packageManager.checkPermission("android.permission.GET_ACCOUNTS", packageName) != 0) {
                    Log.w(a, "Package does not have permission android.permission.GET_ACCOUNTS");
                    Log.i(a, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />");
                    return false;
                } else if (packageManager.checkPermission("android.permission.WAKE_LOCK", packageName) != 0) {
                    Log.w(a, "Package does not have permission android.permission.WAKE_LOCK");
                    Log.i(a, "You can fix this by adding the following to your AndroidManifest.xml file:\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />");
                    return false;
                } else {
                    try {
                        ActivityInfo[] activityInfoArr = packageManager.getPackageInfo(packageName, GoogleScorer.CLIENT_PLUS).receivers;
                        if (activityInfoArr == null || activityInfoArr.length == 0) {
                            Log.w(a, "No receiver for package " + packageName);
                            Log.i(a, "You can fix this with the following into your <application> tag:\n" + a(packageName));
                            return false;
                        } else {
                            Set hashSet = new HashSet();
                            int length = activityInfoArr.length;
                            int i = 0;
                            while (i < length) {
                                ActivityInfo activityInfo = activityInfoArr[i];
                                if ("com.google.android.c2dm.permission.SEND".equals(activityInfo.permission)) {
                                    hashSet.add(activityInfo.name);
                                }
                                i++;
                            }
                            if (hashSet.isEmpty()) {
                                Log.w(a, "No receiver allowed to receive com.google.android.c2dm.permission.SEND");
                                Log.i(a, "You can fix by pasting the following into the <application> tag in your AndroidManifest.xml:\n" + a(packageName));
                                return false;
                            } else if (a(context, hashSet, "com.google.android.c2dm.intent.REGISTRATION") && a(context, hashSet, "com.google.android.c2dm.intent.RECEIVE")) {
                                return true;
                            } else {
                                return false;
                            }
                        }
                    } catch (NameNotFoundException e) {
                        Log.w(a, "Could not get receivers for package " + packageName);
                        return false;
                    }
                }
            } catch (NameNotFoundException e2) {
                Log.w(a, "Application does not define permission " + str);
                Log.i(a, "You will need to add the following lines to your application manifest:\n<permission android:name=\"" + packageName + ".permission.C2D_MESSAGE\" android:protectionLevel=\"signature\" />\n" + "<uses-permission android:name=\"" + packageName + ".permission.C2D_MESSAGE\" />");
                return false;
            }
        }
    }

    private static boolean a(Context context, Set set, String str) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        Intent intent = new Intent(str);
        intent.setPackage(packageName);
        List queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, ApiEventType.API_MRAID_PLAY_AUDIO);
        if (queryBroadcastReceivers.isEmpty()) {
            Log.w(a, "No receivers for action " + str);
            Log.i(a, "You can fix by pasting the following into the <application> tag in your AndroidManifest.xml:\n" + a(packageName));
            return false;
        } else {
            Iterator it = queryBroadcastReceivers.iterator();
            while (it.hasNext()) {
                String str2 = ((ResolveInfo) it.next()).activityInfo.name;
                if (!set.contains(str2)) {
                    Log.w(a, "Receiver " + str2 + " is not set with permission com.google.android.c2dm.permission.SEND");
                    Log.i(a, "Please add the attribute 'android:permission=\"com.google.android.c2dm.permission.SEND\"' to your <receiver> tag");
                    return false;
                }
            }
            return true;
        }
    }

    public static boolean b(Context context) {
        Intent intent = new Intent(context, SurveyActivity.class);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        intent.addFlags(AccessibilityNodeInfoCompat.ACTION_SET_SELECTION);
        if (context.getPackageManager().queryIntentActivities(intent, 0).size() != 0) {
            return true;
        }
        Log.w(a, SurveyActivity.class.getName() + " is not registered as an activity in your application, so surveys can't be shown.");
        Log.i(a, "Please add the child tag <activity android:name=\"com.mixpanel.android.surveys.SurveyActivity\" /> to your <application> tag.");
        return false;
    }
}