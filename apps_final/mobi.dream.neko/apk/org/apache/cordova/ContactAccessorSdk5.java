package org.apache.cordova;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.util.Log;
import android.webkit.WebView;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.cordova.api.CordovaInterface;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ContactAccessorSdk5
  extends ContactAccessor
{
  private static final String EMAIL_REGEXP = ".+@.+\\.+.+";
  private static final long MAX_PHOTO_SIZE = 1048576L;
  private static final Map<String, String> dbMap = new HashMap();
  
  static
  {
    dbMap.put("id", "contact_id");
    dbMap.put("displayName", "display_name");
    dbMap.put("name", "data1");
    dbMap.put("name.formatted", "data1");
    dbMap.put("name.familyName", "data3");
    dbMap.put("name.givenName", "data2");
    dbMap.put("name.middleName", "data5");
    dbMap.put("name.honorificPrefix", "data4");
    dbMap.put("name.honorificSuffix", "data6");
    dbMap.put("nickname", "data1");
    dbMap.put("phoneNumbers", "data1");
    dbMap.put("phoneNumbers.value", "data1");
    dbMap.put("emails", "data1");
    dbMap.put("emails.value", "data1");
    dbMap.put("addresses", "data1");
    dbMap.put("addresses.formatted", "data1");
    dbMap.put("addresses.streetAddress", "data4");
    dbMap.put("addresses.locality", "data7");
    dbMap.put("addresses.region", "data8");
    dbMap.put("addresses.postalCode", "data9");
    dbMap.put("addresses.country", "data10");
    dbMap.put("ims", "data1");
    dbMap.put("ims.value", "data1");
    dbMap.put("organizations", "data1");
    dbMap.put("organizations.name", "data1");
    dbMap.put("organizations.department", "data5");
    dbMap.put("organizations.title", "data4");
    dbMap.put("birthday", "vnd.android.cursor.item/contact_event");
    dbMap.put("note", "data1");
    dbMap.put("photos.value", "vnd.android.cursor.item/photo");
    dbMap.put("urls", "data1");
    dbMap.put("urls.value", "data1");
  }
  
  public ContactAccessorSdk5(WebView paramWebView, CordovaInterface paramCordovaInterface)
  {
    mApp = paramCordovaInterface;
    mView = paramWebView;
  }
  
  private JSONObject addressQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("type", getAddressType(paramCursor.getInt(paramCursor.getColumnIndex("data2"))));
      localJSONObject.put("formatted", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("streetAddress", paramCursor.getString(paramCursor.getColumnIndex("data4")));
      localJSONObject.put("locality", paramCursor.getString(paramCursor.getColumnIndex("data7")));
      localJSONObject.put("region", paramCursor.getString(paramCursor.getColumnIndex("data8")));
      localJSONObject.put("postalCode", paramCursor.getString(paramCursor.getColumnIndex("data9")));
      localJSONObject.put("country", paramCursor.getString(paramCursor.getColumnIndex("data10")));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private ContactAccessor.WhereOptions buildIdClause(Set<String> paramSet, String paramString)
  {
    ContactAccessor.WhereOptions localWhereOptions = new ContactAccessor.WhereOptions(this);
    if (paramString.equals("%"))
    {
      localWhereOptions.setWhere("(contact_id LIKE ? )");
      localWhereOptions.setWhereArgs(new String[] { paramString });
      return localWhereOptions;
    }
    paramSet = paramSet.iterator();
    paramString = new StringBuffer("(");
    while (paramSet.hasNext())
    {
      paramString.append("'" + (String)paramSet.next() + "'");
      if (paramSet.hasNext()) {
        paramString.append(",");
      }
    }
    paramString.append(")");
    localWhereOptions.setWhere("contact_id IN " + paramString.toString());
    localWhereOptions.setWhereArgs(null);
    return localWhereOptions;
  }
  
  private ContactAccessor.WhereOptions buildWhereClause(JSONArray paramJSONArray, String paramString)
  {
    ArrayList localArrayList2 = new ArrayList();
    ArrayList localArrayList1 = new ArrayList();
    ContactAccessor.WhereOptions localWhereOptions = new ContactAccessor.WhereOptions(this);
    if (isWildCardSearch(paramJSONArray))
    {
      if ("%".equals(paramString))
      {
        localWhereOptions.setWhere("(display_name LIKE ? )");
        localWhereOptions.setWhereArgs(new String[] { paramString });
        return localWhereOptions;
      }
      localArrayList2.add("(" + (String)dbMap.get("displayName") + " LIKE ? )");
      localArrayList1.add(paramString);
      localArrayList2.add("(" + (String)dbMap.get("name") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/name");
      localArrayList2.add("(" + (String)dbMap.get("nickname") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/nickname");
      localArrayList2.add("(" + (String)dbMap.get("phoneNumbers") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/phone_v2");
      localArrayList2.add("(" + (String)dbMap.get("emails") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/email_v2");
      localArrayList2.add("(" + (String)dbMap.get("addresses") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/postal-address_v2");
      localArrayList2.add("(" + (String)dbMap.get("ims") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/im");
      localArrayList2.add("(" + (String)dbMap.get("organizations") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/organization");
      localArrayList2.add("(" + (String)dbMap.get("note") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/note");
      localArrayList2.add("(" + (String)dbMap.get("urls") + " LIKE ? AND " + "mimetype" + " = ? )");
      localArrayList1.add(paramString);
      localArrayList1.add("vnd.android.cursor.item/website");
    }
    if ("%".equals(paramString))
    {
      localWhereOptions.setWhere("(display_name LIKE ? )");
      localWhereOptions.setWhereArgs(new String[] { paramString });
      return localWhereOptions;
    }
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < paramJSONArray.length())
        {
          str = paramJSONArray.getString(i);
          if (str.equals("id"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " = ? )");
            localArrayList1.add(paramString.substring(1, paramString.length() - 1));
          }
          else if (str.startsWith("displayName"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? )");
            localArrayList1.add(paramString);
          }
        }
      }
      catch (JSONException paramJSONArray)
      {
        String str;
        Log.e("ContactsAccessor", paramJSONArray.getMessage(), paramJSONArray);
        paramJSONArray = new StringBuffer();
        i = 0;
        if (i < localArrayList2.size())
        {
          paramJSONArray.append((String)localArrayList2.get(i));
          if (i != localArrayList2.size() - 1) {
            paramJSONArray.append(" OR ");
          }
          i += 1;
          continue;
          if (str.startsWith("name"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/name");
          }
          else if (str.startsWith("nickname"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/nickname");
          }
          else if (str.startsWith("phoneNumbers"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/phone_v2");
          }
          else if (str.startsWith("emails"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/email_v2");
          }
          else if (str.startsWith("addresses"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/postal-address_v2");
          }
          else if (str.startsWith("ims"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/im");
          }
          else if (str.startsWith("organizations"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/organization");
          }
          else if (str.startsWith("note"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/note");
          }
          else if (str.startsWith("urls"))
          {
            localArrayList2.add("(" + (String)dbMap.get(str) + " LIKE ? AND " + "mimetype" + " = ? )");
            localArrayList1.add(paramString);
            localArrayList1.add("vnd.android.cursor.item/website");
          }
        }
        else
        {
          localWhereOptions.setWhere(paramJSONArray.toString());
          paramJSONArray = new String[localArrayList1.size()];
          i = 0;
          if (i < localArrayList1.size())
          {
            paramJSONArray[i] = ((String)localArrayList1.get(i));
            i += 1;
            continue;
          }
          localWhereOptions.setWhereArgs(paramJSONArray);
          return localWhereOptions;
        }
      }
      i += 1;
    }
  }
  
  /* Error */
  private String createNewContact(JSONObject paramJSONObject, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 268	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 269	java/util/ArrayList:<init>	()V
    //   7: astore 4
    //   9: aload 4
    //   11: getstatic 345	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   14: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   17: ldc_w 353
    //   20: aload_2
    //   21: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   24: ldc_w 361
    //   27: aload_3
    //   28: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   31: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   34: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   37: pop
    //   38: aload_1
    //   39: ldc 40
    //   41: invokevirtual 369	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   44: astore_2
    //   45: aload_1
    //   46: ldc 36
    //   48: invokevirtual 372	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   51: astore_3
    //   52: aload_3
    //   53: ifnonnull +7 -> 60
    //   56: aload_2
    //   57: ifnull +105 -> 162
    //   60: aload 4
    //   62: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   65: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   68: ldc_w 377
    //   71: iconst_0
    //   72: invokevirtual 381	android/content/ContentProviderOperation$Builder:withValueBackReference	(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    //   75: ldc_w 288
    //   78: ldc_w 292
    //   81: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   84: ldc 42
    //   86: aload_3
    //   87: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   90: ldc 48
    //   92: aload_0
    //   93: aload_2
    //   94: ldc_w 383
    //   97: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   100: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   103: ldc 56
    //   105: aload_0
    //   106: aload_2
    //   107: ldc_w 389
    //   110: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   113: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   116: ldc 52
    //   118: aload_0
    //   119: aload_2
    //   120: ldc_w 391
    //   123: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   126: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   129: ldc 60
    //   131: aload_0
    //   132: aload_2
    //   133: ldc_w 393
    //   136: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   139: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   142: ldc 64
    //   144: aload_0
    //   145: aload_2
    //   146: ldc_w 395
    //   149: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   152: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   155: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   158: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   161: pop
    //   162: aload_1
    //   163: ldc 68
    //   165: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   168: astore_2
    //   169: aload_2
    //   170: ifnull +62 -> 232
    //   173: iconst_0
    //   174: istore 5
    //   176: iload 5
    //   178: aload_2
    //   179: invokevirtual 314	org/json/JSONArray:length	()I
    //   182: if_icmpge +50 -> 232
    //   185: aload_0
    //   186: aload 4
    //   188: aload_2
    //   189: iload 5
    //   191: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   194: checkcast 139	org/json/JSONObject
    //   197: invokespecial 404	org/apache/cordova/ContactAccessorSdk5:insertPhone	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   200: iload 5
    //   202: iconst_1
    //   203: iadd
    //   204: istore 5
    //   206: goto -30 -> 176
    //   209: astore_2
    //   210: ldc -73
    //   212: ldc_w 406
    //   215: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   218: pop
    //   219: goto -57 -> 162
    //   222: astore_2
    //   223: ldc -73
    //   225: ldc_w 412
    //   228: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   231: pop
    //   232: aload_1
    //   233: ldc 72
    //   235: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   238: astore_2
    //   239: aload_2
    //   240: ifnull +49 -> 289
    //   243: iconst_0
    //   244: istore 5
    //   246: iload 5
    //   248: aload_2
    //   249: invokevirtual 314	org/json/JSONArray:length	()I
    //   252: if_icmpge +37 -> 289
    //   255: aload_0
    //   256: aload 4
    //   258: aload_2
    //   259: iload 5
    //   261: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   264: checkcast 139	org/json/JSONObject
    //   267: invokespecial 415	org/apache/cordova/ContactAccessorSdk5:insertEmail	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   270: iload 5
    //   272: iconst_1
    //   273: iadd
    //   274: istore 5
    //   276: goto -30 -> 246
    //   279: astore_2
    //   280: ldc -73
    //   282: ldc_w 417
    //   285: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   288: pop
    //   289: aload_1
    //   290: ldc 76
    //   292: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   295: astore_2
    //   296: aload_2
    //   297: ifnull +49 -> 346
    //   300: iconst_0
    //   301: istore 5
    //   303: iload 5
    //   305: aload_2
    //   306: invokevirtual 314	org/json/JSONArray:length	()I
    //   309: if_icmpge +37 -> 346
    //   312: aload_0
    //   313: aload 4
    //   315: aload_2
    //   316: iload 5
    //   318: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   321: checkcast 139	org/json/JSONObject
    //   324: invokespecial 420	org/apache/cordova/ContactAccessorSdk5:insertAddress	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   327: iload 5
    //   329: iconst_1
    //   330: iadd
    //   331: istore 5
    //   333: goto -30 -> 303
    //   336: astore_2
    //   337: ldc -73
    //   339: ldc_w 422
    //   342: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   345: pop
    //   346: aload_1
    //   347: ldc 102
    //   349: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   352: astore_2
    //   353: aload_2
    //   354: ifnull +49 -> 403
    //   357: iconst_0
    //   358: istore 5
    //   360: iload 5
    //   362: aload_2
    //   363: invokevirtual 314	org/json/JSONArray:length	()I
    //   366: if_icmpge +37 -> 403
    //   369: aload_0
    //   370: aload 4
    //   372: aload_2
    //   373: iload 5
    //   375: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   378: checkcast 139	org/json/JSONObject
    //   381: invokespecial 425	org/apache/cordova/ContactAccessorSdk5:insertOrganization	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   384: iload 5
    //   386: iconst_1
    //   387: iadd
    //   388: istore 5
    //   390: goto -30 -> 360
    //   393: astore_2
    //   394: ldc -73
    //   396: ldc_w 427
    //   399: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   402: pop
    //   403: aload_1
    //   404: ldc 98
    //   406: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   409: astore_2
    //   410: aload_2
    //   411: ifnull +49 -> 460
    //   414: iconst_0
    //   415: istore 5
    //   417: iload 5
    //   419: aload_2
    //   420: invokevirtual 314	org/json/JSONArray:length	()I
    //   423: if_icmpge +37 -> 460
    //   426: aload_0
    //   427: aload 4
    //   429: aload_2
    //   430: iload 5
    //   432: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   435: checkcast 139	org/json/JSONObject
    //   438: invokespecial 430	org/apache/cordova/ContactAccessorSdk5:insertIm	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   441: iload 5
    //   443: iconst_1
    //   444: iadd
    //   445: istore 5
    //   447: goto -30 -> 417
    //   450: astore_2
    //   451: ldc -73
    //   453: ldc_w 417
    //   456: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   459: pop
    //   460: aload_0
    //   461: aload_1
    //   462: ldc 114
    //   464: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   467: astore_2
    //   468: aload_2
    //   469: ifnull +40 -> 509
    //   472: aload 4
    //   474: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   477: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   480: ldc_w 377
    //   483: iconst_0
    //   484: invokevirtual 381	android/content/ContentProviderOperation$Builder:withValueBackReference	(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    //   487: ldc_w 288
    //   490: ldc_w 306
    //   493: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   496: ldc 42
    //   498: aload_2
    //   499: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   502: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   505: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   508: pop
    //   509: aload_0
    //   510: aload_1
    //   511: ldc 66
    //   513: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   516: astore_2
    //   517: aload_2
    //   518: ifnull +40 -> 558
    //   521: aload 4
    //   523: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   526: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   529: ldc_w 377
    //   532: iconst_0
    //   533: invokevirtual 381	android/content/ContentProviderOperation$Builder:withValueBackReference	(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    //   536: ldc_w 288
    //   539: ldc_w 294
    //   542: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   545: ldc 42
    //   547: aload_2
    //   548: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   551: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   554: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   557: pop
    //   558: aload_1
    //   559: ldc 120
    //   561: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   564: astore_2
    //   565: aload_2
    //   566: ifnull +49 -> 615
    //   569: iconst_0
    //   570: istore 5
    //   572: iload 5
    //   574: aload_2
    //   575: invokevirtual 314	org/json/JSONArray:length	()I
    //   578: if_icmpge +37 -> 615
    //   581: aload_0
    //   582: aload 4
    //   584: aload_2
    //   585: iload 5
    //   587: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   590: checkcast 139	org/json/JSONObject
    //   593: invokespecial 433	org/apache/cordova/ContactAccessorSdk5:insertWebsite	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   596: iload 5
    //   598: iconst_1
    //   599: iadd
    //   600: istore 5
    //   602: goto -30 -> 572
    //   605: astore_2
    //   606: ldc -73
    //   608: ldc_w 435
    //   611: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   614: pop
    //   615: aload_0
    //   616: aload_1
    //   617: ldc 110
    //   619: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   622: astore_2
    //   623: aload_2
    //   624: ifnull +48 -> 672
    //   627: aload 4
    //   629: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   632: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   635: ldc_w 377
    //   638: iconst_0
    //   639: invokevirtual 381	android/content/ContentProviderOperation$Builder:withValueBackReference	(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    //   642: ldc_w 288
    //   645: ldc 112
    //   647: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   650: ldc 52
    //   652: iconst_3
    //   653: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   656: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   659: ldc 42
    //   661: aload_2
    //   662: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   665: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   668: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   671: pop
    //   672: aload_1
    //   673: ldc_w 443
    //   676: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   679: astore_1
    //   680: aload_1
    //   681: ifnull +49 -> 730
    //   684: iconst_0
    //   685: istore 5
    //   687: iload 5
    //   689: aload_1
    //   690: invokevirtual 314	org/json/JSONArray:length	()I
    //   693: if_icmpge +37 -> 730
    //   696: aload_0
    //   697: aload 4
    //   699: aload_1
    //   700: iload 5
    //   702: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   705: checkcast 139	org/json/JSONObject
    //   708: invokespecial 446	org/apache/cordova/ContactAccessorSdk5:insertPhoto	(Ljava/util/ArrayList;Lorg/json/JSONObject;)V
    //   711: iload 5
    //   713: iconst_1
    //   714: iadd
    //   715: istore 5
    //   717: goto -30 -> 687
    //   720: astore_1
    //   721: ldc -73
    //   723: ldc_w 448
    //   726: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   729: pop
    //   730: aconst_null
    //   731: astore_1
    //   732: aload_0
    //   733: getfield 129	org/apache/cordova/ContactAccessorSdk5:mApp	Lorg/apache/cordova/api/CordovaInterface;
    //   736: invokeinterface 454 1 0
    //   741: invokevirtual 460	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   744: ldc_w 462
    //   747: aload 4
    //   749: invokevirtual 468	android/content/ContentResolver:applyBatch	(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    //   752: astore_2
    //   753: aload_2
    //   754: arraylength
    //   755: iflt +13 -> 768
    //   758: aload_2
    //   759: iconst_0
    //   760: aaload
    //   761: getfield 473	android/content/ContentProviderResult:uri	Landroid/net/Uri;
    //   764: invokevirtual 478	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
    //   767: astore_1
    //   768: aload_1
    //   769: areturn
    //   770: astore_1
    //   771: ldc -73
    //   773: aload_1
    //   774: invokevirtual 479	android/os/RemoteException:getMessage	()Ljava/lang/String;
    //   777: aload_1
    //   778: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   781: pop
    //   782: aconst_null
    //   783: areturn
    //   784: astore_1
    //   785: ldc -73
    //   787: aload_1
    //   788: invokevirtual 480	android/content/OperationApplicationException:getMessage	()Ljava/lang/String;
    //   791: aload_1
    //   792: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   795: pop
    //   796: aconst_null
    //   797: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	798	0	this	ContactAccessorSdk5
    //   0	798	1	paramJSONObject	JSONObject
    //   0	798	2	paramString1	String
    //   0	798	3	paramString2	String
    //   7	741	4	localArrayList	ArrayList
    //   174	542	5	i	int
    // Exception table:
    //   from	to	target	type
    //   38	52	209	org/json/JSONException
    //   60	162	209	org/json/JSONException
    //   162	169	222	org/json/JSONException
    //   176	200	222	org/json/JSONException
    //   232	239	279	org/json/JSONException
    //   246	270	279	org/json/JSONException
    //   289	296	336	org/json/JSONException
    //   303	327	336	org/json/JSONException
    //   346	353	393	org/json/JSONException
    //   360	384	393	org/json/JSONException
    //   403	410	450	org/json/JSONException
    //   417	441	450	org/json/JSONException
    //   558	565	605	org/json/JSONException
    //   572	596	605	org/json/JSONException
    //   672	680	720	org/json/JSONException
    //   687	711	720	org/json/JSONException
    //   732	753	770	android/os/RemoteException
    //   753	768	770	android/os/RemoteException
    //   732	753	784	android/content/OperationApplicationException
    //   753	768	784	android/content/OperationApplicationException
  }
  
  private JSONObject emailQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("value", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("type", getContactType(paramCursor.getInt(paramCursor.getColumnIndex("data2"))));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private int getAddressType(String paramString)
  {
    int j = 3;
    int i = j;
    if (paramString != null)
    {
      if (!"work".equals(paramString.toLowerCase())) {
        break label25;
      }
      i = 2;
    }
    label25:
    do
    {
      return i;
      if ("other".equals(paramString.toLowerCase())) {
        return 3;
      }
      i = j;
    } while (!"home".equals(paramString.toLowerCase()));
    return 1;
  }
  
  private String getAddressType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "other";
    case 1: 
      return "home";
    }
    return "work";
  }
  
  private int getContactType(String paramString)
  {
    int j = 3;
    int i = j;
    if (paramString != null)
    {
      if (!"home".equals(paramString.toLowerCase())) {
        break label25;
      }
      i = 1;
    }
    label25:
    do
    {
      return i;
      if ("work".equals(paramString.toLowerCase())) {
        return 2;
      }
      if ("other".equals(paramString.toLowerCase())) {
        return 3;
      }
      if ("mobile".equals(paramString.toLowerCase())) {
        return 4;
      }
      i = j;
    } while (!"custom".equals(paramString.toLowerCase()));
    return 0;
  }
  
  private String getContactType(int paramInt)
  {
    switch (paramInt)
    {
    case 3: 
    default: 
      return "other";
    case 0: 
      return "custom";
    case 1: 
      return "home";
    case 2: 
      return "work";
    }
    return "mobile";
  }
  
  private int getImType(String paramString)
  {
    int j = -1;
    int i = j;
    if (paramString != null)
    {
      if (!"aim".equals(paramString.toLowerCase())) {
        break label25;
      }
      i = 0;
    }
    label25:
    do
    {
      return i;
      if ("google talk".equals(paramString.toLowerCase())) {
        return 5;
      }
      if ("icq".equals(paramString.toLowerCase())) {
        return 6;
      }
      if ("jabber".equals(paramString.toLowerCase())) {
        return 7;
      }
      if ("msn".equals(paramString.toLowerCase())) {
        return 1;
      }
      if ("netmeeting".equals(paramString.toLowerCase())) {
        return 8;
      }
      if ("qq".equals(paramString.toLowerCase())) {
        return 4;
      }
      if ("skype".equals(paramString.toLowerCase())) {
        return 3;
      }
      i = j;
    } while (!"yahoo".equals(paramString.toLowerCase()));
    return 2;
  }
  
  private String getImType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "custom";
    case 0: 
      return "AIM";
    case 5: 
      return "Google Talk";
    case 6: 
      return "ICQ";
    case 7: 
      return "Jabber";
    case 1: 
      return "MSN";
    case 8: 
      return "NetMeeting";
    case 4: 
      return "QQ";
    case 3: 
      return "Skype";
    }
    return "Yahoo";
  }
  
  private int getOrgType(String paramString)
  {
    int j = 2;
    int i = j;
    if (paramString != null)
    {
      if (!"work".equals(paramString.toLowerCase())) {
        break label25;
      }
      i = 1;
    }
    label25:
    do
    {
      return i;
      if ("other".equals(paramString.toLowerCase())) {
        return 2;
      }
      i = j;
    } while (!"custom".equals(paramString.toLowerCase()));
    return 0;
  }
  
  private String getOrgType(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "other";
    case 0: 
      return "custom";
    }
    return "work";
  }
  
  private InputStream getPathFromUri(String paramString)
    throws IOException
  {
    if (paramString.startsWith("content:"))
    {
      paramString = Uri.parse(paramString);
      return mApp.getActivity().getContentResolver().openInputStream(paramString);
    }
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")) || (paramString.startsWith("file:"))) {
      return new URL(paramString).openStream();
    }
    return new FileInputStream(paramString);
  }
  
  private int getPhoneType(String paramString)
  {
    int j = 7;
    int i = j;
    if (paramString != null)
    {
      if (!"home".equals(paramString.toLowerCase())) {
        break label26;
      }
      i = 1;
    }
    label26:
    do
    {
      return i;
      if ("mobile".equals(paramString.toLowerCase())) {
        return 2;
      }
      if ("work".equals(paramString.toLowerCase())) {
        return 3;
      }
      if ("work fax".equals(paramString.toLowerCase())) {
        return 4;
      }
      if ("home fax".equals(paramString.toLowerCase())) {
        return 5;
      }
      if ("fax".equals(paramString.toLowerCase())) {
        return 4;
      }
      if ("pager".equals(paramString.toLowerCase())) {
        return 6;
      }
      if ("other".equals(paramString.toLowerCase())) {
        return 7;
      }
      if ("car".equals(paramString.toLowerCase())) {
        return 9;
      }
      if ("company main".equals(paramString.toLowerCase())) {
        return 10;
      }
      if ("isdn".equals(paramString.toLowerCase())) {
        return 11;
      }
      if ("main".equals(paramString.toLowerCase())) {
        return 12;
      }
      if ("other fax".equals(paramString.toLowerCase())) {
        return 13;
      }
      if ("radio".equals(paramString.toLowerCase())) {
        return 14;
      }
      if ("telex".equals(paramString.toLowerCase())) {
        return 15;
      }
      if ("work mobile".equals(paramString.toLowerCase())) {
        return 17;
      }
      if ("work pager".equals(paramString.toLowerCase())) {
        return 18;
      }
      if ("assistant".equals(paramString.toLowerCase())) {
        return 19;
      }
      if ("mms".equals(paramString.toLowerCase())) {
        return 20;
      }
      if ("callback".equals(paramString.toLowerCase())) {
        return 8;
      }
      if ("tty ttd".equals(paramString.toLowerCase())) {
        return 16;
      }
      i = j;
    } while (!"custom".equals(paramString.toLowerCase()));
    return 0;
  }
  
  private String getPhoneType(int paramInt)
  {
    switch (paramInt)
    {
    case 7: 
    case 12: 
    default: 
      return "other";
    case 0: 
      return "custom";
    case 5: 
      return "home fax";
    case 4: 
      return "work fax";
    case 1: 
      return "home";
    case 2: 
      return "mobile";
    case 6: 
      return "pager";
    case 3: 
      return "work";
    case 8: 
      return "callback";
    case 9: 
      return "car";
    case 10: 
      return "company main";
    case 13: 
      return "other fax";
    case 14: 
      return "radio";
    case 15: 
      return "telex";
    case 16: 
      return "tty tdd";
    case 17: 
      return "work mobile";
    case 18: 
      return "work pager";
    case 19: 
      return "assistant";
    case 20: 
      return "mms";
    }
    return "isdn";
  }
  
  private byte[] getPhotoBytes(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    long l = 0L;
    try
    {
      byte[] arrayOfByte = new byte[' '];
      paramString = getPathFromUri(paramString);
      for (;;)
      {
        int i = paramString.read(arrayOfByte, 0, arrayOfByte.length);
        if ((i == -1) || (l > 1048576L)) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
        l += i;
      }
      paramString.close();
      localByteArrayOutputStream.flush();
    }
    catch (FileNotFoundException paramString)
    {
      for (;;)
      {
        Log.e("ContactsAccessor", paramString.getMessage(), paramString);
      }
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        Log.e("ContactsAccessor", paramString.getMessage(), paramString);
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  private JSONObject imQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("value", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("type", getImType(paramCursor.getString(paramCursor.getColumnIndex("data5"))));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private void insertAddress(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/postal-address_v2").withValue("data2", Integer.valueOf(getAddressType(getJsonString(paramJSONObject, "type")))).withValue("data1", getJsonString(paramJSONObject, "formatted")).withValue("data4", getJsonString(paramJSONObject, "streetAddress")).withValue("data7", getJsonString(paramJSONObject, "locality")).withValue("data8", getJsonString(paramJSONObject, "region")).withValue("data9", getJsonString(paramJSONObject, "postalCode")).withValue("data10", getJsonString(paramJSONObject, "country")).build());
  }
  
  private void insertEmail(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/email_v2").withValue("data1", getJsonString(paramJSONObject, "value")).withValue("data2", Integer.valueOf(getContactType(getJsonString(paramJSONObject, "type")))).build());
  }
  
  private void insertIm(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/im").withValue("data1", getJsonString(paramJSONObject, "value")).withValue("data2", Integer.valueOf(getImType(getJsonString(paramJSONObject, "type")))).build());
  }
  
  private void insertOrganization(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data2", Integer.valueOf(getOrgType(getJsonString(paramJSONObject, "type")))).withValue("data5", getJsonString(paramJSONObject, "department")).withValue("data1", getJsonString(paramJSONObject, "name")).withValue("data4", getJsonString(paramJSONObject, "title")).build());
  }
  
  private void insertPhone(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", getJsonString(paramJSONObject, "value")).withValue("data2", Integer.valueOf(getPhoneType(getJsonString(paramJSONObject, "type")))).build());
  }
  
  private void insertPhoto(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramJSONObject = getPhotoBytes(getJsonString(paramJSONObject, "value"));
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("is_super_primary", Integer.valueOf(1)).withValue("mimetype", "vnd.android.cursor.item/photo").withValue("data15", paramJSONObject).build());
  }
  
  private void insertWebsite(ArrayList<ContentProviderOperation> paramArrayList, JSONObject paramJSONObject)
  {
    paramArrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/website").withValue("data1", getJsonString(paramJSONObject, "value")).withValue("data2", Integer.valueOf(getContactType(getJsonString(paramJSONObject, "type")))).build());
  }
  
  private boolean isWildCardSearch(JSONArray paramJSONArray)
  {
    if (paramJSONArray.length() == 1) {
      try
      {
        boolean bool = "*".equals(paramJSONArray.getString(0));
        if (bool) {
          return true;
        }
      }
      catch (JSONException paramJSONArray)
      {
        return false;
      }
    }
    return false;
  }
  
  /* Error */
  private String modifyContact(String paramString1, JSONObject paramJSONObject, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 437	java/lang/Integer
    //   3: dup
    //   4: aload_0
    //   5: aload_2
    //   6: ldc_w 667
    //   9: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   12: invokespecial 668	java/lang/Integer:<init>	(Ljava/lang/String;)V
    //   15: invokevirtual 671	java/lang/Integer:intValue	()I
    //   18: istore 8
    //   20: new 268	java/util/ArrayList
    //   23: dup
    //   24: invokespecial 269	java/util/ArrayList:<init>	()V
    //   27: astore 5
    //   29: aload 5
    //   31: getstatic 345	android/provider/ContactsContract$RawContacts:CONTENT_URI	Landroid/net/Uri;
    //   34: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   37: ldc_w 353
    //   40: aload_3
    //   41: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   44: ldc_w 361
    //   47: aload 4
    //   49: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   52: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   55: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   58: pop
    //   59: aload_0
    //   60: aload_2
    //   61: ldc 36
    //   63: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   66: astore 6
    //   68: aload_2
    //   69: ldc 40
    //   71: invokevirtual 677	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   74: astore 4
    //   76: aload 6
    //   78: ifnonnull +8 -> 86
    //   81: aload 4
    //   83: ifnull +179 -> 262
    //   86: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   89: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   92: ldc_w 679
    //   95: iconst_2
    //   96: anewarray 204	java/lang/String
    //   99: dup
    //   100: iconst_0
    //   101: aload_1
    //   102: aastore
    //   103: dup
    //   104: iconst_1
    //   105: ldc_w 292
    //   108: aastore
    //   109: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   112: astore_3
    //   113: aload 6
    //   115: ifnull +12 -> 127
    //   118: aload_3
    //   119: ldc 42
    //   121: aload 6
    //   123: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   126: pop
    //   127: aload_0
    //   128: aload 4
    //   130: ldc_w 383
    //   133: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   136: astore 6
    //   138: aload 6
    //   140: ifnull +12 -> 152
    //   143: aload_3
    //   144: ldc 48
    //   146: aload 6
    //   148: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   151: pop
    //   152: aload_0
    //   153: aload 4
    //   155: ldc_w 389
    //   158: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   161: astore 6
    //   163: aload 6
    //   165: ifnull +12 -> 177
    //   168: aload_3
    //   169: ldc 56
    //   171: aload 6
    //   173: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   176: pop
    //   177: aload_0
    //   178: aload 4
    //   180: ldc_w 391
    //   183: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   186: astore 6
    //   188: aload 6
    //   190: ifnull +12 -> 202
    //   193: aload_3
    //   194: ldc 52
    //   196: aload 6
    //   198: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   201: pop
    //   202: aload_0
    //   203: aload 4
    //   205: ldc_w 393
    //   208: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   211: astore 6
    //   213: aload 6
    //   215: ifnull +12 -> 227
    //   218: aload_3
    //   219: ldc 60
    //   221: aload 6
    //   223: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   226: pop
    //   227: aload_0
    //   228: aload 4
    //   230: ldc_w 395
    //   233: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   236: astore 4
    //   238: aload 4
    //   240: ifnull +12 -> 252
    //   243: aload_3
    //   244: ldc 64
    //   246: aload 4
    //   248: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   251: pop
    //   252: aload 5
    //   254: aload_3
    //   255: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   258: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   261: pop
    //   262: aload_2
    //   263: ldc 68
    //   265: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   268: astore_3
    //   269: aload_3
    //   270: ifnull +65 -> 335
    //   273: aload_3
    //   274: invokevirtual 314	org/json/JSONArray:length	()I
    //   277: ifne +725 -> 1002
    //   280: aload 5
    //   282: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   285: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   288: ldc_w 688
    //   291: iconst_2
    //   292: anewarray 204	java/lang/String
    //   295: dup
    //   296: iconst_0
    //   297: new 238	java/lang/StringBuilder
    //   300: dup
    //   301: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   304: ldc_w 690
    //   307: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: iload 8
    //   312: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   315: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: aastore
    //   319: dup
    //   320: iconst_1
    //   321: ldc_w 296
    //   324: aastore
    //   325: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   328: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   331: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   334: pop
    //   335: aload_2
    //   336: ldc 72
    //   338: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   341: astore_3
    //   342: aload_3
    //   343: ifnull +65 -> 408
    //   346: aload_3
    //   347: invokevirtual 314	org/json/JSONArray:length	()I
    //   350: ifne +870 -> 1220
    //   353: aload 5
    //   355: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   358: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   361: ldc_w 688
    //   364: iconst_2
    //   365: anewarray 204	java/lang/String
    //   368: dup
    //   369: iconst_0
    //   370: new 238	java/lang/StringBuilder
    //   373: dup
    //   374: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   377: ldc_w 690
    //   380: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: iload 8
    //   385: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   388: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: aastore
    //   392: dup
    //   393: iconst_1
    //   394: ldc_w 298
    //   397: aastore
    //   398: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   401: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   404: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   407: pop
    //   408: aload_2
    //   409: ldc 76
    //   411: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   414: astore_3
    //   415: aload_3
    //   416: ifnull +65 -> 481
    //   419: aload_3
    //   420: invokevirtual 314	org/json/JSONArray:length	()I
    //   423: ifne +1015 -> 1438
    //   426: aload 5
    //   428: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   431: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   434: ldc_w 688
    //   437: iconst_2
    //   438: anewarray 204	java/lang/String
    //   441: dup
    //   442: iconst_0
    //   443: new 238	java/lang/StringBuilder
    //   446: dup
    //   447: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   450: ldc_w 690
    //   453: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: iload 8
    //   458: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   461: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   464: aastore
    //   465: dup
    //   466: iconst_1
    //   467: ldc_w 300
    //   470: aastore
    //   471: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   474: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   477: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   480: pop
    //   481: aload_2
    //   482: ldc 102
    //   484: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   487: astore_3
    //   488: aload_3
    //   489: ifnull +65 -> 554
    //   492: aload_3
    //   493: invokevirtual 314	org/json/JSONArray:length	()I
    //   496: ifne +1298 -> 1794
    //   499: aload 5
    //   501: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   504: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   507: ldc_w 688
    //   510: iconst_2
    //   511: anewarray 204	java/lang/String
    //   514: dup
    //   515: iconst_0
    //   516: new 238	java/lang/StringBuilder
    //   519: dup
    //   520: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   523: ldc_w 690
    //   526: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: iload 8
    //   531: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   534: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   537: aastore
    //   538: dup
    //   539: iconst_1
    //   540: ldc_w 304
    //   543: aastore
    //   544: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   547: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   550: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   553: pop
    //   554: aload_2
    //   555: ldc 98
    //   557: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   560: astore_3
    //   561: aload_3
    //   562: ifnull +65 -> 627
    //   565: aload_3
    //   566: invokevirtual 314	org/json/JSONArray:length	()I
    //   569: ifne +1501 -> 2070
    //   572: aload 5
    //   574: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   577: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   580: ldc_w 688
    //   583: iconst_2
    //   584: anewarray 204	java/lang/String
    //   587: dup
    //   588: iconst_0
    //   589: new 238	java/lang/StringBuilder
    //   592: dup
    //   593: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   596: ldc_w 690
    //   599: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   602: iload 8
    //   604: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   607: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: aastore
    //   611: dup
    //   612: iconst_1
    //   613: ldc_w 302
    //   616: aastore
    //   617: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   620: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   623: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   626: pop
    //   627: aload_0
    //   628: aload_2
    //   629: ldc 114
    //   631: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   634: astore_3
    //   635: aload 5
    //   637: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   640: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   643: ldc_w 679
    //   646: iconst_2
    //   647: anewarray 204	java/lang/String
    //   650: dup
    //   651: iconst_0
    //   652: aload_1
    //   653: aastore
    //   654: dup
    //   655: iconst_1
    //   656: ldc_w 306
    //   659: aastore
    //   660: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   663: ldc 42
    //   665: aload_3
    //   666: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   669: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   672: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   675: pop
    //   676: aload_0
    //   677: aload_2
    //   678: ldc 66
    //   680: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   683: astore_3
    //   684: aload_3
    //   685: ifnull +44 -> 729
    //   688: aload 5
    //   690: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   693: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   696: ldc_w 679
    //   699: iconst_2
    //   700: anewarray 204	java/lang/String
    //   703: dup
    //   704: iconst_0
    //   705: aload_1
    //   706: aastore
    //   707: dup
    //   708: iconst_1
    //   709: ldc_w 294
    //   712: aastore
    //   713: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   716: ldc 42
    //   718: aload_3
    //   719: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   722: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   725: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   728: pop
    //   729: aload_2
    //   730: ldc 120
    //   732: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   735: astore_3
    //   736: aload_3
    //   737: ifnull +74 -> 811
    //   740: aload_3
    //   741: invokevirtual 314	org/json/JSONArray:length	()I
    //   744: ifne +1544 -> 2288
    //   747: ldc -73
    //   749: ldc_w 695
    //   752: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   755: pop
    //   756: aload 5
    //   758: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   761: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   764: ldc_w 688
    //   767: iconst_2
    //   768: anewarray 204	java/lang/String
    //   771: dup
    //   772: iconst_0
    //   773: new 238	java/lang/StringBuilder
    //   776: dup
    //   777: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   780: ldc_w 690
    //   783: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   786: iload 8
    //   788: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   791: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   794: aastore
    //   795: dup
    //   796: iconst_1
    //   797: ldc_w 308
    //   800: aastore
    //   801: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   804: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   807: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   810: pop
    //   811: aload_0
    //   812: aload_2
    //   813: ldc 110
    //   815: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   818: astore_3
    //   819: aload_3
    //   820: ifnull +65 -> 885
    //   823: aload 5
    //   825: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   828: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   831: ldc_w 697
    //   834: iconst_3
    //   835: anewarray 204	java/lang/String
    //   838: dup
    //   839: iconst_0
    //   840: aload_1
    //   841: aastore
    //   842: dup
    //   843: iconst_1
    //   844: ldc 112
    //   846: aastore
    //   847: dup
    //   848: iconst_2
    //   849: new 204	java/lang/String
    //   852: dup
    //   853: ldc_w 699
    //   856: invokespecial 700	java/lang/String:<init>	(Ljava/lang/String;)V
    //   859: aastore
    //   860: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   863: ldc 52
    //   865: iconst_3
    //   866: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   869: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   872: ldc 42
    //   874: aload_3
    //   875: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   878: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   881: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   884: pop
    //   885: aload_2
    //   886: ldc_w 443
    //   889: invokevirtual 399	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   892: astore_2
    //   893: aload_2
    //   894: ifnull +64 -> 958
    //   897: aload_2
    //   898: invokevirtual 314	org/json/JSONArray:length	()I
    //   901: ifne +1605 -> 2506
    //   904: aload 5
    //   906: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   909: invokestatic 686	android/content/ContentProviderOperation:newDelete	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   912: ldc_w 688
    //   915: iconst_2
    //   916: anewarray 204	java/lang/String
    //   919: dup
    //   920: iconst_0
    //   921: new 238	java/lang/StringBuilder
    //   924: dup
    //   925: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   928: ldc_w 690
    //   931: invokevirtual 245	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   934: iload 8
    //   936: invokevirtual 693	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   939: invokevirtual 252	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   942: aastore
    //   943: dup
    //   944: iconst_1
    //   945: ldc 118
    //   947: aastore
    //   948: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   951: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   954: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   957: pop
    //   958: iconst_1
    //   959: istore 7
    //   961: aload_0
    //   962: getfield 129	org/apache/cordova/ContactAccessorSdk5:mApp	Lorg/apache/cordova/api/CordovaInterface;
    //   965: invokeinterface 454 1 0
    //   970: invokevirtual 460	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   973: ldc_w 462
    //   976: aload 5
    //   978: invokevirtual 468	android/content/ContentResolver:applyBatch	(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    //   981: pop
    //   982: iload 7
    //   984: ifeq +1770 -> 2754
    //   987: aload_1
    //   988: areturn
    //   989: astore_3
    //   990: ldc -73
    //   992: ldc_w 702
    //   995: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   998: pop
    //   999: goto -737 -> 262
    //   1002: iconst_0
    //   1003: istore 7
    //   1005: iload 7
    //   1007: aload_3
    //   1008: invokevirtual 314	org/json/JSONArray:length	()I
    //   1011: if_icmpge -676 -> 335
    //   1014: aload_3
    //   1015: iload 7
    //   1017: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   1020: checkcast 139	org/json/JSONObject
    //   1023: astore 4
    //   1025: aload_0
    //   1026: aload 4
    //   1028: ldc 26
    //   1030: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1033: astore 6
    //   1035: aload 6
    //   1037: ifnonnull +97 -> 1134
    //   1040: new 704	android/content/ContentValues
    //   1043: dup
    //   1044: invokespecial 705	android/content/ContentValues:<init>	()V
    //   1047: astore 6
    //   1049: aload 6
    //   1051: ldc_w 377
    //   1054: iload 8
    //   1056: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1059: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1062: aload 6
    //   1064: ldc_w 288
    //   1067: ldc_w 296
    //   1070: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1073: aload 6
    //   1075: ldc 42
    //   1077: aload_0
    //   1078: aload 4
    //   1080: ldc_w 483
    //   1083: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1086: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1089: aload 6
    //   1091: ldc 52
    //   1093: aload_0
    //   1094: aload_0
    //   1095: aload 4
    //   1097: ldc -94
    //   1099: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1102: invokespecial 655	org/apache/cordova/ContactAccessorSdk5:getPhoneType	(Ljava/lang/String;)I
    //   1105: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1108: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1111: aload 5
    //   1113: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1116: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1119: aload 6
    //   1121: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   1124: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1127: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1130: pop
    //   1131: goto +1625 -> 2756
    //   1134: aload 5
    //   1136: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1139: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1142: ldc_w 717
    //   1145: iconst_2
    //   1146: anewarray 204	java/lang/String
    //   1149: dup
    //   1150: iconst_0
    //   1151: aload 6
    //   1153: aastore
    //   1154: dup
    //   1155: iconst_1
    //   1156: ldc_w 296
    //   1159: aastore
    //   1160: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   1163: ldc 42
    //   1165: aload_0
    //   1166: aload 4
    //   1168: ldc_w 483
    //   1171: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1174: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1177: ldc 52
    //   1179: aload_0
    //   1180: aload_0
    //   1181: aload 4
    //   1183: ldc -94
    //   1185: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1188: invokespecial 655	org/apache/cordova/ContactAccessorSdk5:getPhoneType	(Ljava/lang/String;)I
    //   1191: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1194: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1197: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1200: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1203: pop
    //   1204: goto +1552 -> 2756
    //   1207: astore_3
    //   1208: ldc -73
    //   1210: ldc_w 412
    //   1213: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1216: pop
    //   1217: goto -882 -> 335
    //   1220: iconst_0
    //   1221: istore 7
    //   1223: iload 7
    //   1225: aload_3
    //   1226: invokevirtual 314	org/json/JSONArray:length	()I
    //   1229: if_icmpge -821 -> 408
    //   1232: aload_3
    //   1233: iload 7
    //   1235: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   1238: checkcast 139	org/json/JSONObject
    //   1241: astore 4
    //   1243: aload_0
    //   1244: aload 4
    //   1246: ldc 26
    //   1248: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1251: astore 6
    //   1253: aload 6
    //   1255: ifnonnull +97 -> 1352
    //   1258: new 704	android/content/ContentValues
    //   1261: dup
    //   1262: invokespecial 705	android/content/ContentValues:<init>	()V
    //   1265: astore 6
    //   1267: aload 6
    //   1269: ldc_w 377
    //   1272: iload 8
    //   1274: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1277: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1280: aload 6
    //   1282: ldc_w 288
    //   1285: ldc_w 298
    //   1288: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1291: aload 6
    //   1293: ldc 42
    //   1295: aload_0
    //   1296: aload 4
    //   1298: ldc_w 483
    //   1301: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1304: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1307: aload 6
    //   1309: ldc 52
    //   1311: aload_0
    //   1312: aload_0
    //   1313: aload 4
    //   1315: ldc -94
    //   1317: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1320: invokespecial 647	org/apache/cordova/ContactAccessorSdk5:getContactType	(Ljava/lang/String;)I
    //   1323: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1326: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1329: aload 5
    //   1331: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1334: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1337: aload 6
    //   1339: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   1342: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1345: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1348: pop
    //   1349: goto +1416 -> 2765
    //   1352: aload 5
    //   1354: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1357: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1360: ldc_w 717
    //   1363: iconst_2
    //   1364: anewarray 204	java/lang/String
    //   1367: dup
    //   1368: iconst_0
    //   1369: aload 6
    //   1371: aastore
    //   1372: dup
    //   1373: iconst_1
    //   1374: ldc_w 298
    //   1377: aastore
    //   1378: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   1381: ldc 42
    //   1383: aload_0
    //   1384: aload 4
    //   1386: ldc_w 483
    //   1389: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1392: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1395: ldc 52
    //   1397: aload_0
    //   1398: aload_0
    //   1399: aload 4
    //   1401: ldc -94
    //   1403: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1406: invokespecial 647	org/apache/cordova/ContactAccessorSdk5:getContactType	(Ljava/lang/String;)I
    //   1409: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1412: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1415: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1418: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1421: pop
    //   1422: goto +1343 -> 2765
    //   1425: astore_3
    //   1426: ldc -73
    //   1428: ldc_w 417
    //   1431: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1434: pop
    //   1435: goto -1027 -> 408
    //   1438: iconst_0
    //   1439: istore 7
    //   1441: iload 7
    //   1443: aload_3
    //   1444: invokevirtual 314	org/json/JSONArray:length	()I
    //   1447: if_icmpge -966 -> 481
    //   1450: aload_3
    //   1451: iload 7
    //   1453: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   1456: checkcast 139	org/json/JSONObject
    //   1459: astore 4
    //   1461: aload_0
    //   1462: aload 4
    //   1464: ldc 26
    //   1466: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1469: astore 6
    //   1471: aload 6
    //   1473: ifnonnull +171 -> 1644
    //   1476: new 704	android/content/ContentValues
    //   1479: dup
    //   1480: invokespecial 705	android/content/ContentValues:<init>	()V
    //   1483: astore 6
    //   1485: aload 6
    //   1487: ldc_w 377
    //   1490: iload 8
    //   1492: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1495: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1498: aload 6
    //   1500: ldc_w 288
    //   1503: ldc_w 300
    //   1506: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1509: aload 6
    //   1511: ldc 52
    //   1513: aload_0
    //   1514: aload_0
    //   1515: aload 4
    //   1517: ldc -94
    //   1519: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1522: invokespecial 644	org/apache/cordova/ContactAccessorSdk5:getAddressType	(Ljava/lang/String;)I
    //   1525: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1528: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1531: aload 6
    //   1533: ldc 42
    //   1535: aload_0
    //   1536: aload 4
    //   1538: ldc -85
    //   1540: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1543: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1546: aload 6
    //   1548: ldc 60
    //   1550: aload_0
    //   1551: aload 4
    //   1553: ldc -83
    //   1555: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1558: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1561: aload 6
    //   1563: ldc 84
    //   1565: aload_0
    //   1566: aload 4
    //   1568: ldc -81
    //   1570: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1573: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1576: aload 6
    //   1578: ldc 88
    //   1580: aload_0
    //   1581: aload 4
    //   1583: ldc -79
    //   1585: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1588: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1591: aload 6
    //   1593: ldc 92
    //   1595: aload_0
    //   1596: aload 4
    //   1598: ldc -77
    //   1600: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1603: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1606: aload 6
    //   1608: ldc 96
    //   1610: aload_0
    //   1611: aload 4
    //   1613: ldc -75
    //   1615: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1618: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1621: aload 5
    //   1623: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1626: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1629: aload 6
    //   1631: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   1634: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1637: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1640: pop
    //   1641: goto +1133 -> 2774
    //   1644: aload 5
    //   1646: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1649: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1652: ldc_w 717
    //   1655: iconst_2
    //   1656: anewarray 204	java/lang/String
    //   1659: dup
    //   1660: iconst_0
    //   1661: aload 6
    //   1663: aastore
    //   1664: dup
    //   1665: iconst_1
    //   1666: ldc_w 300
    //   1669: aastore
    //   1670: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   1673: ldc 52
    //   1675: aload_0
    //   1676: aload_0
    //   1677: aload 4
    //   1679: ldc -94
    //   1681: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1684: invokespecial 644	org/apache/cordova/ContactAccessorSdk5:getAddressType	(Ljava/lang/String;)I
    //   1687: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1690: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1693: ldc 42
    //   1695: aload_0
    //   1696: aload 4
    //   1698: ldc -85
    //   1700: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1703: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1706: ldc 60
    //   1708: aload_0
    //   1709: aload 4
    //   1711: ldc -83
    //   1713: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1716: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1719: ldc 84
    //   1721: aload_0
    //   1722: aload 4
    //   1724: ldc -81
    //   1726: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1729: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1732: ldc 88
    //   1734: aload_0
    //   1735: aload 4
    //   1737: ldc -79
    //   1739: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1742: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1745: ldc 92
    //   1747: aload_0
    //   1748: aload 4
    //   1750: ldc -77
    //   1752: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1755: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1758: ldc 96
    //   1760: aload_0
    //   1761: aload 4
    //   1763: ldc -75
    //   1765: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1768: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   1771: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1774: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1777: pop
    //   1778: goto +996 -> 2774
    //   1781: astore_3
    //   1782: ldc -73
    //   1784: ldc_w 422
    //   1787: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1790: pop
    //   1791: goto -1310 -> 481
    //   1794: iconst_0
    //   1795: istore 7
    //   1797: iload 7
    //   1799: aload_3
    //   1800: invokevirtual 314	org/json/JSONArray:length	()I
    //   1803: if_icmpge -1249 -> 554
    //   1806: aload_3
    //   1807: iload 7
    //   1809: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   1812: checkcast 139	org/json/JSONObject
    //   1815: astore 4
    //   1817: aload_0
    //   1818: aload 4
    //   1820: ldc 26
    //   1822: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1825: astore 6
    //   1827: aload 6
    //   1829: ifnonnull +128 -> 1957
    //   1832: new 704	android/content/ContentValues
    //   1835: dup
    //   1836: invokespecial 705	android/content/ContentValues:<init>	()V
    //   1839: astore 6
    //   1841: aload 6
    //   1843: ldc_w 377
    //   1846: iload 8
    //   1848: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1851: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1854: aload 6
    //   1856: ldc_w 288
    //   1859: ldc_w 304
    //   1862: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1865: aload 6
    //   1867: ldc 52
    //   1869: aload_0
    //   1870: aload_0
    //   1871: aload 4
    //   1873: ldc -94
    //   1875: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1878: invokespecial 649	org/apache/cordova/ContactAccessorSdk5:getOrgType	(Ljava/lang/String;)I
    //   1881: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1884: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   1887: aload 6
    //   1889: ldc 56
    //   1891: aload_0
    //   1892: aload 4
    //   1894: ldc_w 651
    //   1897: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1900: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1903: aload 6
    //   1905: ldc 42
    //   1907: aload_0
    //   1908: aload 4
    //   1910: ldc 40
    //   1912: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1915: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1918: aload 6
    //   1920: ldc 60
    //   1922: aload_0
    //   1923: aload 4
    //   1925: ldc_w 653
    //   1928: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1931: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1934: aload 5
    //   1936: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1939: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1942: aload 6
    //   1944: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   1947: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   1950: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1953: pop
    //   1954: goto +829 -> 2783
    //   1957: aload 5
    //   1959: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   1962: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   1965: ldc_w 717
    //   1968: iconst_2
    //   1969: anewarray 204	java/lang/String
    //   1972: dup
    //   1973: iconst_0
    //   1974: aload 6
    //   1976: aastore
    //   1977: dup
    //   1978: iconst_1
    //   1979: ldc_w 304
    //   1982: aastore
    //   1983: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   1986: ldc 52
    //   1988: aload_0
    //   1989: aload_0
    //   1990: aload 4
    //   1992: ldc -94
    //   1994: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   1997: invokespecial 649	org/apache/cordova/ContactAccessorSdk5:getOrgType	(Ljava/lang/String;)I
    //   2000: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2003: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2006: ldc 56
    //   2008: aload_0
    //   2009: aload 4
    //   2011: ldc_w 651
    //   2014: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2017: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2020: ldc 42
    //   2022: aload_0
    //   2023: aload 4
    //   2025: ldc 40
    //   2027: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2030: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2033: ldc 60
    //   2035: aload_0
    //   2036: aload 4
    //   2038: ldc_w 653
    //   2041: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2044: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2047: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2050: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2053: pop
    //   2054: goto +729 -> 2783
    //   2057: astore_3
    //   2058: ldc -73
    //   2060: ldc_w 427
    //   2063: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   2066: pop
    //   2067: goto -1513 -> 554
    //   2070: iconst_0
    //   2071: istore 7
    //   2073: iload 7
    //   2075: aload_3
    //   2076: invokevirtual 314	org/json/JSONArray:length	()I
    //   2079: if_icmpge -1452 -> 627
    //   2082: aload_3
    //   2083: iload 7
    //   2085: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   2088: checkcast 139	org/json/JSONObject
    //   2091: astore 4
    //   2093: aload_0
    //   2094: aload 4
    //   2096: ldc 26
    //   2098: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2101: astore 6
    //   2103: aload 6
    //   2105: ifnonnull +97 -> 2202
    //   2108: new 704	android/content/ContentValues
    //   2111: dup
    //   2112: invokespecial 705	android/content/ContentValues:<init>	()V
    //   2115: astore 6
    //   2117: aload 6
    //   2119: ldc_w 377
    //   2122: iload 8
    //   2124: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2127: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2130: aload 6
    //   2132: ldc_w 288
    //   2135: ldc_w 302
    //   2138: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2141: aload 6
    //   2143: ldc 42
    //   2145: aload_0
    //   2146: aload 4
    //   2148: ldc_w 483
    //   2151: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2154: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2157: aload 6
    //   2159: ldc 52
    //   2161: aload_0
    //   2162: aload_0
    //   2163: aload 4
    //   2165: ldc -94
    //   2167: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2170: invokespecial 639	org/apache/cordova/ContactAccessorSdk5:getImType	(Ljava/lang/String;)I
    //   2173: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2176: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2179: aload 5
    //   2181: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2184: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2187: aload 6
    //   2189: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   2192: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2195: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2198: pop
    //   2199: goto +593 -> 2792
    //   2202: aload 5
    //   2204: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2207: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2210: ldc_w 717
    //   2213: iconst_2
    //   2214: anewarray 204	java/lang/String
    //   2217: dup
    //   2218: iconst_0
    //   2219: aload 6
    //   2221: aastore
    //   2222: dup
    //   2223: iconst_1
    //   2224: ldc_w 302
    //   2227: aastore
    //   2228: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   2231: ldc 42
    //   2233: aload_0
    //   2234: aload 4
    //   2236: ldc_w 483
    //   2239: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2242: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2245: ldc 52
    //   2247: aload_0
    //   2248: aload_0
    //   2249: aload 4
    //   2251: ldc -94
    //   2253: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2256: invokespecial 647	org/apache/cordova/ContactAccessorSdk5:getContactType	(Ljava/lang/String;)I
    //   2259: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2262: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2265: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2268: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2271: pop
    //   2272: goto +520 -> 2792
    //   2275: astore_3
    //   2276: ldc -73
    //   2278: ldc_w 417
    //   2281: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   2284: pop
    //   2285: goto -1658 -> 627
    //   2288: iconst_0
    //   2289: istore 7
    //   2291: iload 7
    //   2293: aload_3
    //   2294: invokevirtual 314	org/json/JSONArray:length	()I
    //   2297: if_icmpge -1486 -> 811
    //   2300: aload_3
    //   2301: iload 7
    //   2303: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   2306: checkcast 139	org/json/JSONObject
    //   2309: astore 4
    //   2311: aload_0
    //   2312: aload 4
    //   2314: ldc 26
    //   2316: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2319: astore 6
    //   2321: aload 6
    //   2323: ifnonnull +97 -> 2420
    //   2326: new 704	android/content/ContentValues
    //   2329: dup
    //   2330: invokespecial 705	android/content/ContentValues:<init>	()V
    //   2333: astore 6
    //   2335: aload 6
    //   2337: ldc_w 377
    //   2340: iload 8
    //   2342: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2345: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2348: aload 6
    //   2350: ldc_w 288
    //   2353: ldc_w 308
    //   2356: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2359: aload 6
    //   2361: ldc 42
    //   2363: aload_0
    //   2364: aload 4
    //   2366: ldc_w 483
    //   2369: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2372: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2375: aload 6
    //   2377: ldc 52
    //   2379: aload_0
    //   2380: aload_0
    //   2381: aload 4
    //   2383: ldc -94
    //   2385: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2388: invokespecial 647	org/apache/cordova/ContactAccessorSdk5:getContactType	(Ljava/lang/String;)I
    //   2391: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2394: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2397: aload 5
    //   2399: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2402: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2405: aload 6
    //   2407: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   2410: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2413: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2416: pop
    //   2417: goto +384 -> 2801
    //   2420: aload 5
    //   2422: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2425: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2428: ldc_w 717
    //   2431: iconst_2
    //   2432: anewarray 204	java/lang/String
    //   2435: dup
    //   2436: iconst_0
    //   2437: aload 6
    //   2439: aastore
    //   2440: dup
    //   2441: iconst_1
    //   2442: ldc_w 308
    //   2445: aastore
    //   2446: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   2449: ldc 42
    //   2451: aload_0
    //   2452: aload 4
    //   2454: ldc_w 483
    //   2457: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2460: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2463: ldc 52
    //   2465: aload_0
    //   2466: aload_0
    //   2467: aload 4
    //   2469: ldc -94
    //   2471: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2474: invokespecial 647	org/apache/cordova/ContactAccessorSdk5:getContactType	(Ljava/lang/String;)I
    //   2477: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2480: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2483: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2486: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2489: pop
    //   2490: goto +311 -> 2801
    //   2493: astore_3
    //   2494: ldc -73
    //   2496: ldc_w 435
    //   2499: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   2502: pop
    //   2503: goto -1692 -> 811
    //   2506: iconst_0
    //   2507: istore 7
    //   2509: iload 7
    //   2511: aload_2
    //   2512: invokevirtual 314	org/json/JSONArray:length	()I
    //   2515: if_icmpge -1557 -> 958
    //   2518: aload_2
    //   2519: iload 7
    //   2521: invokevirtual 400	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   2524: checkcast 139	org/json/JSONObject
    //   2527: astore 4
    //   2529: aload_0
    //   2530: aload 4
    //   2532: ldc 26
    //   2534: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2537: astore_3
    //   2538: aload_0
    //   2539: aload_0
    //   2540: aload 4
    //   2542: ldc_w 483
    //   2545: invokevirtual 387	org/apache/cordova/ContactAccessorSdk5:getJsonString	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   2548: invokespecial 657	org/apache/cordova/ContactAccessorSdk5:getPhotoBytes	(Ljava/lang/String;)[B
    //   2551: astore 4
    //   2553: aload_3
    //   2554: ifnonnull +74 -> 2628
    //   2557: new 704	android/content/ContentValues
    //   2560: dup
    //   2561: invokespecial 705	android/content/ContentValues:<init>	()V
    //   2564: astore_3
    //   2565: aload_3
    //   2566: ldc_w 377
    //   2569: iload 8
    //   2571: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2574: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2577: aload_3
    //   2578: ldc_w 288
    //   2581: ldc 118
    //   2583: invokevirtual 711	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   2586: aload_3
    //   2587: ldc_w 659
    //   2590: iconst_1
    //   2591: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2594: invokevirtual 708	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   2597: aload_3
    //   2598: ldc_w 661
    //   2601: aload 4
    //   2603: invokevirtual 720	android/content/ContentValues:put	(Ljava/lang/String;[B)V
    //   2606: aload 5
    //   2608: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2611: invokestatic 351	android/content/ContentProviderOperation:newInsert	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2614: aload_3
    //   2615: invokevirtual 715	android/content/ContentProviderOperation$Builder:withValues	(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    //   2618: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2621: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2624: pop
    //   2625: goto +185 -> 2810
    //   2628: aload 5
    //   2630: getstatic 375	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   2633: invokestatic 674	android/content/ContentProviderOperation:newUpdate	(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    //   2636: ldc_w 717
    //   2639: iconst_2
    //   2640: anewarray 204	java/lang/String
    //   2643: dup
    //   2644: iconst_0
    //   2645: aload_3
    //   2646: aastore
    //   2647: dup
    //   2648: iconst_1
    //   2649: ldc 118
    //   2651: aastore
    //   2652: invokevirtual 683	android/content/ContentProviderOperation$Builder:withSelection	(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    //   2655: ldc_w 659
    //   2658: iconst_1
    //   2659: invokestatic 441	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2662: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2665: ldc_w 661
    //   2668: aload 4
    //   2670: invokevirtual 359	android/content/ContentProviderOperation$Builder:withValue	(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    //   2673: invokevirtual 365	android/content/ContentProviderOperation$Builder:build	()Landroid/content/ContentProviderOperation;
    //   2676: invokevirtual 284	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   2679: pop
    //   2680: goto +130 -> 2810
    //   2683: astore_2
    //   2684: ldc -73
    //   2686: ldc_w 448
    //   2689: invokestatic 410	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   2692: pop
    //   2693: goto -1735 -> 958
    //   2696: astore_2
    //   2697: ldc -73
    //   2699: aload_2
    //   2700: invokevirtual 479	android/os/RemoteException:getMessage	()Ljava/lang/String;
    //   2703: aload_2
    //   2704: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2707: pop
    //   2708: ldc -73
    //   2710: aload_2
    //   2711: invokestatic 724	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   2714: aload_2
    //   2715: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2718: pop
    //   2719: iconst_0
    //   2720: istore 7
    //   2722: goto -1740 -> 982
    //   2725: astore_2
    //   2726: ldc -73
    //   2728: aload_2
    //   2729: invokevirtual 480	android/content/OperationApplicationException:getMessage	()Ljava/lang/String;
    //   2732: aload_2
    //   2733: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2736: pop
    //   2737: ldc -73
    //   2739: aload_2
    //   2740: invokestatic 724	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   2743: aload_2
    //   2744: invokestatic 193	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   2747: pop
    //   2748: iconst_0
    //   2749: istore 7
    //   2751: goto -1769 -> 982
    //   2754: aconst_null
    //   2755: areturn
    //   2756: iload 7
    //   2758: iconst_1
    //   2759: iadd
    //   2760: istore 7
    //   2762: goto -1757 -> 1005
    //   2765: iload 7
    //   2767: iconst_1
    //   2768: iadd
    //   2769: istore 7
    //   2771: goto -1548 -> 1223
    //   2774: iload 7
    //   2776: iconst_1
    //   2777: iadd
    //   2778: istore 7
    //   2780: goto -1339 -> 1441
    //   2783: iload 7
    //   2785: iconst_1
    //   2786: iadd
    //   2787: istore 7
    //   2789: goto -992 -> 1797
    //   2792: iload 7
    //   2794: iconst_1
    //   2795: iadd
    //   2796: istore 7
    //   2798: goto -725 -> 2073
    //   2801: iload 7
    //   2803: iconst_1
    //   2804: iadd
    //   2805: istore 7
    //   2807: goto -516 -> 2291
    //   2810: iload 7
    //   2812: iconst_1
    //   2813: iadd
    //   2814: istore 7
    //   2816: goto -307 -> 2509
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2819	0	this	ContactAccessorSdk5
    //   0	2819	1	paramString1	String
    //   0	2819	2	paramJSONObject	JSONObject
    //   0	2819	3	paramString2	String
    //   0	2819	4	paramString3	String
    //   27	2602	5	localArrayList	ArrayList
    //   66	2372	6	localObject	Object
    //   959	1856	7	i	int
    //   18	2552	8	j	int
    // Exception table:
    //   from	to	target	type
    //   59	76	989	org/json/JSONException
    //   86	113	989	org/json/JSONException
    //   118	127	989	org/json/JSONException
    //   127	138	989	org/json/JSONException
    //   143	152	989	org/json/JSONException
    //   152	163	989	org/json/JSONException
    //   168	177	989	org/json/JSONException
    //   177	188	989	org/json/JSONException
    //   193	202	989	org/json/JSONException
    //   202	213	989	org/json/JSONException
    //   218	227	989	org/json/JSONException
    //   227	238	989	org/json/JSONException
    //   243	252	989	org/json/JSONException
    //   252	262	989	org/json/JSONException
    //   262	269	1207	org/json/JSONException
    //   273	335	1207	org/json/JSONException
    //   1005	1035	1207	org/json/JSONException
    //   1040	1131	1207	org/json/JSONException
    //   1134	1204	1207	org/json/JSONException
    //   335	342	1425	org/json/JSONException
    //   346	408	1425	org/json/JSONException
    //   1223	1253	1425	org/json/JSONException
    //   1258	1349	1425	org/json/JSONException
    //   1352	1422	1425	org/json/JSONException
    //   408	415	1781	org/json/JSONException
    //   419	481	1781	org/json/JSONException
    //   1441	1471	1781	org/json/JSONException
    //   1476	1641	1781	org/json/JSONException
    //   1644	1778	1781	org/json/JSONException
    //   481	488	2057	org/json/JSONException
    //   492	554	2057	org/json/JSONException
    //   1797	1827	2057	org/json/JSONException
    //   1832	1954	2057	org/json/JSONException
    //   1957	2054	2057	org/json/JSONException
    //   554	561	2275	org/json/JSONException
    //   565	627	2275	org/json/JSONException
    //   2073	2103	2275	org/json/JSONException
    //   2108	2199	2275	org/json/JSONException
    //   2202	2272	2275	org/json/JSONException
    //   729	736	2493	org/json/JSONException
    //   740	811	2493	org/json/JSONException
    //   2291	2321	2493	org/json/JSONException
    //   2326	2417	2493	org/json/JSONException
    //   2420	2490	2493	org/json/JSONException
    //   885	893	2683	org/json/JSONException
    //   897	958	2683	org/json/JSONException
    //   2509	2553	2683	org/json/JSONException
    //   2557	2625	2683	org/json/JSONException
    //   2628	2680	2683	org/json/JSONException
    //   961	982	2696	android/os/RemoteException
    //   961	982	2725	android/content/OperationApplicationException
  }
  
  private JSONObject nameQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      String str1 = paramCursor.getString(paramCursor.getColumnIndex("data3"));
      String str2 = paramCursor.getString(paramCursor.getColumnIndex("data2"));
      String str3 = paramCursor.getString(paramCursor.getColumnIndex("data5"));
      String str4 = paramCursor.getString(paramCursor.getColumnIndex("data4"));
      paramCursor = paramCursor.getString(paramCursor.getColumnIndex("data6"));
      StringBuffer localStringBuffer = new StringBuffer("");
      if (str4 != null) {
        localStringBuffer.append(str4 + " ");
      }
      if (str2 != null) {
        localStringBuffer.append(str2 + " ");
      }
      if (str3 != null) {
        localStringBuffer.append(str3 + " ");
      }
      if (str1 != null) {
        localStringBuffer.append(str1);
      }
      if (paramCursor != null) {
        localStringBuffer.append(" " + paramCursor);
      }
      localJSONObject.put("familyName", str1);
      localJSONObject.put("givenName", str2);
      localJSONObject.put("middleName", str3);
      localJSONObject.put("honorificPrefix", str4);
      localJSONObject.put("honorificSuffix", paramCursor);
      localJSONObject.put("formatted", localStringBuffer);
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private JSONObject organizationQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("type", getOrgType(paramCursor.getInt(paramCursor.getColumnIndex("data2"))));
      localJSONObject.put("department", paramCursor.getString(paramCursor.getColumnIndex("data5")));
      localJSONObject.put("name", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("title", paramCursor.getString(paramCursor.getColumnIndex("data4")));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private JSONObject phoneQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("value", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("type", getPhoneType(paramCursor.getInt(paramCursor.getColumnIndex("data2"))));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
      return localJSONObject;
    }
    catch (Exception paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private JSONObject photoQuery(Cursor paramCursor, String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("type", "url");
      localJSONObject.put("value", Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, new Long(paramString).longValue()), "photo").toString());
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  private JSONObject populateContact(JSONObject paramJSONObject, JSONArray paramJSONArray1, JSONArray paramJSONArray2, JSONArray paramJSONArray3, JSONArray paramJSONArray4, JSONArray paramJSONArray5, JSONArray paramJSONArray6, JSONArray paramJSONArray7)
  {
    try
    {
      if (paramJSONArray1.length() > 0) {
        paramJSONObject.put("organizations", paramJSONArray1);
      }
      if (paramJSONArray2.length() > 0) {
        paramJSONObject.put("addresses", paramJSONArray2);
      }
      if (paramJSONArray3.length() > 0) {
        paramJSONObject.put("phoneNumbers", paramJSONArray3);
      }
      if (paramJSONArray4.length() > 0) {
        paramJSONObject.put("emails", paramJSONArray4);
      }
      if (paramJSONArray5.length() > 0) {
        paramJSONObject.put("ims", paramJSONArray5);
      }
      if (paramJSONArray6.length() > 0) {
        paramJSONObject.put("urls", paramJSONArray6);
      }
      if (paramJSONArray7.length() > 0) {
        paramJSONObject.put("photos", paramJSONArray7);
      }
      return paramJSONObject;
    }
    catch (JSONException paramJSONArray1)
    {
      Log.e("ContactsAccessor", paramJSONArray1.getMessage(), paramJSONArray1);
    }
    return paramJSONObject;
  }
  
  private JSONArray populateContactArray(int paramInt, HashMap<String, Boolean> paramHashMap, Cursor paramCursor)
  {
    Object localObject19 = "";
    Object localObject1 = "";
    int i = 1;
    JSONArray localJSONArray = new JSONArray();
    Object localObject15 = new JSONObject();
    Object localObject3 = new JSONArray();
    Object localObject10 = new JSONArray();
    Object localObject6 = new JSONArray();
    Object localObject7 = new JSONArray();
    Object localObject9 = new JSONArray();
    Object localObject8 = new JSONArray();
    Object localObject4 = new JSONArray();
    int m = paramCursor.getColumnIndex("contact_id");
    int n = paramCursor.getColumnIndex("raw_contact_id");
    int i1 = paramCursor.getColumnIndex("mimetype");
    int i2 = paramCursor.getColumnIndex("data1");
    int i3 = paramCursor.getColumnIndex("data1");
    int i4 = paramCursor.getColumnIndex("data1");
    int i5 = paramCursor.getColumnIndex("data1");
    int i6 = paramCursor.getColumnIndex("data2");
    if (paramCursor.getCount() > 0) {}
    Object localObject27;
    label3582:
    for (;;)
    {
      if ((paramCursor.moveToNext()) && (localJSONArray.length() <= paramInt - 1))
      {
        Object localObject20 = localObject15;
        Object localObject21 = localObject3;
        Object localObject22 = localObject10;
        Object localObject23 = localObject6;
        Object localObject24 = localObject7;
        Object localObject25 = localObject9;
        Object localObject26 = localObject8;
        localObject27 = localObject4;
        Object localObject28 = localObject19;
        int j = i;
        try
        {
          localObject11 = paramCursor.getString(m);
          localObject20 = localObject15;
          localObject21 = localObject3;
          localObject22 = localObject10;
          localObject23 = localObject6;
          localObject24 = localObject7;
          localObject25 = localObject9;
          localObject26 = localObject8;
          localObject27 = localObject4;
          localObject28 = localObject11;
          j = i;
          localObject29 = paramCursor.getString(n);
          localObject19 = localObject1;
          localObject20 = localObject15;
          localObject21 = localObject3;
          localObject22 = localObject10;
          localObject23 = localObject6;
          localObject24 = localObject7;
          localObject25 = localObject9;
          localObject26 = localObject8;
          localObject27 = localObject4;
          localObject28 = localObject11;
          j = i;
          if (paramCursor.getPosition() == 0) {
            localObject19 = localObject11;
          }
          localObject18 = localObject15;
          localObject17 = localObject3;
          localObject16 = localObject10;
          localObject14 = localObject6;
          localObject13 = localObject7;
          localObject12 = localObject9;
          localObject2 = localObject8;
          localObject1 = localObject4;
          k = i;
          localObject20 = localObject15;
          localObject21 = localObject3;
          localObject22 = localObject10;
          localObject23 = localObject6;
          localObject24 = localObject7;
          localObject25 = localObject9;
          localObject26 = localObject8;
          localObject27 = localObject4;
          localObject28 = localObject11;
          j = i;
          if (!((String)localObject19).equals(localObject11))
          {
            localObject20 = localObject15;
            localObject21 = localObject3;
            localObject22 = localObject10;
            localObject23 = localObject6;
            localObject24 = localObject7;
            localObject25 = localObject9;
            localObject26 = localObject8;
            localObject27 = localObject4;
            localObject28 = localObject11;
            j = i;
            localJSONArray.put(populateContact((JSONObject)localObject15, (JSONArray)localObject3, (JSONArray)localObject10, (JSONArray)localObject6, (JSONArray)localObject7, (JSONArray)localObject9, (JSONArray)localObject8, (JSONArray)localObject4));
            localObject20 = localObject15;
            localObject21 = localObject3;
            localObject22 = localObject10;
            localObject23 = localObject6;
            localObject24 = localObject7;
            localObject25 = localObject9;
            localObject26 = localObject8;
            localObject27 = localObject4;
            localObject28 = localObject11;
            j = i;
            localObject1 = new JSONObject();
          }
          Log.e("ContactsAccessor", localJSONException1.getMessage(), localJSONException1);
        }
        catch (JSONException localJSONException1)
        {
          for (;;)
          {
            Object localObject29;
            int k;
            Object localObject5;
            try
            {
              localObject2 = new JSONArray();
            }
            catch (JSONException localJSONException3)
            {
              Object localObject11;
              Object localObject18;
              Object localObject17;
              Object localObject16;
              Object localObject14;
              Object localObject13;
              Object localObject12;
              Object localObject2 = localObject3;
              localObject3 = localObject10;
              localObject27 = localObject5;
              localObject5 = localJSONException3;
              continue;
            }
            try
            {
              localObject3 = new JSONArray();
            }
            catch (JSONException localJSONException4)
            {
              localObject3 = localObject10;
              localObject27 = localObject5;
              localObject5 = localJSONException4;
              continue;
            }
            try
            {
              localObject10 = new JSONArray();
            }
            catch (JSONException localJSONException2)
            {
              localObject27 = localObject5;
              localObject5 = localJSONException2;
              continue;
            }
            try
            {
              localObject6 = new JSONArray();
            }
            catch (JSONException localJSONException5)
            {
              localObject6 = localJSONException2;
              localObject27 = localObject5;
              localObject5 = localJSONException5;
              continue;
            }
            try
            {
              localObject7 = new JSONArray();
            }
            catch (JSONException localJSONException6)
            {
              localObject7 = localObject6;
              localObject6 = localJSONException2;
              localObject27 = localObject5;
              localObject5 = localJSONException6;
              continue;
            }
            try
            {
              localObject9 = new JSONArray();
            }
            catch (JSONException localJSONException7)
            {
              localObject9 = localObject7;
              localObject7 = localObject6;
              localObject6 = localJSONException2;
              localObject27 = localObject5;
              localObject5 = localJSONException7;
              continue;
            }
            try
            {
              localObject8 = new JSONArray();
              k = 1;
              localObject4 = localObject8;
              localObject8 = localObject9;
              localObject17 = localObject2;
              localObject18 = localObject1;
              localObject1 = localObject4;
              localObject2 = localObject8;
              localObject12 = localObject7;
              localObject13 = localObject6;
              localObject14 = localObject10;
              localObject16 = localObject3;
              i = k;
              if (k != 0)
              {
                k = 0;
                i = 0;
                localObject20 = localObject18;
                localObject21 = localObject17;
                localObject22 = localObject16;
                localObject23 = localObject14;
                localObject24 = localObject13;
                localObject25 = localObject12;
                localObject26 = localObject2;
                localObject27 = localObject1;
                localObject28 = localObject11;
                j = k;
                ((JSONObject)localObject18).put("id", localObject11);
                localObject20 = localObject18;
                localObject21 = localObject17;
                localObject22 = localObject16;
                localObject23 = localObject14;
                localObject24 = localObject13;
                localObject25 = localObject12;
                localObject26 = localObject2;
                localObject27 = localObject1;
                localObject28 = localObject11;
                j = k;
                ((JSONObject)localObject18).put("rawId", localObject29);
              }
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              localObject3 = paramCursor.getString(i1);
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              if (((String)localObject3).equals("vnd.android.cursor.item/name"))
              {
                localObject20 = localObject18;
                localObject21 = localObject17;
                localObject22 = localObject16;
                localObject23 = localObject14;
                localObject24 = localObject13;
                localObject25 = localObject12;
                localObject26 = localObject2;
                localObject27 = localObject1;
                localObject28 = localObject11;
                j = i;
                ((JSONObject)localObject18).put("displayName", paramCursor.getString(i2));
              }
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              if (((String)localObject3).equals("vnd.android.cursor.item/name"))
              {
                localObject20 = localObject18;
                localObject21 = localObject17;
                localObject22 = localObject16;
                localObject23 = localObject14;
                localObject24 = localObject13;
                localObject25 = localObject12;
                localObject26 = localObject2;
                localObject27 = localObject1;
                localObject28 = localObject11;
                j = i;
                if (isRequired("name", paramHashMap))
                {
                  localObject20 = localObject18;
                  localObject21 = localObject17;
                  localObject22 = localObject16;
                  localObject23 = localObject14;
                  localObject24 = localObject13;
                  localObject25 = localObject12;
                  localObject26 = localObject2;
                  localObject27 = localObject1;
                  localObject28 = localObject11;
                  j = i;
                  ((JSONObject)localObject18).put("name", nameQuery(paramCursor));
                  localObject15 = localObject18;
                  localObject4 = localObject17;
                  localObject10 = localObject16;
                  localObject6 = localObject14;
                  localObject7 = localObject13;
                  localObject9 = localObject12;
                  localObject8 = localObject2;
                  localObject29 = localObject1;
                  localObject19 = localObject11;
                  k = i;
                  break label3582;
                }
              }
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              if (!((String)localObject3).equals("vnd.android.cursor.item/phone_v2")) {
                continue;
              }
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              if (!isRequired("phoneNumbers", paramHashMap)) {
                continue;
              }
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              ((JSONArray)localObject14).put(phoneQuery(paramCursor));
              localObject15 = localObject18;
              localObject4 = localObject17;
              localObject10 = localObject16;
              localObject6 = localObject14;
              localObject7 = localObject13;
              localObject9 = localObject12;
              localObject8 = localObject2;
              localObject29 = localObject1;
              localObject19 = localObject11;
              k = i;
            }
            catch (JSONException localJSONException8)
            {
              localObject8 = localObject9;
              localObject9 = localObject7;
              localObject7 = localObject6;
              localObject6 = localJSONException2;
              localObject27 = localObject5;
              localObject5 = localJSONException8;
              continue;
              localObject1 = localObject19;
              localObject3 = localObject5;
              localObject5 = localObject29;
              i = k;
            }
          }
          localJSONException1 = localJSONException1;
          i = j;
          localObject11 = localObject28;
          localObject8 = localObject26;
          localObject9 = localObject25;
          localObject7 = localObject24;
          localObject6 = localObject23;
          localObject3 = localObject22;
          localObject2 = localObject21;
          localObject1 = localObject20;
        }
        localObject15 = localObject1;
        localObject5 = localObject2;
        localObject10 = localObject3;
        localObject29 = localObject27;
        localObject19 = localObject11;
        k = i;
        break label3582;
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/email_v2"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("emails", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONArray)localObject13).put(emailQuery(paramCursor));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/postal-address_v2"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("addresses", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONArray)localObject16).put(addressQuery(paramCursor));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/organization"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("organizations", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONArray)localObject17).put(organizationQuery(paramCursor));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/im"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("ims", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONArray)localObject12).put(imQuery(paramCursor));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/note"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("note", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONObject)localObject18).put("note", paramCursor.getString(i3));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/nickname"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("nickname", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONObject)localObject18).put("nickname", paramCursor.getString(i4));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/website"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          if (isRequired("urls", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            ((JSONArray)localObject2).put(websiteQuery(paramCursor));
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            break label3582;
          }
        }
        localObject20 = localObject18;
        localObject21 = localObject17;
        localObject22 = localObject16;
        localObject23 = localObject14;
        localObject24 = localObject13;
        localObject25 = localObject12;
        localObject26 = localObject2;
        localObject27 = localObject1;
        localObject28 = localObject11;
        j = i;
        if (((String)localObject3).equals("vnd.android.cursor.item/contact_event"))
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          localObject15 = localObject18;
          localObject5 = localObject17;
          localObject10 = localObject16;
          localObject6 = localObject14;
          localObject7 = localObject13;
          localObject9 = localObject12;
          localObject8 = localObject2;
          localObject29 = localObject1;
          localObject19 = localObject11;
          k = i;
          if (isRequired("birthday", paramHashMap))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            if (3 == paramCursor.getInt(i6))
            {
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              ((JSONObject)localObject18).put("birthday", paramCursor.getString(i5));
              localObject15 = localObject18;
              localObject5 = localObject17;
              localObject10 = localObject16;
              localObject6 = localObject14;
              localObject7 = localObject13;
              localObject9 = localObject12;
              localObject8 = localObject2;
              localObject29 = localObject1;
              localObject19 = localObject11;
              k = i;
            }
          }
        }
        else
        {
          localObject20 = localObject18;
          localObject21 = localObject17;
          localObject22 = localObject16;
          localObject23 = localObject14;
          localObject24 = localObject13;
          localObject25 = localObject12;
          localObject26 = localObject2;
          localObject27 = localObject1;
          localObject28 = localObject11;
          j = i;
          localObject15 = localObject18;
          localObject5 = localObject17;
          localObject10 = localObject16;
          localObject6 = localObject14;
          localObject7 = localObject13;
          localObject9 = localObject12;
          localObject8 = localObject2;
          localObject29 = localObject1;
          localObject19 = localObject11;
          k = i;
          if (((String)localObject3).equals("vnd.android.cursor.item/photo"))
          {
            localObject20 = localObject18;
            localObject21 = localObject17;
            localObject22 = localObject16;
            localObject23 = localObject14;
            localObject24 = localObject13;
            localObject25 = localObject12;
            localObject26 = localObject2;
            localObject27 = localObject1;
            localObject28 = localObject11;
            j = i;
            localObject15 = localObject18;
            localObject5 = localObject17;
            localObject10 = localObject16;
            localObject6 = localObject14;
            localObject7 = localObject13;
            localObject9 = localObject12;
            localObject8 = localObject2;
            localObject29 = localObject1;
            localObject19 = localObject11;
            k = i;
            if (isRequired("photos", paramHashMap))
            {
              localObject20 = localObject18;
              localObject21 = localObject17;
              localObject22 = localObject16;
              localObject23 = localObject14;
              localObject24 = localObject13;
              localObject25 = localObject12;
              localObject26 = localObject2;
              localObject27 = localObject1;
              localObject28 = localObject11;
              j = i;
              ((JSONArray)localObject1).put(photoQuery(paramCursor, (String)localObject11));
              localObject15 = localObject18;
              localObject5 = localObject17;
              localObject10 = localObject16;
              localObject6 = localObject14;
              localObject7 = localObject13;
              localObject9 = localObject12;
              localObject8 = localObject2;
              localObject29 = localObject1;
              localObject19 = localObject11;
              k = i;
            }
          }
        }
      }
      else
      {
        if (localJSONArray.length() < paramInt) {
          localJSONArray.put(populateContact((JSONObject)localObject15, (JSONArray)localObject3, (JSONArray)localObject10, (JSONArray)localObject6, (JSONArray)localObject7, (JSONArray)localObject9, (JSONArray)localObject8, (JSONArray)localObject5));
        }
        paramCursor.close();
        return localJSONArray;
      }
    }
  }
  
  private JSONObject websiteQuery(Cursor paramCursor)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", paramCursor.getString(paramCursor.getColumnIndex("_id")));
      localJSONObject.put("pref", false);
      localJSONObject.put("value", paramCursor.getString(paramCursor.getColumnIndex("data1")));
      localJSONObject.put("type", getContactType(paramCursor.getInt(paramCursor.getColumnIndex("data2"))));
      return localJSONObject;
    }
    catch (JSONException paramCursor)
    {
      Log.e("ContactsAccessor", paramCursor.getMessage(), paramCursor);
    }
    return localJSONObject;
  }
  
  public JSONObject getContactById(String paramString)
    throws JSONException
  {
    Object localObject = null;
    paramString = mApp.getActivity().getContentResolver().query(ContactsContract.Data.CONTENT_URI, null, "contact_id = ? ", new String[] { paramString }, "contact_id ASC");
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put("*");
    localJSONArray = populateContactArray(1, buildPopulationSet(localJSONArray), paramString);
    paramString = (String)localObject;
    if (localJSONArray.length() == 1) {
      paramString = localJSONArray.getJSONObject(0);
    }
    return paramString;
  }
  
  public boolean remove(String paramString)
  {
    int i = 0;
    paramString = mApp.getActivity().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "_id = ?", new String[] { paramString }, null);
    if (paramString.getCount() == 1)
    {
      paramString.moveToFirst();
      paramString = paramString.getString(paramString.getColumnIndex("lookup"));
      paramString = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, paramString);
      i = mApp.getActivity().getContentResolver().delete(paramString, null, null);
    }
    while (i > 0)
    {
      return true;
      Log.d("ContactsAccessor", "Could not find contact with ID");
    }
    return false;
  }
  
  public String save(JSONObject paramJSONObject)
  {
    Account[] arrayOfAccount = AccountManager.get(mApp.getActivity()).getAccounts();
    Object localObject3 = null;
    Object localObject1 = null;
    Object localObject4 = null;
    Object localObject2 = null;
    if (arrayOfAccount.length == 1)
    {
      localObject1 = 0name;
      localObject2 = 0type;
    }
    label87:
    label159:
    do
    {
      do
      {
        localObject3 = getJsonString(paramJSONObject, "id");
        if (localObject3 != null) {
          break;
        }
        return createNewContact(paramJSONObject, (String)localObject2, (String)localObject1);
      } while (arrayOfAccount.length <= 1);
      j = arrayOfAccount.length;
      i = 0;
      localObject2 = localObject3;
      localObject1 = localObject4;
      if (i < j)
      {
        localObject1 = arrayOfAccount[i];
        if ((!type.contains("eas")) || (!name.matches(".+@.+\\.+.+"))) {
          break;
        }
        localObject2 = name;
        localObject1 = type;
      }
      localObject4 = localObject2;
      localObject3 = localObject1;
      if (localObject2 == null)
      {
        j = arrayOfAccount.length;
        i = 0;
        localObject4 = localObject2;
        localObject3 = localObject1;
        if (i < j)
        {
          localObject3 = arrayOfAccount[i];
          if ((!type.contains("com.google")) || (!name.matches(".+@.+\\.+.+"))) {
            break label292;
          }
          localObject4 = name;
          localObject3 = type;
        }
      }
      localObject1 = localObject4;
      localObject2 = localObject3;
    } while (localObject4 != null);
    int j = arrayOfAccount.length;
    int i = 0;
    for (;;)
    {
      localObject1 = localObject4;
      localObject2 = localObject3;
      if (i >= j) {
        break;
      }
      localObject2 = arrayOfAccount[i];
      if (name.matches(".+@.+\\.+.+"))
      {
        localObject1 = name;
        localObject2 = type;
        break;
        i += 1;
        break label87;
        label292:
        i += 1;
        break label159;
      }
      i += 1;
    }
    return modifyContact((String)localObject3, paramJSONObject, (String)localObject2, (String)localObject1);
  }
  
  public JSONArray search(JSONArray paramJSONArray, JSONObject paramJSONObject)
  {
    int i = Integer.MAX_VALUE;
    if (paramJSONObject != null)
    {
      localObject1 = paramJSONObject.optString("filter");
      if (((String)localObject1).length() == 0) {
        localObject1 = "%";
      }
    }
    for (;;)
    {
      try
      {
        boolean bool = paramJSONObject.getBoolean("multiple");
        paramJSONObject = (JSONObject)localObject1;
        if (!bool)
        {
          i = 1;
          paramJSONObject = (JSONObject)localObject1;
        }
      }
      catch (JSONException paramJSONObject)
      {
        Object localObject3;
        Object localObject2;
        String str;
        int j;
        int k;
        paramJSONObject = (JSONObject)localObject1;
        continue;
      }
      localObject1 = buildPopulationSet(paramJSONArray);
      localObject3 = buildWhereClause(paramJSONArray, paramJSONObject);
      paramJSONArray = mApp.getActivity().getContentResolver();
      localObject2 = ContactsContract.Data.CONTENT_URI;
      str = ((ContactAccessor.WhereOptions)localObject3).getWhere();
      localObject3 = ((ContactAccessor.WhereOptions)localObject3).getWhereArgs();
      paramJSONArray = paramJSONArray.query((Uri)localObject2, new String[] { "contact_id" }, str, (String[])localObject3, "contact_id ASC");
      localObject2 = new HashSet();
      j = -1;
      if (!paramJSONArray.moveToNext()) {
        continue;
      }
      k = j;
      if (j < 0) {
        k = paramJSONArray.getColumnIndex("contact_id");
      }
      ((Set)localObject2).add(paramJSONArray.getString(k));
      j = k;
      continue;
      localObject1 = "%" + (String)localObject1 + "%";
      continue;
      paramJSONObject = "%";
    }
    paramJSONArray.close();
    paramJSONArray = buildIdClause((Set)localObject2, paramJSONObject);
    paramJSONObject = new HashSet();
    paramJSONObject.add("contact_id");
    paramJSONObject.add("raw_contact_id");
    paramJSONObject.add("mimetype");
    if (isRequired("displayName", (HashMap)localObject1)) {
      paramJSONObject.add("data1");
    }
    if (isRequired("name", (HashMap)localObject1))
    {
      paramJSONObject.add("data3");
      paramJSONObject.add("data2");
      paramJSONObject.add("data5");
      paramJSONObject.add("data4");
      paramJSONObject.add("data6");
    }
    if (isRequired("phoneNumbers", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data1");
      paramJSONObject.add("data2");
    }
    if (isRequired("emails", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data1");
      paramJSONObject.add("data2");
    }
    if (isRequired("addresses", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data2");
      paramJSONObject.add("data1");
      paramJSONObject.add("data4");
      paramJSONObject.add("data7");
      paramJSONObject.add("data8");
      paramJSONObject.add("data9");
      paramJSONObject.add("data10");
    }
    if (isRequired("organizations", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data2");
      paramJSONObject.add("data5");
      paramJSONObject.add("data1");
      paramJSONObject.add("data4");
    }
    if (isRequired("ims", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data1");
      paramJSONObject.add("data2");
    }
    if (isRequired("note", (HashMap)localObject1)) {
      paramJSONObject.add("data1");
    }
    if (isRequired("nickname", (HashMap)localObject1)) {
      paramJSONObject.add("data1");
    }
    if (isRequired("urls", (HashMap)localObject1))
    {
      paramJSONObject.add("_id");
      paramJSONObject.add("data1");
      paramJSONObject.add("data2");
    }
    if (isRequired("birthday", (HashMap)localObject1))
    {
      paramJSONObject.add("data1");
      paramJSONObject.add("data2");
    }
    if (isRequired("photos", (HashMap)localObject1)) {
      paramJSONObject.add("_id");
    }
    return populateContactArray(i, (HashMap)localObject1, mApp.getActivity().getContentResolver().query(ContactsContract.Data.CONTENT_URI, (String[])paramJSONObject.toArray(new String[0]), paramJSONArray.getWhere(), paramJSONArray.getWhereArgs(), "contact_id ASC"));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ContactAccessorSdk5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */