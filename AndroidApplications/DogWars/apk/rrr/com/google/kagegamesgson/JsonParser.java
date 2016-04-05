package com.google.kagegamesgson;

import com.google.kagegamesgson.stream.JsonReader;
import com.google.kagegamesgson.stream.JsonToken;
import com.google.kagegamesgson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class JsonParser
{
  /* Error */
  public JsonElement parse(JsonReader paramJsonReader)
    throws JsonIOException, JsonSyntaxException
  {
    // Byte code:
    //   0: nop
    //   1: aload_1
    //   2: invokevirtual 10	com/google/kagegamesgson/stream/JsonReader:isLenient	()Z
    //   5: istore_3
    //   6: iconst_1
    //   7: istore 4
    //   9: aload_1
    //   10: iload 4
    //   12: invokevirtual 52	com/google/kagegamesgson/stream/JsonReader:setLenient	(Z)V
    //   15: aload_1
    //   16: invokestatic 84	com/google/kagegamesgson/Streams:parse	(Lcom/google/kagegamesgson/stream/JsonReader;)Lcom/google/kagegamesgson/JsonElement;
    //   19: astore 4
    //   21: aload_1
    //   22: iload_3
    //   23: invokevirtual 52	com/google/kagegamesgson/stream/JsonReader:setLenient	(Z)V
    //   26: aload 4
    //   28: areturn
    //   29: astore_2
    //   30: new 1	com/google/kagegamesgson/JsonParseException
    //   33: astore 4
    //   35: new 96	java/lang/StringBuilder
    //   38: astore 5
    //   40: aload 5
    //   42: invokespecial 32	java/lang/StringBuilder:<init>	()V
    //   45: ldc 18
    //   47: astore 6
    //   49: aload 5
    //   51: aload 6
    //   53: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: astore 5
    //   58: aload 5
    //   60: aload_1
    //   61: invokevirtual 14	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: astore 5
    //   66: ldc 47
    //   68: astore 6
    //   70: aload 5
    //   72: aload 6
    //   74: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: astore 5
    //   79: aload 5
    //   81: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: astore 5
    //   86: aload 4
    //   88: aload 5
    //   90: aload_2
    //   91: invokespecial 98	com/google/kagegamesgson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   94: aload 4
    //   96: athrow
    //   97: astore 4
    //   99: aload_1
    //   100: iload_3
    //   101: invokevirtual 52	com/google/kagegamesgson/stream/JsonReader:setLenient	(Z)V
    //   104: aload 4
    //   106: athrow
    //   107: astore_2
    //   108: new 1	com/google/kagegamesgson/JsonParseException
    //   111: astore 4
    //   113: new 96	java/lang/StringBuilder
    //   116: astore 5
    //   118: aload 5
    //   120: invokespecial 32	java/lang/StringBuilder:<init>	()V
    //   123: ldc 18
    //   125: astore 6
    //   127: aload 5
    //   129: aload 6
    //   131: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: astore 5
    //   136: aload 5
    //   138: aload_1
    //   139: invokevirtual 14	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   142: astore 5
    //   144: ldc 47
    //   146: astore 6
    //   148: aload 5
    //   150: aload 6
    //   152: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: astore 5
    //   157: aload 5
    //   159: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: astore 5
    //   164: aload 4
    //   166: aload 5
    //   168: aload_2
    //   169: invokespecial 98	com/google/kagegamesgson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   172: aload 4
    //   174: athrow
    //   175: astore_2
    //   176: aload_2
    //   177: invokevirtual 24	com/google/kagegamesgson/JsonParseException:getCause	()Ljava/lang/Throwable;
    //   180: astore 4
    //   182: aload 4
    //   184: instanceof 4
    //   187: istore 4
    //   189: iload 4
    //   191: ifeq +16 -> 207
    //   194: invokestatic 36	com/google/kagegamesgson/JsonNull:createJsonNull	()Lcom/google/kagegamesgson/JsonNull;
    //   197: astore 4
    //   199: aload_1
    //   200: iload_3
    //   201: invokevirtual 52	com/google/kagegamesgson/stream/JsonReader:setLenient	(Z)V
    //   204: goto -178 -> 26
    //   207: aload_2
    //   208: athrow
    //   209: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	JsonParser
    //   0	210	1	paramJsonReader	JsonReader
    //   29	62	2	localStackOverflowError	StackOverflowError
    //   107	62	2	localOutOfMemoryError	OutOfMemoryError
    //   175	33	2	localJsonParseException	JsonParseException
    //   5	196	3	bool1	boolean
    //   7	4	4	bool2	boolean
    //   19	76	4	localObject1	Object
    //   97	8	4	localObject2	Object
    //   111	72	4	localObject3	Object
    //   187	3	4	bool3	boolean
    //   197	1	4	localJsonNull	JsonNull
    //   38	129	5	localObject4	Object
    //   47	104	6	str	String
    // Exception table:
    //   from	to	target	type
    //   15	19	29	java/lang/StackOverflowError
    //   15	19	97	finally
    //   30	35	97	finally
    //   40	45	97	finally
    //   49	56	97	finally
    //   58	64	97	finally
    //   66	70	97	finally
    //   79	84	97	finally
    //   86	94	97	finally
    //   108	113	97	finally
    //   118	123	97	finally
    //   127	134	97	finally
    //   136	142	97	finally
    //   144	148	97	finally
    //   157	162	97	finally
    //   164	172	97	finally
    //   176	180	97	finally
    //   182	189	97	finally
    //   194	197	97	finally
    //   207	209	97	finally
    //   15	19	107	java/lang/OutOfMemoryError
    //   15	19	175	com/google/kagegamesgson/JsonParseException
  }
  
  public JsonElement parse(Reader paramReader)
    throws JsonIOException, JsonSyntaxException
  {
    JsonElement localJsonElement;
    try
    {
      JsonReader localJsonReader = new com/google/kagegamesgson/stream/JsonReader;
      localJsonReader.<init>(paramReader);
      localJsonElement = parse(localJsonReader);
      boolean bool = localJsonElement.isJsonNull();
      if (!bool)
      {
        Object localObject2 = localJsonReader.peek();
        Object localObject3 = JsonToken.END_DOCUMENT;
        if (localObject2 != localObject3)
        {
          localObject2 = new com/google/kagegamesgson/JsonSyntaxException;
          localObject3 = "Did not consume the entire document.";
          ((JsonSyntaxException)localObject2).<init>((String)localObject3);
          throw ((Throwable)localObject2);
        }
      }
    }
    catch (MalformedJsonException localMalformedJsonException)
    {
      localObject1 = localMalformedJsonException;
      JsonSyntaxException localJsonSyntaxException1 = new com/google/kagegamesgson/JsonSyntaxException;
      localJsonSyntaxException1.<init>((Throwable)localObject1);
      throw localJsonSyntaxException1;
    }
    catch (IOException localIOException)
    {
      localObject1 = localIOException;
      JsonIOException localJsonIOException = new com/google/kagegamesgson/JsonIOException;
      localJsonIOException.<init>((Throwable)localObject1);
      throw localJsonIOException;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Object localObject1 = localNumberFormatException;
      JsonSyntaxException localJsonSyntaxException2 = new com/google/kagegamesgson/JsonSyntaxException;
      localJsonSyntaxException2.<init>((Throwable)localObject1);
      throw localJsonSyntaxException2;
    }
    return localJsonElement;
  }
  
  public JsonElement parse(String paramString)
    throws JsonSyntaxException
  {
    Object localObject = new java/io/StringReader;
    ((StringReader)localObject).<init>(paramString);
    localObject = parse((Reader)localObject);
    return (JsonElement)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */