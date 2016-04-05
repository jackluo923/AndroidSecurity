package com.SoundboardEngine;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class SoundSaver
{
  public final int ALARM;
  public final int NOTIFICATION;
  public final int RINGTONE;
  private int appName;
  private ContentResolver contentResolver;
  private Context context;
  boolean isAlarm;
  boolean isNotification;
  boolean isRingtone;
  
  public SoundSaver(Context paramContext, int paramInt)
  {
    int i = 1;
    RINGTONE = i;
    i = 2;
    NOTIFICATION = i;
    i = 4;
    ALARM = i;
    isRingtone = bool;
    isAlarm = bool;
    isNotification = bool;
    context = paramContext;
    Object localObject = context;
    localObject = ((Context)localObject).getContentResolver();
    contentResolver = ((ContentResolver)localObject);
    appName = paramInt;
  }
  
  public void RemoveSound(int paramInt, String paramString)
  {
    String str1 = getFileName(paramString);
    String str2 = getFolderName();
    File localFile = new java/io/File;
    Object localObject = new java/lang/StringBuilder;
    String str3 = "/sdcard/media/audio/";
    ((StringBuilder)localObject).<init>(str3);
    localObject = ((StringBuilder)localObject).append(str2);
    localObject = ((StringBuilder)localObject).toString();
    localFile.<init>((String)localObject, str1);
    localObject = localFile.getAbsolutePath();
    Uri localUri = MediaStore.Audio.Media.getContentUriForPath((String)localObject);
    localObject = contentResolver;
    str3 = "title=?";
    int i = 1;
    String[] arrayOfString = new String[i];
    int j = 0;
    arrayOfString[j] = paramString;
    ((ContentResolver)localObject).delete(localUri, str3, arrayOfString);
  }
  
  public void SaveSound(int paramInt1, String paramString, int paramInt2)
  {
    localObject10 = null;
    Uri localUri1 = null;
    localContentValues = new android/content/ContentValues;
    localContentValues.<init>();
    Object localObject1 = this;
    Object localObject4 = paramString;
    for (;;)
    {
      try
      {
        String str1 = ((SoundSaver)localObject1).getFileName((String)localObject4);
        String str2 = getFolderName();
        try
        {
          localObject12 = new java/io/File;
          localObject15 = new java/lang/StringBuilder;
          String str8 = "/sdcard/media/audio/";
          ((StringBuilder)localObject15).<init>(str8);
          localObject1 = localObject15;
          localObject4 = str2;
          localObject15 = ((StringBuilder)localObject1).append((String)localObject4);
          str8 = "/";
          localObject15 = ((StringBuilder)localObject15).append(str8);
          localObject15 = ((StringBuilder)localObject15).toString();
          ((File)localObject12).<init>((String)localObject15);
          ((File)localObject12).mkdir();
          localObject12 = new java/io/File;
          localObject15 = new java/lang/StringBuilder;
          str8 = "/sdcard/media/audio/";
          ((StringBuilder)localObject15).<init>(str8);
          localObject1 = localObject15;
          localObject4 = str2;
          localObject15 = ((StringBuilder)localObject1).append((String)localObject4);
          localObject15 = ((StringBuilder)localObject15).toString();
          str8 = ".nomedia";
          ((File)localObject12).<init>((String)localObject15, str8);
          ((File)localObject12).createNewFile();
        }
        catch (Exception localException2)
        {
          try
          {
            Object localObject12;
            Object localObject15;
            int i1;
            localObject2 = context;
            localObject13 = localObject2;
            localObject2 = localObject13;
            j = paramInt2;
            localObject6 = localUri2;
            RingtoneManager.setActualDefaultRingtoneUri((Context)localObject2, j, (Uri)localObject6);
            return;
          }
          catch (Throwable localThrowable2)
          {
            Object localObject6;
            AssetFileDescriptor localAssetFileDescriptor;
            localThrowable1 = localThrowable2;
            str7 = "exception";
            localObject18 = localThrowable1.getMessage();
            Log.v(str7, (String)localObject18);
            continue;
          }
          localException2 = localException2;
          localException1 = localException2;
          str4 = "creating folder exception";
          localObject17 = localException1.getMessage();
          Log.e(str4, (String)localObject17);
          continue;
        }
        localFile = new java/io/File;
        localObject12 = new java/lang/StringBuilder;
        localObject15 = "/sdcard/media/audio/";
        ((StringBuilder)localObject12).<init>((String)localObject15);
        localObject1 = localObject12;
        localObject4 = str2;
        localObject12 = ((StringBuilder)localObject1).append((String)localObject4);
        localObject12 = ((StringBuilder)localObject12).toString();
        localObject1 = localFile;
        localObject4 = localObject12;
        localObject6 = str1;
        ((File)localObject1).<init>((String)localObject4, (String)localObject6);
      }
      catch (Exception localException3)
      {
        label436:
        localObject9 = localException3;
      }
      for (;;)
      {
        try
        {
          localObject12 = new java/lang/StringBuilder;
          localObject15 = "android.resource://";
          ((StringBuilder)localObject12).<init>((String)localObject15);
          localObject1 = this;
          localObject1 = context;
          localObject15 = localObject1;
          localObject15 = ((Context)localObject15).getPackageName();
          localObject12 = ((StringBuilder)localObject12).append((String)localObject15);
          localObject15 = "/";
          localObject12 = ((StringBuilder)localObject12).append((String)localObject15);
          localObject15 = String.valueOf(paramInt1);
          localObject12 = ((StringBuilder)localObject12).append((String)localObject15);
          localObject12 = ((StringBuilder)localObject12).toString();
          localUri1 = Uri.parse((String)localObject12);
          localObject10 = localFile;
          localObject1 = this;
        }
        catch (Exception localException4)
        {
          String str5;
          String str6;
          int i2;
          Object localObject5;
          int k;
          IOException localIOException1;
          Object localObject14;
          int i3;
          boolean bool4;
          Boolean localBoolean6;
          Boolean localBoolean1;
          SoundSaver localSoundSaver1;
          Boolean localBoolean2;
          SoundSaver localSoundSaver2;
          Boolean localBoolean3;
          SoundSaver localSoundSaver3;
          Boolean localBoolean4;
          boolean bool5;
          Boolean localBoolean7;
          SoundSaver localSoundSaver4;
          Boolean localBoolean5;
          boolean bool6;
          Object localObject18;
          SoundSaver localSoundSaver5;
          boolean bool1;
          Object localObject3;
          Object localObject19;
          int i4;
          Object localObject7;
          Object localObject8;
          Throwable localThrowable1;
          String str7;
          localObject9 = localException4;
          localObject10 = localFile;
          continue;
        }
        try
        {
          localObject1 = contentResolver;
          localObject12 = localObject1;
          localObject15 = "r";
          localObject1 = localObject12;
          localObject4 = localUri1;
          localObject6 = localObject15;
          localAssetFileDescriptor = ((ContentResolver)localObject1).openAssetFileDescriptor((Uri)localObject4, (String)localObject6);
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          localObject9 = localFileNotFoundException;
          localAssetFileDescriptor = null;
          str6 = "exception";
          localObject17 = ((FileNotFoundException)localObject9).getMessage();
          Log.e(str6, (String)localObject17);
          break;
          i2 = 0;
          localObject2 = localFileOutputStream;
          localObject5 = localObject11;
          localObject6 = i2;
          k = m;
          ((FileOutputStream)localObject2).write((byte[])localObject5, localObject6, k);
          localObject2 = localFileInputStream;
          localObject5 = localObject11;
          m = ((FileInputStream)localObject2).read((byte[])localObject5);
          break label436;
        }
      }
      i1 = 1024;
      localObject1 = i1;
      try
      {
        localObject1 = new byte[localObject1];
        localObject11 = localObject1;
        localFileInputStream = localAssetFileDescriptor.createInputStream();
        localFileOutputStream = new java/io/FileOutputStream;
        localObject1 = localFileOutputStream;
        localObject4 = localObject10;
        ((FileOutputStream)localObject1).<init>((File)localObject4);
        localObject1 = localFileInputStream;
        localObject4 = localObject11;
        m = ((FileInputStream)localObject1).read((byte[])localObject4);
        i1 = -1;
        localObject1 = m;
        localObject4 = i1;
        if (localObject1 != localObject4) {
          break;
        }
        localFileOutputStream.close();
      }
      catch (IOException localIOException2)
      {
        Object localObject11;
        FileInputStream localFileInputStream;
        FileOutputStream localFileOutputStream;
        int m;
        Object localObject13;
        Uri localUri3;
        String str3;
        boolean bool2;
        long l;
        Object localObject16;
        int i;
        boolean bool3;
        localIOException1 = localIOException2;
        Object localObject2 = this;
        localObject2 = context;
        localObject14 = localObject2;
        Object localObject17 = localIOException1.getMessage();
        i3 = 0;
        localObject14 = Toast.makeText((Context)localObject14, (CharSequence)localObject17, i3);
        ((Toast)localObject14).show();
        localObject14 = "exception";
        localObject17 = localIOException1.getMessage();
        Log.e((String)localObject14, (String)localObject17);
        continue;
        localObject14 = "is_ringtone";
        bool4 = true;
        localBoolean6 = Boolean.valueOf(bool4);
        localContentValues.put((String)localObject14, localBoolean6);
        localObject14 = "is_alarm";
        localObject2 = this;
        localBoolean1 = isAlarm;
        localBoolean6 = localBoolean1;
        localBoolean6 = Boolean.valueOf(localBoolean6);
        localContentValues.put((String)localObject14, localBoolean6);
        localObject14 = "is_notification";
        localSoundSaver1 = this;
        localBoolean2 = isNotification;
        localBoolean6 = localBoolean2;
        localBoolean6 = Boolean.valueOf(localBoolean6);
        localContentValues.put((String)localObject14, localBoolean6);
        continue;
        localObject14 = "is_ringtone";
        localSoundSaver2 = this;
        localBoolean3 = isRingtone;
        localBoolean6 = localBoolean3;
        localBoolean6 = Boolean.valueOf(localBoolean6);
        localContentValues.put((String)localObject14, localBoolean6);
        localObject14 = "is_alarm";
        localSoundSaver3 = this;
        localBoolean4 = isAlarm;
        localBoolean6 = localBoolean4;
        localBoolean6 = Boolean.valueOf(localBoolean6);
        localContentValues.put((String)localObject14, localBoolean6);
        localObject14 = "is_notification";
        bool5 = true;
        localBoolean7 = Boolean.valueOf(bool5);
        localContentValues.put((String)localObject14, localBoolean7);
        continue;
        localObject14 = "is_ringtone";
        localSoundSaver4 = this;
        localBoolean5 = isRingtone;
        localBoolean7 = localBoolean5;
        localBoolean7 = Boolean.valueOf(localBoolean7);
        localContentValues.put((String)localObject14, localBoolean7);
        localObject14 = "is_alarm";
        bool6 = true;
        localObject18 = Boolean.valueOf(bool6);
        localContentValues.put((String)localObject14, (Boolean)localObject18);
        localObject14 = "is_notification";
        localSoundSaver5 = this;
        bool1 = isNotification;
        localObject18 = bool1;
        localObject18 = Boolean.valueOf(localObject18);
        localContentValues.put((String)localObject14, (Boolean)localObject18);
        continue;
        localObject3 = this;
        localObject3 = contentResolver;
        localObject14 = localObject3;
        localObject18 = "_id=?";
        i3 = 1;
        localObject3 = i3;
        localObject3 = new String[localObject3];
        localObject19 = localObject3;
        i4 = 0;
        localObject19[i4] = str3;
        localObject3 = localObject14;
        localObject5 = localUri3;
        localObject6 = localContentValues;
        localObject7 = localObject18;
        localObject8 = localObject19;
        ((ContentResolver)localObject3).update((Uri)localObject5, (ContentValues)localObject6, (String)localObject7, (String[])localObject8);
        localObject14 = new java/lang/StringBuilder;
        localObject18 = "content://media/internal/audio/media/";
        ((StringBuilder)localObject14).<init>((String)localObject18);
        localObject3 = localObject14;
        localObject5 = str3;
        localObject14 = ((StringBuilder)localObject3).append((String)localObject5);
        localObject14 = ((StringBuilder)localObject14).toString();
        Uri localUri2 = Uri.parse((String)localObject14);
        continue;
      }
      localObject13 = ((File)localObject10).getAbsolutePath();
      localUri3 = MediaStore.Audio.Media.getContentUriForPath((String)localObject13);
      localObject1 = this;
      localObject4 = localUri3;
      localObject6 = paramString;
      str3 = ((SoundSaver)localObject1).getInternalSoundId((Uri)localObject4, (String)localObject6);
      localObject13 = "-1";
      localObject1 = str3;
      localObject4 = localObject13;
      bool2 = ((String)localObject1).contentEquals((CharSequence)localObject4);
      localObject13 = "_data";
      localObject15 = ((File)localObject10).getAbsolutePath();
      localContentValues.put((String)localObject13, (String)localObject15);
      localObject13 = "title";
      localObject1 = localContentValues;
      localObject4 = localObject13;
      localObject6 = paramString;
      ((ContentValues)localObject1).put((String)localObject4, (String)localObject6);
      localObject13 = "mime_type";
      localObject15 = "audio/ogg";
      localContentValues.put((String)localObject13, (String)localObject15);
      localObject13 = "_size";
      l = ((File)localObject10).length();
      localObject16 = Long.valueOf(l);
      localContentValues.put((String)localObject13, (Long)localObject16);
      localObject13 = "artist";
      localObject1 = this;
      i = appName;
      localObject16 = i;
      localObject16 = Integer.valueOf(localObject16);
      localContentValues.put((String)localObject13, (Integer)localObject16);
      localObject13 = "is_music";
      bool3 = false;
      localObject17 = Boolean.valueOf(bool3);
      localContentValues.put((String)localObject13, (Boolean)localObject17);
      switch (paramInt2)
      {
      case 3: 
      default: 
        int n = 0;
        if (!bool2) {
          break label1259;
        }
        localObject2 = this;
        localObject2 = contentResolver;
        localObject13 = localObject2;
        localObject2 = localObject13;
        localObject4 = localUri3;
        localObject6 = localContentValues;
        localUri2 = ((ContentResolver)localObject2).insert((Uri)localObject4, (ContentValues)localObject6);
        localObject2 = this;
        int j;
        Exception localException1;
        String str4;
        str5 = "exception";
        localObject17 = ((Exception)localObject9).getMessage();
        Log.e(str5, (String)localObject17);
      }
    }
  }
  
  private String getFileName(String paramString)
  {
    Object localObject = new java/lang/StringBuilder;
    String str1 = " ";
    String str2 = "_";
    str1 = paramString.replace(str1, str2);
    str2 = "?";
    String str3 = "";
    str1 = str1.replace(str2, str3);
    str2 = ":";
    str3 = "_";
    str1 = str1.replace(str2, str3);
    str2 = "-";
    str3 = "_";
    str1 = str1.replace(str2, str3);
    str1 = String.valueOf(str1);
    ((StringBuilder)localObject).<init>(str1);
    str1 = ".ogg";
    localObject = ((StringBuilder)localObject).append(str1);
    localObject = ((StringBuilder)localObject).toString();
    return (String)localObject;
  }
  
  private String getFolderName()
  {
    Object localObject = context;
    int i = appName;
    localObject = ((Context)localObject).getString(i);
    String str1 = " ";
    String str2 = "_";
    localObject = ((String)localObject).replace(str1, str2);
    str1 = "?";
    str2 = "";
    localObject = ((String)localObject).replace(str1, str2);
    str1 = "-";
    str2 = "_";
    localObject = ((String)localObject).replace(str1, str2);
    return (String)localObject;
  }
  
  private String getInternalSoundId(Uri paramUri, String paramString)
  {
    int i3 = 3;
    int i2 = 2;
    int i1 = 0;
    int n = 1;
    ContentResolver localContentResolver1 = contentResolver;
    int k = 4;
    Object localObject2 = new String[k];
    Object localObject1 = "_id";
    localObject2[i1] = localObject1;
    localObject1 = "is_ringtone";
    localObject2[n] = localObject1;
    localObject1 = "is_alarm";
    localObject2[i2] = localObject1;
    localObject1 = "is_notification";
    localObject2[i3] = localObject1;
    String str7 = "title=?";
    String[] arrayOfString = new String[n];
    arrayOfString[i1] = paramString;
    String str8 = null;
    localObject1 = paramUri;
    Cursor localCursor = localContentResolver1.query((Uri)localObject1, (String[])localObject2, str7, arrayOfString, str8);
    String str9 = "-1";
    int i = localCursor.getCount();
    Object localObject3;
    int j;
    int m;
    if (i > 0)
    {
      localCursor.moveToFirst();
      str9 = localCursor.getString(i1);
      String str1 = localCursor.getString(n);
      localObject1 = "1";
      boolean bool1 = str1.contentEquals((CharSequence)localObject1);
      isRingtone = bool1;
      String str2 = localCursor.getString(i2);
      localObject1 = "1";
      boolean bool2 = str2.contentEquals((CharSequence)localObject1);
      isAlarm = bool2;
      String str3 = localCursor.getString(i3);
      localObject1 = "1";
      boolean bool3 = str3.contentEquals((CharSequence)localObject1);
      isNotification = bool3;
      String str4 = "is ringtone ";
      localObject1 = new java/lang/StringBuilder;
      localObject2 = localCursor.getString(n);
      localObject2 = String.valueOf(localObject2);
      ((StringBuilder)localObject1).<init>((String)localObject2);
      localObject2 = " - ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      boolean bool4 = isRingtone;
      String str5 = String.valueOf(bool4);
      localObject1 = ((StringBuilder)localObject1).append(str5);
      localObject1 = ((StringBuilder)localObject1).toString();
      Log.e(str4, (String)localObject1);
      str4 = "is alarm ";
      localObject1 = new java/lang/StringBuilder;
      str5 = localCursor.getString(i2);
      str5 = String.valueOf(str5);
      ((StringBuilder)localObject1).<init>(str5);
      str5 = " - ";
      localObject1 = ((StringBuilder)localObject1).append(str5);
      boolean bool5 = isAlarm;
      String str6 = String.valueOf(bool5);
      localObject1 = ((StringBuilder)localObject1).append(str6);
      localObject1 = ((StringBuilder)localObject1).toString();
      Log.e(str4, (String)localObject1);
      str4 = "is notification ";
      localObject1 = new java/lang/StringBuilder;
      str6 = localCursor.getString(i3);
      str6 = String.valueOf(str6);
      ((StringBuilder)localObject1).<init>(str6);
      str6 = " - ";
      localObject1 = ((StringBuilder)localObject1).append(str6);
      boolean bool6 = isNotification;
      localObject3 = String.valueOf(bool6);
      localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
      localObject1 = ((StringBuilder)localObject1).toString();
      Log.e(str4, (String)localObject1);
      j = localCursor.getCount();
      if (j > n) {
        m = 1;
      }
    }
    for (;;)
    {
      j = localCursor.getCount();
      if (m >= j)
      {
        localCursor.close();
        return str9;
      }
      ContentResolver localContentResolver2 = contentResolver;
      localObject1 = "_id=?";
      localObject3 = new String[n];
      str7 = localCursor.getString(i1);
      localObject3[i1] = str7;
      localContentResolver2.delete(paramUri, (String)localObject1, (String[])localObject3);
      localCursor.moveToNext();
      m += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.SoundboardEngine.SoundSaver
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */