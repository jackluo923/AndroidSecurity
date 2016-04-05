package com.inmobi.commons.analytics.db;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import org.json.JSONObject;

public class FunctionTagTransaction
  extends AnalyticsFunctions
{
  private Context a;
  private Intent b;
  private Bundle c;
  
  public FunctionTagTransaction(Context paramContext, Intent paramIntent, Bundle paramBundle)
  {
    a = paramContext;
    b = paramIntent;
    c = paramBundle;
  }
  
  /* Error */
  private AnalyticsEvent a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/inmobi/commons/analytics/db/FunctionTagTransaction:a	Landroid/content/Context;
    //   4: invokestatic 33	com/inmobi/commons/analytics/util/SessionInfo:getSessionId	(Landroid/content/Context;)Ljava/lang/String;
    //   7: ifnull +284 -> 291
    //   10: aload_0
    //   11: getfield 19	com/inmobi/commons/analytics/db/FunctionTagTransaction:b	Landroid/content/Intent;
    //   14: ifnull +277 -> 291
    //   17: new 35	com/inmobi/commons/analytics/db/AnalyticsEvent
    //   20: dup
    //   21: ldc 37
    //   23: invokespecial 40	com/inmobi/commons/analytics/db/AnalyticsEvent:<init>	(Ljava/lang/String;)V
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 19	com/inmobi/commons/analytics/db/FunctionTagTransaction:b	Landroid/content/Intent;
    //   31: ldc 42
    //   33: iconst_0
    //   34: invokevirtual 48	android/content/Intent:getIntExtra	(Ljava/lang/String;I)I
    //   37: istore 4
    //   39: aload_0
    //   40: getfield 19	com/inmobi/commons/analytics/db/FunctionTagTransaction:b	Landroid/content/Intent;
    //   43: ldc 50
    //   45: invokevirtual 54	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   48: astore_3
    //   49: aload_1
    //   50: astore_2
    //   51: iload 4
    //   53: ifne +136 -> 189
    //   56: new 56	org/json/JSONObject
    //   59: dup
    //   60: aload_3
    //   61: invokespecial 57	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   64: astore_2
    //   65: aload_1
    //   66: aload_2
    //   67: ldc 59
    //   69: invokevirtual 62	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   72: invokevirtual 65	com/inmobi/commons/analytics/db/AnalyticsEvent:setTransactionId	(Ljava/lang/String;)V
    //   75: aload_1
    //   76: aload_2
    //   77: ldc 67
    //   79: invokevirtual 62	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   82: invokevirtual 70	com/inmobi/commons/analytics/db/AnalyticsEvent:setTransactionProductId	(Ljava/lang/String;)V
    //   85: aload_2
    //   86: ldc 72
    //   88: invokevirtual 76	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   91: lstore 7
    //   93: lload 7
    //   95: lstore 5
    //   97: lconst_0
    //   98: lload 7
    //   100: lcmp
    //   101: ifne +8 -> 109
    //   104: invokestatic 82	java/lang/System:currentTimeMillis	()J
    //   107: lstore 5
    //   109: aload_1
    //   110: lload 5
    //   112: ldc2_w 83
    //   115: ldiv
    //   116: invokevirtual 88	com/inmobi/commons/analytics/db/AnalyticsEvent:setEventTimeStamp	(J)V
    //   119: aload_2
    //   120: ldc 90
    //   122: invokevirtual 94	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   125: istore 4
    //   127: getstatic 100	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:PURCHASED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
    //   130: invokevirtual 104	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:getValue	()I
    //   133: iload 4
    //   135: if_icmpne +56 -> 191
    //   138: getstatic 109	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:PURCHASED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    //   141: invokevirtual 110	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:getValue	()I
    //   144: istore 4
    //   146: aload_1
    //   147: iload 4
    //   149: invokevirtual 114	com/inmobi/commons/analytics/db/AnalyticsEvent:setTransactionStatus	(I)V
    //   152: aload_0
    //   153: aload_1
    //   154: invokespecial 117	com/inmobi/commons/analytics/db/FunctionTagTransaction:a	(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    //   157: astore_2
    //   158: aload_2
    //   159: astore_1
    //   160: aload_1
    //   161: aload_0
    //   162: getfield 17	com/inmobi/commons/analytics/db/FunctionTagTransaction:a	Landroid/content/Context;
    //   165: invokestatic 33	com/inmobi/commons/analytics/util/SessionInfo:getSessionId	(Landroid/content/Context;)Ljava/lang/String;
    //   168: invokevirtual 120	com/inmobi/commons/analytics/db/AnalyticsEvent:setEventSessionId	(Ljava/lang/String;)V
    //   171: aload_1
    //   172: aload_0
    //   173: getfield 17	com/inmobi/commons/analytics/db/FunctionTagTransaction:a	Landroid/content/Context;
    //   176: invokestatic 124	com/inmobi/commons/analytics/util/SessionInfo:getSessionTime	(Landroid/content/Context;)J
    //   179: invokevirtual 127	com/inmobi/commons/analytics/db/AnalyticsEvent:setEventSessionTimeStamp	(J)V
    //   182: aload_0
    //   183: aload_1
    //   184: invokevirtual 131	com/inmobi/commons/analytics/db/FunctionTagTransaction:insertInDatabase	(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    //   187: aload_1
    //   188: astore_2
    //   189: aload_2
    //   190: areturn
    //   191: getstatic 134	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:FAILED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
    //   194: invokevirtual 104	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:getValue	()I
    //   197: iload 4
    //   199: if_icmpne +14 -> 213
    //   202: getstatic 136	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:FAILED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    //   205: invokevirtual 110	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:getValue	()I
    //   208: istore 4
    //   210: goto -64 -> 146
    //   213: getstatic 139	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:REFUNDED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;
    //   216: invokevirtual 104	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES:getValue	()I
    //   219: iload 4
    //   221: if_icmpne +14 -> 235
    //   224: getstatic 141	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:REFUNDED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    //   227: invokevirtual 110	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:getValue	()I
    //   230: istore 4
    //   232: goto -86 -> 146
    //   235: getstatic 144	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:RESTORED	Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;
    //   238: invokevirtual 110	com/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE:getValue	()I
    //   241: istore 4
    //   243: goto -97 -> 146
    //   246: astore_1
    //   247: ldc -110
    //   249: ldc -108
    //   251: invokestatic 154	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   254: ldc -110
    //   256: ldc -100
    //   258: aload_1
    //   259: invokestatic 160	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   262: aconst_null
    //   263: areturn
    //   264: ldc -110
    //   266: ldc -94
    //   268: invokestatic 154	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   271: ldc -110
    //   273: ldc -92
    //   275: aload_2
    //   276: invokestatic 160	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   279: goto -97 -> 182
    //   282: astore_1
    //   283: ldc -110
    //   285: ldc -90
    //   287: aload_1
    //   288: invokestatic 160	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   291: aconst_null
    //   292: areturn
    //   293: astore_2
    //   294: goto -30 -> 264
    //   297: astore_2
    //   298: goto -34 -> 264
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	301	0	this	FunctionTagTransaction
    //   26	162	1	localObject1	Object
    //   246	13	1	localJSONException	org.json.JSONException
    //   282	6	1	localException1	Exception
    //   50	226	2	localObject2	Object
    //   293	1	2	localException2	Exception
    //   297	1	2	localException3	Exception
    //   48	13	3	str	String
    //   37	205	4	i	int
    //   95	16	5	l1	long
    //   91	8	7	l2	long
    // Exception table:
    //   from	to	target	type
    //   56	93	246	org/json/JSONException
    //   104	109	246	org/json/JSONException
    //   109	146	246	org/json/JSONException
    //   146	152	246	org/json/JSONException
    //   191	210	246	org/json/JSONException
    //   213	232	246	org/json/JSONException
    //   235	243	246	org/json/JSONException
    //   0	49	282	java/lang/Exception
    //   56	93	282	java/lang/Exception
    //   104	109	282	java/lang/Exception
    //   109	146	282	java/lang/Exception
    //   146	152	282	java/lang/Exception
    //   182	187	282	java/lang/Exception
    //   191	210	282	java/lang/Exception
    //   213	232	282	java/lang/Exception
    //   235	243	282	java/lang/Exception
    //   247	262	282	java/lang/Exception
    //   264	279	282	java/lang/Exception
    //   160	182	293	java/lang/Exception
    //   152	158	297	java/lang/Exception
  }
  
  private AnalyticsEvent a(AnalyticsEvent paramAnalyticsEvent)
  {
    for (;;)
    {
      try
      {
        if (c.getInt("RESPONSE_CODE") != 0) {
          break;
        }
        ArrayList localArrayList = c.getStringArrayList("DETAILS_LIST");
        int i = 0;
        if (i >= localArrayList.size()) {
          break;
        }
        Object localObject = new JSONObject((String)localArrayList.get(i));
        String str1 = ((JSONObject)localObject).getString("productId");
        long l = ((JSONObject)localObject).getLong("price_amount_micros");
        String str2 = ((JSONObject)localObject).getString("price_currency_code");
        String str3 = ((JSONObject)localObject).optString("type");
        String str4 = ((JSONObject)localObject).optString("title");
        localObject = ((JSONObject)localObject).optString("description");
        if (str1.equals(paramAnalyticsEvent.getTransactionProductId()))
        {
          paramAnalyticsEvent.setTransactionItemCount(1);
          paramAnalyticsEvent.setTransactionItemDescription((String)localObject);
          paramAnalyticsEvent.setTransactionItemName(str4);
          if ("inapp".equals(str3))
          {
            paramAnalyticsEvent.setTransactionItemType(AnalyticsEvent.TRANSACTION_ITEM_TYPE.INAPP.getValue());
            paramAnalyticsEvent.setTransactionItemPrice(l / 1000000.0D);
            paramAnalyticsEvent.setTransactionCurrencyCode(str2);
            return paramAnalyticsEvent;
          }
          if (!"subs".equals(str3)) {
            continue;
          }
          paramAnalyticsEvent.setTransactionItemType(AnalyticsEvent.TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue());
          continue;
        }
        i += 1;
      }
      catch (Exception localException)
      {
        Log.internal("[InMobi]-[Analytics]-4.4.1", "Failed to set purchase bundle info", localException);
        return paramAnalyticsEvent;
      }
    }
    return paramAnalyticsEvent;
  }
  
  public AnalyticsEvent processFunction()
  {
    return a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.FunctionTagTransaction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */