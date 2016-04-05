package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

class DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter
  implements JsonSerializer<Date>, JsonDeserializer<Date>
{
  private final DateFormat format;
  
  DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter()
  {
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    String str = "MMM d, yyyy";
    localSimpleDateFormat.<init>(str);
    format = localSimpleDateFormat;
  }
  
  public Object deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    Date localDate = deserialize(paramJsonElement, paramType, paramJsonDeserializationContext);
    return localDate;
  }
  
  /* Error */
  public Date deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    // Byte code:
    //   0: nop
    //   1: aload_1
    //   2: instanceof 68
    //   5: istore 6
    //   7: iload 6
    //   9: ifne +22 -> 31
    //   12: new 1	com/google/kagegamesgson/JsonParseException
    //   15: astore 6
    //   17: ldc 14
    //   19: astore 7
    //   21: aload 6
    //   23: aload 7
    //   25: invokespecial 51	com/google/kagegamesgson/JsonParseException:<init>	(Ljava/lang/String;)V
    //   28: aload 6
    //   30: athrow
    //   31: aload_0
    //   32: getfield 45	com/google/kagegamesgson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter:format	Ljava/text/DateFormat;
    //   35: astore 6
    //   37: aload 6
    //   39: monitorenter
    //   40: aload_0
    //   41: getfield 45	com/google/kagegamesgson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter:format	Ljava/text/DateFormat;
    //   44: astore 7
    //   46: aload_1
    //   47: invokevirtual 63	com/google/kagegamesgson/JsonElement:getAsString	()Ljava/lang/String;
    //   50: astore 8
    //   52: aload 7
    //   54: aload 8
    //   56: invokevirtual 32	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   59: astore 4
    //   61: new 24	java/sql/Date
    //   64: astore 7
    //   66: aload 4
    //   68: invokevirtual 29	java/util/Date:getTime	()J
    //   71: lstore 8
    //   73: aload 7
    //   75: lload 8
    //   77: invokespecial 37	java/sql/Date:<init>	(J)V
    //   80: aload 6
    //   82: monitorexit
    //   83: aload 7
    //   85: areturn
    //   86: astore 7
    //   88: aload 6
    //   90: monitorexit
    //   91: aload 7
    //   93: athrow
    //   94: astore 6
    //   96: aload 6
    //   98: astore 5
    //   100: new 59	com/google/kagegamesgson/JsonSyntaxException
    //   103: astore 6
    //   105: aload 6
    //   107: aload 5
    //   109: invokespecial 57	com/google/kagegamesgson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   112: aload 6
    //   114: athrow
    //   115: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	DefaultJavaSqlDateTypeAdapter
    //   0	116	1	paramJsonElement	JsonElement
    //   0	116	2	paramType	Type
    //   0	116	3	paramJsonDeserializationContext	JsonDeserializationContext
    //   59	8	4	localDate	java.util.Date
    //   98	10	5	localParseException1	java.text.ParseException
    //   5	3	6	bool	boolean
    //   94	3	6	localParseException2	java.text.ParseException
    //   103	10	6	localJsonSyntaxException	JsonSyntaxException
    //   19	65	7	localObject2	Object
    //   86	6	7	localObject3	Object
    //   50	5	8	str	String
    //   71	5	8	l	long
    // Exception table:
    //   from	to	target	type
    //   40	46	86	finally
    //   52	59	86	finally
    //   61	66	86	finally
    //   73	80	86	finally
    //   88	91	86	finally
    //   31	37	94	java/text/ParseException
    //   91	94	94	java/text/ParseException
  }
  
  public JsonElement serialize(Object paramObject, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    paramObject = (Date)paramObject;
    JsonElement localJsonElement = serialize((Date)paramObject, paramType, paramJsonSerializationContext);
    return localJsonElement;
  }
  
  public JsonElement serialize(Date paramDate, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    synchronized (format)
    {
      Object localObject1 = format;
      String str = ((DateFormat)localObject1).format(paramDate);
      localObject1 = new com/google/kagegamesgson/JsonPrimitive;
      ((JsonPrimitive)localObject1).<init>(str);
      return (JsonElement)localObject1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.DefaultJavaSqlDateTypeAdapter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */