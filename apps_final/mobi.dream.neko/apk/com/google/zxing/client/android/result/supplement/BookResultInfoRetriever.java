package com.google.zxing.client.android.result.supplement;

import android.content.Context;
import android.widget.TextView;
import com.google.zxing.FakeR;
import com.google.zxing.client.android.history.HistoryManager;

final class BookResultInfoRetriever
  extends SupplementalInfoRetriever
{
  private final Context context;
  private final String isbn;
  private final String source;
  
  BookResultInfoRetriever(TextView paramTextView, String paramString, HistoryManager paramHistoryManager, Context paramContext)
  {
    super(paramTextView, paramHistoryManager);
    isbn = paramString;
    source = paramContext.getString(FakeR.getId(paramContext, "string", "msg_google_books"));
    context = paramContext;
  }
  
  /* Error */
  void retrieveSupplementalInfo()
    throws java.io.IOException
  {
    // Byte code:
    //   0: new 45	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   7: ldc 49
    //   9: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   12: aload_0
    //   13: getfield 16	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:isbn	Ljava/lang/String;
    //   16: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: getstatic 63	com/google/zxing/client/android/HttpHelper$ContentType:JSON	Lcom/google/zxing/client/android/HttpHelper$ContentType;
    //   25: invokestatic 69	com/google/zxing/client/android/HttpHelper:downloadViaHttp	(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;
    //   28: astore_1
    //   29: aload_1
    //   30: invokeinterface 75 1 0
    //   35: ifne +4 -> 39
    //   38: return
    //   39: aconst_null
    //   40: astore_2
    //   41: new 77	org/json/JSONTokener
    //   44: dup
    //   45: aload_1
    //   46: invokeinterface 78 1 0
    //   51: invokespecial 81	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   54: invokevirtual 85	org/json/JSONTokener:nextValue	()Ljava/lang/Object;
    //   57: checkcast 87	org/json/JSONObject
    //   60: ldc 89
    //   62: invokevirtual 93	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   65: astore_1
    //   66: aload_1
    //   67: ifnull -29 -> 38
    //   70: aload_1
    //   71: iconst_0
    //   72: invokevirtual 99	org/json/JSONArray:isNull	(I)Z
    //   75: ifne -37 -> 38
    //   78: aload_1
    //   79: iconst_0
    //   80: invokevirtual 103	org/json/JSONArray:get	(I)Ljava/lang/Object;
    //   83: checkcast 87	org/json/JSONObject
    //   86: ldc 105
    //   88: invokevirtual 109	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   91: astore_1
    //   92: aload_1
    //   93: ifnull -55 -> 38
    //   96: aload_1
    //   97: ldc 111
    //   99: invokevirtual 115	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   102: astore 4
    //   104: aload_1
    //   105: ldc 117
    //   107: invokevirtual 115	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   110: astore_3
    //   111: aload_1
    //   112: ldc 119
    //   114: invokevirtual 93	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   117: astore 5
    //   119: aload_2
    //   120: astore_1
    //   121: aload 5
    //   123: ifnull +76 -> 199
    //   126: aload_2
    //   127: astore_1
    //   128: aload 5
    //   130: iconst_0
    //   131: invokevirtual 99	org/json/JSONArray:isNull	(I)Z
    //   134: ifne +65 -> 199
    //   137: new 121	java/util/ArrayList
    //   140: dup
    //   141: aload 5
    //   143: invokevirtual 122	org/json/JSONArray:length	()I
    //   146: invokespecial 125	java/util/ArrayList:<init>	(I)V
    //   149: astore_1
    //   150: iconst_0
    //   151: istore 6
    //   153: iload 6
    //   155: aload 5
    //   157: invokevirtual 122	org/json/JSONArray:length	()I
    //   160: if_icmpge +39 -> 199
    //   163: aload_1
    //   164: aload 5
    //   166: iload 6
    //   168: invokevirtual 126	org/json/JSONArray:getString	(I)Ljava/lang/String;
    //   171: invokeinterface 132 2 0
    //   176: pop
    //   177: iload 6
    //   179: iconst_1
    //   180: iadd
    //   181: istore 6
    //   183: goto -30 -> 153
    //   186: astore_1
    //   187: new 41	java/io/IOException
    //   190: dup
    //   191: aload_1
    //   192: invokevirtual 133	org/json/JSONException:toString	()Ljava/lang/String;
    //   195: invokespecial 134	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   198: athrow
    //   199: new 121	java/util/ArrayList
    //   202: dup
    //   203: invokespecial 135	java/util/ArrayList:<init>	()V
    //   206: astore_2
    //   207: aload 4
    //   209: ifnull +20 -> 229
    //   212: aload 4
    //   214: invokevirtual 138	java/lang/String:length	()I
    //   217: ifle +12 -> 229
    //   220: aload_2
    //   221: aload 4
    //   223: invokeinterface 132 2 0
    //   228: pop
    //   229: aload_1
    //   230: ifnull +93 -> 323
    //   233: aload_1
    //   234: invokeinterface 142 1 0
    //   239: ifne +84 -> 323
    //   242: iconst_1
    //   243: istore 6
    //   245: new 45	java/lang/StringBuilder
    //   248: dup
    //   249: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   252: astore 4
    //   254: aload_1
    //   255: invokeinterface 146 1 0
    //   260: astore_1
    //   261: aload_1
    //   262: invokeinterface 151 1 0
    //   267: ifeq +44 -> 311
    //   270: aload_1
    //   271: invokeinterface 154 1 0
    //   276: checkcast 137	java/lang/String
    //   279: astore 5
    //   281: iload 6
    //   283: ifeq +17 -> 300
    //   286: iconst_0
    //   287: istore 6
    //   289: aload 4
    //   291: aload 5
    //   293: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: pop
    //   297: goto -36 -> 261
    //   300: aload 4
    //   302: ldc -100
    //   304: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: pop
    //   308: goto -19 -> 289
    //   311: aload_2
    //   312: aload 4
    //   314: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: invokeinterface 132 2 0
    //   322: pop
    //   323: aload_3
    //   324: ifnull +36 -> 360
    //   327: aload_3
    //   328: invokevirtual 138	java/lang/String:length	()I
    //   331: ifle +29 -> 360
    //   334: aload_2
    //   335: new 45	java/lang/StringBuilder
    //   338: dup
    //   339: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   342: aload_3
    //   343: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: ldc -98
    //   348: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   354: invokeinterface 132 2 0
    //   359: pop
    //   360: new 45	java/lang/StringBuilder
    //   363: dup
    //   364: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   367: ldc -96
    //   369: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload_0
    //   373: getfield 36	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:context	Landroid/content/Context;
    //   376: invokestatic 166	com/google/zxing/client/android/LocaleManager:getBookSearchCountryTLD	(Landroid/content/Context;)Ljava/lang/String;
    //   379: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: ldc -88
    //   384: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: astore_1
    //   391: aload_0
    //   392: aload_0
    //   393: getfield 16	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:isbn	Ljava/lang/String;
    //   396: aload_0
    //   397: getfield 34	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:source	Ljava/lang/String;
    //   400: aload_2
    //   401: aload_2
    //   402: invokeinterface 171 1 0
    //   407: anewarray 137	java/lang/String
    //   410: invokeinterface 175 2 0
    //   415: checkcast 177	[Ljava/lang/String;
    //   418: new 45	java/lang/StringBuilder
    //   421: dup
    //   422: invokespecial 47	java/lang/StringBuilder:<init>	()V
    //   425: aload_1
    //   426: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   429: aload_0
    //   430: getfield 16	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:isbn	Ljava/lang/String;
    //   433: invokevirtual 53	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokevirtual 180	com/google/zxing/client/android/result/supplement/BookResultInfoRetriever:append	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    //   442: return
    //   443: astore_1
    //   444: goto -257 -> 187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	447	0	this	BookResultInfoRetriever
    //   28	136	1	localObject1	Object
    //   186	69	1	localJSONException1	org.json.JSONException
    //   260	166	1	localObject2	Object
    //   443	1	1	localJSONException2	org.json.JSONException
    //   40	362	2	localArrayList	java.util.ArrayList
    //   110	233	3	str	String
    //   102	211	4	localObject3	Object
    //   117	175	5	localObject4	Object
    //   151	137	6	i	int
    // Exception table:
    //   from	to	target	type
    //   41	66	186	org/json/JSONException
    //   70	92	186	org/json/JSONException
    //   96	119	186	org/json/JSONException
    //   128	150	186	org/json/JSONException
    //   153	177	443	org/json/JSONException
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.result.supplement.BookResultInfoRetriever
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */