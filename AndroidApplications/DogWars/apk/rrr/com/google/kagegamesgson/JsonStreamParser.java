package com.google.kagegamesgson;

import com.google.kagegamesgson.stream.JsonReader;
import java.io.EOFException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser
  implements Iterator<JsonElement>
{
  private final Object lock;
  private final JsonReader parser;
  
  public JsonStreamParser(Reader paramReader)
  {
    Object localObject = new com/google/kagegamesgson/stream/JsonReader;
    ((JsonReader)localObject).<init>(paramReader);
    parser = ((JsonReader)localObject);
    localObject = parser;
    boolean bool = true;
    ((JsonReader)localObject).setLenient(bool);
    localObject = new java/lang/Object;
    localObject.<init>();
    lock = localObject;
  }
  
  public JsonStreamParser(String paramString)
  {
    this(localStringReader);
  }
  
  /* Error */
  public boolean hasNext()
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: getfield 61	com/google/kagegamesgson/JsonStreamParser:lock	Ljava/lang/Object;
    //   5: astore_2
    //   6: aload_2
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 82	com/google/kagegamesgson/JsonStreamParser:parser	Lcom/google/kagegamesgson/stream/JsonReader;
    //   12: astore_3
    //   13: aload_3
    //   14: invokevirtual 79	com/google/kagegamesgson/stream/JsonReader:peek	()Lcom/google/kagegamesgson/stream/JsonToken;
    //   17: astore_3
    //   18: getstatic 29	com/google/kagegamesgson/stream/JsonToken:END_DOCUMENT	Lcom/google/kagegamesgson/stream/JsonToken;
    //   21: astore 4
    //   23: aload_3
    //   24: aload 4
    //   26: if_acmpeq +9 -> 35
    //   29: iconst_1
    //   30: istore_3
    //   31: aload_2
    //   32: monitorexit
    //   33: iload_3
    //   34: ireturn
    //   35: iconst_0
    //   36: istore_3
    //   37: goto -6 -> 31
    //   40: astore_3
    //   41: aload_3
    //   42: astore_1
    //   43: new 66	com/google/kagegamesgson/JsonSyntaxException
    //   46: astore_3
    //   47: aload_3
    //   48: aload_1
    //   49: invokespecial 62	com/google/kagegamesgson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   52: aload_3
    //   53: athrow
    //   54: astore_3
    //   55: aload_2
    //   56: monitorexit
    //   57: aload_3
    //   58: athrow
    //   59: astore_3
    //   60: aload_3
    //   61: astore_1
    //   62: new 45	com/google/kagegamesgson/JsonIOException
    //   65: astore_3
    //   66: aload_3
    //   67: aload_1
    //   68: invokespecial 56	com/google/kagegamesgson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   71: aload_3
    //   72: athrow
    //   73: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	JsonStreamParser
    //   42	26	1	localObject1	Object
    //   12	12	3	localObject3	Object
    //   30	7	3	bool	boolean
    //   40	2	3	localMalformedJsonException	com.google.kagegamesgson.stream.MalformedJsonException
    //   46	7	3	localJsonSyntaxException	JsonSyntaxException
    //   54	4	3	localObject4	Object
    //   59	2	3	localIOException	java.io.IOException
    //   65	7	3	localJsonIOException	JsonIOException
    //   21	4	4	localJsonToken	com.google.kagegamesgson.stream.JsonToken
    // Exception table:
    //   from	to	target	type
    //   8	13	40	com/google/kagegamesgson/stream/MalformedJsonException
    //   18	23	40	com/google/kagegamesgson/stream/MalformedJsonException
    //   8	13	54	finally
    //   18	23	54	finally
    //   31	33	54	finally
    //   43	47	54	finally
    //   52	54	54	finally
    //   55	57	54	finally
    //   62	66	54	finally
    //   71	73	54	finally
    //   8	13	59	java/io/IOException
    //   18	23	59	java/io/IOException
  }
  
  public JsonElement next()
    throws JsonParseException
  {
    boolean bool1 = hasNext();
    Object localObject2;
    if (!bool1)
    {
      localObject2 = new java/util/NoSuchElementException;
      ((NoSuchElementException)localObject2).<init>();
      throw ((Throwable)localObject2);
    }
    Object localObject1;
    try
    {
      localObject2 = parser;
      localObject2 = Streams.parse((JsonReader)localObject2);
      return (JsonElement)localObject2;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      localObject1 = localStackOverflowError;
      JsonParseException localJsonParseException1 = new com/google/kagegamesgson/JsonParseException;
      str = "Failed parsing JSON source to Json";
      localJsonParseException1.<init>(str, (Throwable)localObject1);
      throw localJsonParseException1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      localObject1 = localOutOfMemoryError;
      JsonParseException localJsonParseException2 = new com/google/kagegamesgson/JsonParseException;
      String str = "Failed parsing JSON source to Json";
      localJsonParseException2.<init>(str, (Throwable)localObject1);
      throw localJsonParseException2;
    }
    catch (JsonParseException localJsonParseException3)
    {
      localObject1 = localJsonParseException3;
      Throwable localThrowable = ((JsonParseException)localObject1).getCause();
      boolean bool2 = localThrowable instanceof EOFException;
      if (!bool2) {
        break label95;
      }
    }
    Object localObject3 = new java/util/NoSuchElementException;
    ((NoSuchElementException)localObject3).<init>();
    for (;;)
    {
      throw ((Throwable)localObject3);
      label95:
      localObject3 = localObject1;
    }
  }
  
  public Object next()
  {
    JsonElement localJsonElement = next();
    return localJsonElement;
  }
  
  public void remove()
  {
    UnsupportedOperationException localUnsupportedOperationException = new java/lang/UnsupportedOperationException;
    localUnsupportedOperationException.<init>();
    throw localUnsupportedOperationException;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonStreamParser
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */