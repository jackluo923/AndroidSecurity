package com.google.kagegamesgson;

import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

class DefaultTypeAdapters$DefaultDateTypeAdapter
  implements JsonSerializer<Date>, JsonDeserializer<Date>
{
  private final DateFormat format;
  
  DefaultTypeAdapters$DefaultDateTypeAdapter()
  {
    DateFormat localDateFormat = DateFormat.getDateTimeInstance();
    format = localDateFormat;
  }
  
  DefaultTypeAdapters$DefaultDateTypeAdapter(int paramInt)
  {
    DateFormat localDateFormat = DateFormat.getDateInstance(paramInt);
    format = localDateFormat;
  }
  
  public DefaultTypeAdapters$DefaultDateTypeAdapter(int paramInt1, int paramInt2)
  {
    DateFormat localDateFormat = DateFormat.getDateTimeInstance(paramInt1, paramInt2);
    format = localDateFormat;
  }
  
  DefaultTypeAdapters$DefaultDateTypeAdapter(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new java/text/SimpleDateFormat;
    localSimpleDateFormat.<init>(paramString);
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
    //   2: instanceof 84
    //   5: istore 5
    //   7: iload 5
    //   9: ifne +22 -> 31
    //   12: new 2	com/google/kagegamesgson/JsonParseException
    //   15: astore 5
    //   17: ldc 23
    //   19: astore 6
    //   21: aload 5
    //   23: aload 6
    //   25: invokespecial 61	com/google/kagegamesgson/JsonParseException:<init>	(Ljava/lang/String;)V
    //   28: aload 5
    //   30: athrow
    //   31: aload_0
    //   32: getfield 56	com/google/kagegamesgson/DefaultTypeAdapters$DefaultDateTypeAdapter:format	Ljava/text/DateFormat;
    //   35: astore 5
    //   37: aload 5
    //   39: monitorenter
    //   40: aload_0
    //   41: getfield 56	com/google/kagegamesgson/DefaultTypeAdapters$DefaultDateTypeAdapter:format	Ljava/text/DateFormat;
    //   44: astore 6
    //   46: aload_1
    //   47: invokevirtual 77	com/google/kagegamesgson/JsonElement:getAsString	()Ljava/lang/String;
    //   50: astore 7
    //   52: aload 6
    //   54: aload 7
    //   56: invokevirtual 43	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   59: astore 6
    //   61: aload 5
    //   63: monitorexit
    //   64: aload 6
    //   66: areturn
    //   67: astore 6
    //   69: aload 5
    //   71: monitorexit
    //   72: aload 6
    //   74: athrow
    //   75: astore 5
    //   77: aload 5
    //   79: astore 4
    //   81: new 71	com/google/kagegamesgson/JsonSyntaxException
    //   84: astore 5
    //   86: aload 5
    //   88: aload 4
    //   90: invokespecial 68	com/google/kagegamesgson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   93: aload 5
    //   95: athrow
    //   96: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	DefaultDateTypeAdapter
    //   0	97	1	paramJsonElement	JsonElement
    //   0	97	2	paramType	Type
    //   0	97	3	paramJsonDeserializationContext	JsonDeserializationContext
    //   79	10	4	localParseException1	java.text.ParseException
    //   5	3	5	bool	boolean
    //   75	3	5	localParseException2	java.text.ParseException
    //   84	10	5	localJsonSyntaxException	JsonSyntaxException
    //   19	46	6	localObject2	Object
    //   67	6	6	localObject3	Object
    //   50	5	7	str	String
    // Exception table:
    //   from	to	target	type
    //   40	46	67	finally
    //   52	59	67	finally
    //   61	64	67	finally
    //   69	72	67	finally
    //   31	37	75	java/text/ParseException
    //   72	75	75	java/text/ParseException
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
  
  public String toString()
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    localStringBuilder.<init>();
    Object localObject1 = DefaultDateTypeAdapter.class;
    localObject1 = ((Class)localObject1).getSimpleName();
    localStringBuilder.append((String)localObject1);
    char c1 = '(';
    Object localObject2 = localStringBuilder.append(c1);
    Object localObject3 = format;
    localObject3 = localObject3.getClass();
    localObject3 = ((Class)localObject3).getSimpleName();
    localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
    char c2 = ')';
    ((StringBuilder)localObject2).append(c2);
    localObject2 = localStringBuilder.toString();
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DefaultTypeAdapters.DefaultDateTypeAdapter
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */