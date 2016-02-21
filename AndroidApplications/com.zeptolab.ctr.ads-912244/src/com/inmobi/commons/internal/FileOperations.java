package com.inmobi.commons.internal;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.admarvel.android.ads.Constants;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.StreamCorruptedException;

public class FileOperations {
    public static boolean getBooleanPreferences(Context context, String str, String str2) {
        if (context != null && str != null && str2 != null && !AdTrackerConstants.BLANK.equals(str.trim()) && !AdTrackerConstants.BLANK.equals(str2.trim())) {
            return context.getSharedPreferences(str, 0).getBoolean(str2, false);
        }
        Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
        return false;
    }

    public static int getIntPreferences(Context context, String str, String str2) {
        if (context != null && str != null && str2 != null && !AdTrackerConstants.BLANK.equals(str.trim()) && !AdTrackerConstants.BLANK.equals(str2.trim())) {
            return context.getSharedPreferences(str, 0).getInt(str2, 0);
        }
        Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
        return 0;
    }

    public static long getLongPreferences(Context context, String str, String str2) {
        if (context != null && str != null && str2 != null && !AdTrackerConstants.BLANK.equals(str.trim()) && !AdTrackerConstants.BLANK.equals(str2.trim())) {
            return context.getSharedPreferences(str, 0).getLong(str2, 0);
        }
        Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
        return 0;
    }

    public static String getPreferences(Context context, String str, String str2) {
        if (context != null && str != null && str2 != null && !AdTrackerConstants.BLANK.equals(str.trim()) && !AdTrackerConstants.BLANK.equals(str2.trim())) {
            return context.getSharedPreferences(str, 0).getString(str2, null);
        }
        Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to get preferences..App context NULL");
        return null;
    }

    public static boolean isFileExist(Context context, String str) {
        return new File(context.getDir(i.a, 0), str).exists();
    }

    public static String readFileAsString(Context context, String str) {
        File file = new File(context.getCacheDir().getAbsolutePath() + File.separator + str);
        file.createNewFile();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            stringBuffer.append(Constants.FORMATTER).append(readLine);
        }
        bufferedReader.close();
        return stringBuffer.length() >= 1 ? stringBuffer.substring(1).toString() : AdTrackerConstants.BLANK;
    }

    public static Object readFromFile(Context context, String str) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2;
        Throwable th;
        Object obj = null;
        if (context == null || str == null || AdTrackerConstants.BLANK.equals(str.trim())) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot read map application context or Filename NULL");
            return null;
        } else {
            try {
                objectInputStream = new ObjectInputStream(new FileInputStream(new File(context.getDir(i.a, 0), str)));
                try {
                    obj = objectInputStream.readObject();
                    objectInputStream2 = objectInputStream;
                } catch (EOFException e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "End of File reached");
                    objectInputStream2 = objectInputStream;
                    if (objectInputStream2 != null) {
                        return obj;
                    }
                    objectInputStream2.close();
                    return obj;
                } catch (FileNotFoundException e2) {
                    objectInputStream2 = objectInputStream;
                    th = e2;
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File doesnot exist", th);
                    if (objectInputStream2 != null) {
                        return obj;
                    }
                    objectInputStream2.close();
                    return obj;
                } catch (StreamCorruptedException e3) {
                    objectInputStream2 = objectInputStream;
                    th = e3;
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File corrupted", th);
                    if (objectInputStream2 != null) {
                        return obj;
                    }
                    objectInputStream2.close();
                    return obj;
                } catch (IOException e4) {
                    objectInputStream2 = objectInputStream;
                    th = e4;
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File IO Exception", th);
                    if (objectInputStream2 != null) {
                        return obj;
                    }
                    objectInputStream2.close();
                    return obj;
                } catch (ClassNotFoundException e5) {
                    objectInputStream2 = objectInputStream;
                    th = e5;
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Error: class not found", th);
                    if (objectInputStream2 != null) {
                        return obj;
                    }
                    objectInputStream2.close();
                    return obj;
                }
            } catch (EOFException e6) {
                objectInputStream = null;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "End of File reached");
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                    return obj;
                }
                objectInputStream2.close();
                return obj;
            } catch (FileNotFoundException e7) {
                th = e7;
                objectInputStream2 = null;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File doesnot exist", th);
                if (objectInputStream2 != null) {
                    return obj;
                }
                objectInputStream2.close();
                return obj;
            } catch (StreamCorruptedException e8) {
                th = e8;
                objectInputStream2 = null;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File corrupted", th);
                if (objectInputStream2 != null) {
                    return obj;
                }
                objectInputStream2.close();
                return obj;
            } catch (IOException e9) {
                th = e9;
                objectInputStream2 = null;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Event log File IO Exception", th);
                if (objectInputStream2 != null) {
                    return obj;
                }
                objectInputStream2.close();
                return obj;
            } catch (ClassNotFoundException e10) {
                th = e10;
                objectInputStream2 = null;
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Error: class not found", th);
                if (objectInputStream2 != null) {
                    return obj;
                }
                objectInputStream2.close();
                return obj;
            }
            if (objectInputStream2 != null) {
                return obj;
            }
            try {
                objectInputStream2.close();
                return obj;
            } catch (IOException e11) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Close Exception");
                return Boolean.valueOf(false);
            }
        }
    }

    public static boolean saveToFile(Context context, String str, Object obj) {
        if (context == null || str == null || AdTrackerConstants.BLANK.equals(str.trim()) || obj == null) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot read map application context of Filename NULL");
            return false;
        } else {
            try {
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(context.getDir(i.a, 0), str), false));
                objectOutputStream.writeObject(obj);
                objectOutputStream.flush();
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Close Exception");
                        return false;
                    }
                }
                return true;
            } catch (FileNotFoundException e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File Not found", e2);
                return false;
            } catch (IOException e3) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Log File IO Exception", e3);
                return false;
            }
        }
    }

    public static void setPreferences(Context context, String str, String str2, float f) {
        if (context == null || str == null || str2 == null || AdTrackerConstants.BLANK.equals(str.trim()) || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
        } else {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putFloat(str2, f);
            edit.commit();
        }
    }

    public static void setPreferences(Context context, String str, String str2, int i) {
        if (context == null || str == null || str2 == null || AdTrackerConstants.BLANK.equals(str.trim()) || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
        } else {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putInt(str2, i);
            edit.commit();
        }
    }

    public static void setPreferences(Context context, String str, String str2, long j) {
        if (context == null || str == null || str2 == null || AdTrackerConstants.BLANK.equals(str.trim()) || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
        } else {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putLong(str2, j);
            edit.commit();
        }
    }

    public static void setPreferences(Context context, String str, String str2, boolean z) {
        if (context == null || str == null || str2 == null || AdTrackerConstants.BLANK.equals(str.trim()) || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.debug(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
        } else {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putBoolean(str2, z);
            edit.commit();
        }
    }

    public static boolean setPreferences(Context context, String str, String str2, String str3) {
        if (context == null || str == null || str2 == null || AdTrackerConstants.BLANK.equals(str.trim()) || AdTrackerConstants.BLANK.equals(str2.trim())) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to set preferences..App context NULL");
            return false;
        } else {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putString(str2, str3);
            edit.commit();
            return true;
        }
    }

    public static void writeStringToFile(Context context, String str, String str2, boolean z) {
        File file = new File(context.getCacheDir().getAbsolutePath() + File.separator + str);
        file.createNewFile();
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, z));
        bufferedWriter.write(str2);
        bufferedWriter.close();
    }
}