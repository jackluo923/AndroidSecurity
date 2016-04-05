package com.google.kagegamesgson;

import com.google.kagegamesgson.stream.JsonReader;
import com.google.kagegamesgson.stream.JsonToken;
import com.google.kagegamesgson.stream.JsonWriter;
import com.google.kagegamesgson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class Streams
{
  static JsonElement parse(JsonReader paramJsonReader)
    throws JsonParseException
  {
    i = 1;
    try
    {
      paramJsonReader.peek();
      i = 0;
      localJsonElement = parseRecursive(paramJsonReader);
    }
    catch (EOFException localEOFException)
    {
      for (;;)
      {
        JsonElement localJsonElement;
        localObject1 = localEOFException;
        if (i == 0) {
          break;
        }
        localObject2 = JsonNull.createJsonNull();
      }
      Object localObject2 = new com/google/kagegamesgson/JsonIOException;
      ((JsonIOException)localObject2).<init>((Throwable)localObject1);
      throw ((Throwable)localObject2);
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
  
  private static JsonElement parseRecursive(JsonReader paramJsonReader)
    throws IOException
  {
    int[] arrayOfInt = Streams.1.$SwitchMap$com$google$gson$stream$JsonToken;
    JsonToken localJsonToken = paramJsonReader.peek();
    int j = localJsonToken.ordinal();
    int i = arrayOfInt[j];
    Object localObject1;
    Object localObject4;
    switch (i)
    {
    default: 
      localObject1 = new java/lang/IllegalArgumentException;
      ((IllegalArgumentException)localObject1).<init>();
      throw ((Throwable)localObject1);
    case 1: 
      localObject1 = new com/google/kagegamesgson/JsonPrimitive;
      localObject4 = paramJsonReader.nextString();
      ((JsonPrimitive)localObject1).<init>((String)localObject4);
    }
    for (;;)
    {
      return (JsonElement)localObject1;
      String str = paramJsonReader.nextString();
      localObject1 = new com/google/kagegamesgson/JsonPrimitive;
      localObject4 = JsonPrimitive.stringToNumber(str);
      ((JsonPrimitive)localObject1).<init>((Number)localObject4);
      continue;
      localObject1 = new com/google/kagegamesgson/JsonPrimitive;
      boolean bool3 = paramJsonReader.nextBoolean();
      Object localObject5 = Boolean.valueOf(bool3);
      ((JsonPrimitive)localObject1).<init>((Boolean)localObject5);
      continue;
      paramJsonReader.nextNull();
      localObject1 = JsonNull.createJsonNull();
      continue;
      JsonArray localJsonArray = new com/google/kagegamesgson/JsonArray;
      localJsonArray.<init>();
      paramJsonReader.beginArray();
      for (;;)
      {
        boolean bool1 = paramJsonReader.hasNext();
        if (!bool1) {
          break;
        }
        localObject2 = parseRecursive(paramJsonReader);
        localJsonArray.add((JsonElement)localObject2);
      }
      paramJsonReader.endArray();
      Object localObject2 = localJsonArray;
      continue;
      JsonObject localJsonObject = new com/google/kagegamesgson/JsonObject;
      localJsonObject.<init>();
      paramJsonReader.beginObject();
      for (;;)
      {
        boolean bool2 = paramJsonReader.hasNext();
        if (!bool2) {
          break;
        }
        localObject3 = paramJsonReader.nextName();
        localObject5 = parseRecursive(paramJsonReader);
        localJsonObject.add((String)localObject3, (JsonElement)localObject5);
      }
      paramJsonReader.endObject();
      Object localObject3 = localJsonObject;
    }
  }
  
  static void write(JsonElement paramJsonElement, boolean paramBoolean, JsonWriter paramJsonWriter)
    throws IOException
  {
    boolean bool1;
    if (paramJsonElement != null)
    {
      bool1 = paramJsonElement.isJsonNull();
      if (!bool1) {}
    }
    else if (paramBoolean)
    {
      paramJsonWriter.nullValue();
    }
    for (;;)
    {
      return;
      bool1 = paramJsonElement.isJsonPrimitive();
      if (bool1)
      {
        JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
        bool1 = localJsonPrimitive.isNumber();
        if (bool1)
        {
          Number localNumber = localJsonPrimitive.getAsNumber();
          paramJsonWriter.value(localNumber);
        }
        else
        {
          boolean bool2 = localJsonPrimitive.isBoolean();
          if (bool2)
          {
            bool2 = localJsonPrimitive.getAsBoolean();
            paramJsonWriter.value(bool2);
          }
          else
          {
            String str = localJsonPrimitive.getAsString();
            paramJsonWriter.value(str);
          }
        }
      }
      else
      {
        boolean bool3 = paramJsonElement.isJsonArray();
        Iterator localIterator;
        boolean bool4;
        if (bool3)
        {
          paramJsonWriter.beginArray();
          JsonArray localJsonArray = paramJsonElement.getAsJsonArray();
          localIterator = localJsonArray.iterator();
          for (;;)
          {
            bool4 = localIterator.hasNext();
            if (!bool4) {
              break;
            }
            Object localObject1 = localIterator.next();
            localObject1 = (JsonElement)localObject1;
            bool4 = ((JsonElement)localObject1).isJsonNull();
            if (bool4) {
              paramJsonWriter.nullValue();
            } else {
              write((JsonElement)localObject1, paramBoolean, paramJsonWriter);
            }
          }
          paramJsonWriter.endArray();
        }
        else
        {
          bool4 = paramJsonElement.isJsonObject();
          if (!bool4) {
            break;
          }
          paramJsonWriter.beginObject();
          Object localObject4 = paramJsonElement.getAsJsonObject();
          localObject4 = ((JsonObject)localObject4).entrySet();
          localIterator = ((Set)localObject4).iterator();
          for (;;)
          {
            boolean bool5 = localIterator.hasNext();
            if (!bool5) {
              break;
            }
            Object localObject2 = localIterator.next();
            localObject2 = (Map.Entry)localObject2;
            Object localObject3 = ((Map.Entry)localObject2).getValue();
            localObject3 = (JsonElement)localObject3;
            if (!paramBoolean)
            {
              bool5 = ((JsonElement)localObject3).isJsonNull();
              if (bool5) {}
            }
            else
            {
              paramJsonElement = ((Map.Entry)localObject2).getKey();
              paramJsonElement = (String)paramJsonElement;
              paramJsonWriter.name(paramJsonElement);
              write((JsonElement)localObject3, paramBoolean, paramJsonWriter);
            }
          }
          paramJsonWriter.endObject();
        }
      }
    }
    IllegalArgumentException localIllegalArgumentException = new java/lang/IllegalArgumentException;
    Object localObject5 = new java/lang/StringBuilder;
    ((StringBuilder)localObject5).<init>();
    Object localObject6 = "Couldn't write ";
    localObject5 = ((StringBuilder)localObject5).append((String)localObject6);
    localObject6 = paramJsonElement.getClass();
    localObject5 = ((StringBuilder)localObject5).append(localObject6);
    localObject5 = ((StringBuilder)localObject5).toString();
    localIllegalArgumentException.<init>((String)localObject5);
    throw localIllegalArgumentException;
  }
  
  static Writer writerForAppendable(Appendable paramAppendable)
  {
    boolean bool = paramAppendable instanceof Writer;
    Object localObject;
    if (bool)
    {
      paramAppendable = (Writer)paramAppendable;
      localObject = paramAppendable;
    }
    for (;;)
    {
      return (Writer)localObject;
      localObject = new com/google/kagegamesgson/Streams$AppendableWriter;
      Streams.1 local1 = null;
      ((Streams.AppendableWriter)localObject).<init>(paramAppendable, local1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Streams
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */