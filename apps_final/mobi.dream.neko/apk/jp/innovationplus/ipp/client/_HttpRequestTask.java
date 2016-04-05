package jp.innovationplus.ipp.client;

import android.os.AsyncTask;
import android.util.Log;
import java.io.IOException;
import jp.innovationplus.ipp.core.IPPQueryCallback;
import jp.innovationplus.ipp.core.IPPQueryResult;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

class _HttpRequestTask<T>
  extends AsyncTask<_HttpURLConnectionParam, Integer, _ResultParam>
{
  private IPPQueryCallback<T> callbacktask;
  boolean debugMessage;
  private Class<T> resultClass;
  
  public _HttpRequestTask(Class<T> paramClass)
  {
    resultClass = paramClass;
  }
  
  /* Error */
  protected _ResultParam doInBackground(_HttpURLConnectionParam... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: aaload
    //   3: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   6: invokevirtual 48	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   9: astore_2
    //   10: iconst_0
    //   11: istore 12
    //   13: aload_2
    //   14: ldc 50
    //   16: if_acmpeq +13 -> 29
    //   19: iload 12
    //   21: istore 11
    //   23: aload_2
    //   24: ldc 52
    //   26: if_acmpne +149 -> 175
    //   29: new 54	org/codehaus/jackson/map/ObjectMapper
    //   32: dup
    //   33: invokespecial 55	org/codehaus/jackson/map/ObjectMapper:<init>	()V
    //   36: astore 10
    //   38: aload 10
    //   40: invokevirtual 59	org/codehaus/jackson/map/ObjectMapper:getSerializationConfig	()Lorg/codehaus/jackson/map/SerializationConfig;
    //   43: astore_2
    //   44: aload_2
    //   45: getstatic 65	org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion:NON_NULL	Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    //   48: invokevirtual 71	org/codehaus/jackson/map/SerializationConfig:setSerializationInclusion	(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V
    //   51: aload 10
    //   53: aload_2
    //   54: invokevirtual 75	org/codehaus/jackson/map/ObjectMapper:setSerializationConfig	(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;
    //   57: pop
    //   58: aconst_null
    //   59: astore 7
    //   61: aconst_null
    //   62: astore 8
    //   64: aconst_null
    //   65: astore 9
    //   67: aconst_null
    //   68: astore_3
    //   69: aload_3
    //   70: astore 4
    //   72: aload 7
    //   74: astore 5
    //   76: aload 8
    //   78: astore 6
    //   80: aload 9
    //   82: astore_2
    //   83: aload_0
    //   84: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   87: ifeq +25 -> 112
    //   90: aload_3
    //   91: astore 4
    //   93: aload 7
    //   95: astore 5
    //   97: aload 8
    //   99: astore 6
    //   101: aload 9
    //   103: astore_2
    //   104: ldc 79
    //   106: ldc 81
    //   108: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   111: pop
    //   112: aload_3
    //   113: astore 4
    //   115: aload 7
    //   117: astore 5
    //   119: aload 8
    //   121: astore 6
    //   123: aload 9
    //   125: astore_2
    //   126: aload_1
    //   127: iconst_0
    //   128: aaload
    //   129: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   132: invokevirtual 91	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   135: astore_3
    //   136: aload_3
    //   137: astore 4
    //   139: aload_3
    //   140: astore 5
    //   142: aload_3
    //   143: astore 6
    //   145: aload_3
    //   146: astore_2
    //   147: aload 10
    //   149: aload_3
    //   150: aload_1
    //   151: iconst_0
    //   152: aaload
    //   153: getfield 95	jp/innovationplus/ipp/client/_HttpURLConnectionParam:postData	Ljava/lang/Object;
    //   156: invokevirtual 99	org/codehaus/jackson/map/ObjectMapper:writeValue	(Ljava/io/OutputStream;Ljava/lang/Object;)V
    //   159: iload 12
    //   161: istore 11
    //   163: aload_3
    //   164: ifnull +11 -> 175
    //   167: aload_3
    //   168: invokevirtual 104	java/io/OutputStream:close	()V
    //   171: iload 12
    //   173: istore 11
    //   175: iload 11
    //   177: istore 12
    //   179: iload 11
    //   181: iflt +92 -> 273
    //   184: iconst_0
    //   185: istore 13
    //   187: aload_1
    //   188: iconst_0
    //   189: aaload
    //   190: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   193: invokevirtual 108	java/net/HttpURLConnection:getResponseCode	()I
    //   196: istore 12
    //   198: iload 12
    //   200: istore 13
    //   202: iload 13
    //   204: bipush 100
    //   206: idiv
    //   207: iconst_4
    //   208: if_icmpeq +12 -> 220
    //   211: iload 13
    //   213: bipush 100
    //   215: idiv
    //   216: iconst_5
    //   217: if_icmpne +8 -> 225
    //   220: iload 13
    //   222: ineg
    //   223: istore 11
    //   225: iload 11
    //   227: istore 12
    //   229: aload_0
    //   230: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   233: ifeq +40 -> 273
    //   236: ldc 79
    //   238: new 110	java/lang/StringBuilder
    //   241: dup
    //   242: ldc 112
    //   244: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   247: iload 13
    //   249: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   252: ldc 121
    //   254: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: iload 11
    //   259: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   262: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   268: pop
    //   269: iload 11
    //   271: istore 12
    //   273: aconst_null
    //   274: astore_3
    //   275: iload 12
    //   277: istore 11
    //   279: aload_3
    //   280: astore_2
    //   281: iload 12
    //   283: iflt +45 -> 328
    //   286: aload_1
    //   287: iconst_0
    //   288: aaload
    //   289: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   292: invokevirtual 131	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   295: invokestatic 136	org/apache/commons/io/IOUtils:toString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   298: astore_2
    //   299: aload_2
    //   300: astore_3
    //   301: iload 12
    //   303: istore 11
    //   305: aload_3
    //   306: astore_2
    //   307: aload_1
    //   308: iconst_0
    //   309: aaload
    //   310: ifnull +18 -> 328
    //   313: aload_1
    //   314: iconst_0
    //   315: aaload
    //   316: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   319: invokevirtual 139	java/net/HttpURLConnection:disconnect	()V
    //   322: aload_3
    //   323: astore_2
    //   324: iload 12
    //   326: istore 11
    //   328: new 141	jp/innovationplus/ipp/client/_ResultParam
    //   331: dup
    //   332: invokespecial 142	jp/innovationplus/ipp/client/_ResultParam:<init>	()V
    //   335: astore_1
    //   336: aload_1
    //   337: aload_2
    //   338: putfield 146	jp/innovationplus/ipp/client/_ResultParam:response	Ljava/lang/String;
    //   341: aload_1
    //   342: iload 11
    //   344: putfield 150	jp/innovationplus/ipp/client/_ResultParam:errorCode	I
    //   347: aload_1
    //   348: areturn
    //   349: astore_3
    //   350: aload 4
    //   352: astore_2
    //   353: aload_0
    //   354: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   357: ifeq +21 -> 378
    //   360: aload 4
    //   362: astore_2
    //   363: ldc 79
    //   365: ldc -104
    //   367: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   370: pop
    //   371: aload 4
    //   373: astore_2
    //   374: aload_3
    //   375: invokevirtual 155	org/codehaus/jackson/JsonGenerationException:printStackTrace	()V
    //   378: sipush 64532
    //   381: istore 12
    //   383: iload 12
    //   385: istore 11
    //   387: aload 4
    //   389: ifnull -214 -> 175
    //   392: aload 4
    //   394: invokevirtual 104	java/io/OutputStream:close	()V
    //   397: iload 12
    //   399: istore 11
    //   401: goto -226 -> 175
    //   404: astore_2
    //   405: iload 12
    //   407: istore 11
    //   409: goto -234 -> 175
    //   412: astore_3
    //   413: aload 5
    //   415: astore_2
    //   416: aload_0
    //   417: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   420: ifeq +21 -> 441
    //   423: aload 5
    //   425: astore_2
    //   426: ldc 79
    //   428: ldc -99
    //   430: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   433: pop
    //   434: aload 5
    //   436: astore_2
    //   437: aload_3
    //   438: invokevirtual 158	org/codehaus/jackson/map/JsonMappingException:printStackTrace	()V
    //   441: sipush 64531
    //   444: istore 12
    //   446: iload 12
    //   448: istore 11
    //   450: aload 5
    //   452: ifnull -277 -> 175
    //   455: aload 5
    //   457: invokevirtual 104	java/io/OutputStream:close	()V
    //   460: iload 12
    //   462: istore 11
    //   464: goto -289 -> 175
    //   467: astore_2
    //   468: iload 12
    //   470: istore 11
    //   472: goto -297 -> 175
    //   475: astore_3
    //   476: aload 6
    //   478: astore_2
    //   479: aload_0
    //   480: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   483: ifeq +21 -> 504
    //   486: aload 6
    //   488: astore_2
    //   489: ldc 79
    //   491: ldc -96
    //   493: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   496: pop
    //   497: aload 6
    //   499: astore_2
    //   500: aload_3
    //   501: invokevirtual 161	java/io/IOException:printStackTrace	()V
    //   504: sipush 64530
    //   507: istore 12
    //   509: iload 12
    //   511: istore 11
    //   513: aload 6
    //   515: ifnull -340 -> 175
    //   518: aload 6
    //   520: invokevirtual 104	java/io/OutputStream:close	()V
    //   523: iload 12
    //   525: istore 11
    //   527: goto -352 -> 175
    //   530: astore_2
    //   531: iload 12
    //   533: istore 11
    //   535: goto -360 -> 175
    //   538: astore_1
    //   539: aload_2
    //   540: ifnull +7 -> 547
    //   543: aload_2
    //   544: invokevirtual 104	java/io/OutputStream:close	()V
    //   547: aload_1
    //   548: athrow
    //   549: astore_2
    //   550: aload_0
    //   551: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   554: ifeq +15 -> 569
    //   557: ldc 79
    //   559: ldc -96
    //   561: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   564: pop
    //   565: aload_2
    //   566: invokevirtual 161	java/io/IOException:printStackTrace	()V
    //   569: sipush 64529
    //   572: istore 11
    //   574: goto -372 -> 202
    //   577: astore_2
    //   578: aload_0
    //   579: getfield 77	jp/innovationplus/ipp/client/_HttpRequestTask:debugMessage	Z
    //   582: ifeq +11 -> 593
    //   585: ldc 79
    //   587: ldc -96
    //   589: invokestatic 87	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   592: pop
    //   593: sipush 64529
    //   596: istore 12
    //   598: iload 12
    //   600: istore 11
    //   602: aload_3
    //   603: astore_2
    //   604: aload_1
    //   605: iconst_0
    //   606: aaload
    //   607: ifnull -279 -> 328
    //   610: aload_1
    //   611: iconst_0
    //   612: aaload
    //   613: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   616: invokevirtual 139	java/net/HttpURLConnection:disconnect	()V
    //   619: iload 12
    //   621: istore 11
    //   623: aload_3
    //   624: astore_2
    //   625: goto -297 -> 328
    //   628: astore_2
    //   629: aload_1
    //   630: iconst_0
    //   631: aaload
    //   632: ifnull +12 -> 644
    //   635: aload_1
    //   636: iconst_0
    //   637: aaload
    //   638: getfield 42	jp/innovationplus/ipp/client/_HttpURLConnectionParam:httpUrlConnection	Ljava/net/HttpURLConnection;
    //   641: invokevirtual 139	java/net/HttpURLConnection:disconnect	()V
    //   644: aload_2
    //   645: athrow
    //   646: astore_2
    //   647: goto -100 -> 547
    //   650: astore_2
    //   651: iload 12
    //   653: istore 11
    //   655: goto -480 -> 175
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	658	0	this	_HttpRequestTask
    //   0	658	1	paramVarArgs	_HttpURLConnectionParam[]
    //   9	365	2	localObject1	Object
    //   404	1	2	localIOException1	IOException
    //   415	22	2	localObject2	Object
    //   467	1	2	localIOException2	IOException
    //   478	22	2	localObject3	Object
    //   530	14	2	localIOException3	IOException
    //   549	17	2	localIOException4	IOException
    //   577	1	2	localIOException5	IOException
    //   603	22	2	localObject4	Object
    //   628	17	2	localObject5	Object
    //   646	1	2	localIOException6	IOException
    //   650	1	2	localIOException7	IOException
    //   68	255	3	localObject6	Object
    //   349	26	3	localJsonGenerationException	JsonGenerationException
    //   412	26	3	localJsonMappingException	JsonMappingException
    //   475	149	3	localIOException8	IOException
    //   70	323	4	localObject7	Object
    //   74	382	5	localObject8	Object
    //   78	441	6	localObject9	Object
    //   59	57	7	localObject10	Object
    //   62	58	8	localObject11	Object
    //   65	59	9	localObject12	Object
    //   36	112	10	localObjectMapper	ObjectMapper
    //   21	633	11	i	int
    //   11	641	12	j	int
    //   185	63	13	k	int
    // Exception table:
    //   from	to	target	type
    //   83	90	349	org/codehaus/jackson/JsonGenerationException
    //   104	112	349	org/codehaus/jackson/JsonGenerationException
    //   126	136	349	org/codehaus/jackson/JsonGenerationException
    //   147	159	349	org/codehaus/jackson/JsonGenerationException
    //   392	397	404	java/io/IOException
    //   83	90	412	org/codehaus/jackson/map/JsonMappingException
    //   104	112	412	org/codehaus/jackson/map/JsonMappingException
    //   126	136	412	org/codehaus/jackson/map/JsonMappingException
    //   147	159	412	org/codehaus/jackson/map/JsonMappingException
    //   455	460	467	java/io/IOException
    //   83	90	475	java/io/IOException
    //   104	112	475	java/io/IOException
    //   126	136	475	java/io/IOException
    //   147	159	475	java/io/IOException
    //   518	523	530	java/io/IOException
    //   83	90	538	finally
    //   104	112	538	finally
    //   126	136	538	finally
    //   147	159	538	finally
    //   353	360	538	finally
    //   363	371	538	finally
    //   374	378	538	finally
    //   416	423	538	finally
    //   426	434	538	finally
    //   437	441	538	finally
    //   479	486	538	finally
    //   489	497	538	finally
    //   500	504	538	finally
    //   187	198	549	java/io/IOException
    //   286	299	577	java/io/IOException
    //   286	299	628	finally
    //   578	593	628	finally
    //   543	547	646	java/io/IOException
    //   167	171	650	java/io/IOException
  }
  
  protected void onPostExecute(_ResultParam param_ResultParam)
  {
    if (param_ResultParam == null) {
      if (callbacktask != null) {
        callbacktask.ippDidError(64537);
      }
    }
    do
    {
      for (;;)
      {
        return;
        if (errorCode < 0)
        {
          if (callbacktask != null) {
            callbacktask.ippDidError(errorCode);
          }
        }
        else
        {
          if (debugMessage) {
            Log.d("IPPKit", "Responce : " + response);
          }
          ObjectMapper localObjectMapper = new ObjectMapper();
          JavaType localJavaType = TypeFactory.defaultInstance().constructParametricType(IPPQueryResult.class, new Class[] { resultClass });
          Log.d("IPPKit", "TYPE : " + localJavaType);
          Object localObject = null;
          if (debugMessage) {
            Log.d("IPPKit", "convert to JSON object.");
          }
          int i = 0;
          try
          {
            param_ResultParam = (IPPQueryResult)localObjectMapper.readValue(response, localJavaType);
            if (i < 0)
            {
              if (callbacktask == null) {
                continue;
              }
              callbacktask.ippDidError(i);
            }
          }
          catch (JsonGenerationException param_ResultParam)
          {
            for (;;)
            {
              if (debugMessage)
              {
                Log.d("IPPKit", "JsonGenerationException");
                param_ResultParam.printStackTrace();
              }
              i = 64532;
              param_ResultParam = (_ResultParam)localObject;
            }
          }
          catch (JsonMappingException param_ResultParam)
          {
            for (;;)
            {
              if (debugMessage)
              {
                Log.d("IPPKit", "JsonMappingException");
                param_ResultParam.printStackTrace();
              }
              i = 64531;
              param_ResultParam = (_ResultParam)localObject;
            }
          }
          catch (IOException param_ResultParam)
          {
            for (;;)
            {
              if (debugMessage)
              {
                Log.d("IPPKit", "IOException");
                param_ResultParam.printStackTrace();
              }
              i = 64530;
              param_ResultParam = (_ResultParam)localObject;
            }
            if (param_ResultParam == null)
            {
              if (callbacktask != null) {
                callbacktask.ippDidError(64537);
              }
            }
            else if (param_ResultParam.getResultCode() < 0)
            {
              if (callbacktask == null) {
                continue;
              }
              callbacktask.ippDidError(param_ResultParam.getResultCode());
            }
          }
        }
      }
    } while (callbacktask == null);
    callbacktask.ippDidFinishLoading(param_ResultParam.getResult());
  }
  
  public void setOnCallBack(IPPQueryCallback<T> paramIPPQueryCallback)
  {
    callbacktask = paramIPPQueryCallback;
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.client._HttpRequestTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */