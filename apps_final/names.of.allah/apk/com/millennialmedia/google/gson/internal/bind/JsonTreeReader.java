package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonArray;
import com.millennialmedia.google.gson.JsonElement;
import com.millennialmedia.google.gson.JsonNull;
import com.millennialmedia.google.gson.JsonObject;
import com.millennialmedia.google.gson.JsonPrimitive;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class JsonTreeReader
  extends JsonReader
{
  private static final Object SENTINEL_CLOSED = new Object();
  private static final Reader UNREADABLE_READER = new JsonTreeReader.1();
  private final List<Object> stack = new ArrayList();
  
  public JsonTreeReader(JsonElement paramJsonElement)
  {
    super(UNREADABLE_READER);
    stack.add(paramJsonElement);
  }
  
  private void expect(JsonToken paramJsonToken)
  {
    if (peek() != paramJsonToken) {
      throw new IllegalStateException("Expected " + paramJsonToken + " but was " + peek());
    }
  }
  
  private Object peekStack()
  {
    return stack.get(stack.size() - 1);
  }
  
  private Object popStack()
  {
    return stack.remove(stack.size() - 1);
  }
  
  public final void beginArray()
  {
    expect(JsonToken.BEGIN_ARRAY);
    JsonArray localJsonArray = (JsonArray)peekStack();
    stack.add(localJsonArray.iterator());
  }
  
  public final void beginObject()
  {
    expect(JsonToken.BEGIN_OBJECT);
    JsonObject localJsonObject = (JsonObject)peekStack();
    stack.add(localJsonObject.entrySet().iterator());
  }
  
  public final void close()
  {
    stack.clear();
    stack.add(SENTINEL_CLOSED);
  }
  
  public final void endArray()
  {
    expect(JsonToken.END_ARRAY);
    popStack();
    popStack();
  }
  
  public final void endObject()
  {
    expect(JsonToken.END_OBJECT);
    popStack();
    popStack();
  }
  
  public final boolean hasNext()
  {
    JsonToken localJsonToken = peek();
    return (localJsonToken != JsonToken.END_OBJECT) && (localJsonToken != JsonToken.END_ARRAY);
  }
  
  public final boolean nextBoolean()
  {
    expect(JsonToken.BOOLEAN);
    return ((JsonPrimitive)popStack()).getAsBoolean();
  }
  
  public final double nextDouble()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    double d = ((JsonPrimitive)peekStack()).getAsDouble();
    if ((!isLenient()) && ((Double.isNaN(d)) || (Double.isInfinite(d)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d);
    }
    popStack();
    return d;
  }
  
  public final int nextInt()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    int i = ((JsonPrimitive)peekStack()).getAsInt();
    popStack();
    return i;
  }
  
  public final long nextLong()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.NUMBER) && (localJsonToken != JsonToken.STRING)) {
      throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + localJsonToken);
    }
    long l = ((JsonPrimitive)peekStack()).getAsLong();
    popStack();
    return l;
  }
  
  public final String nextName()
  {
    expect(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)peekStack()).next();
    stack.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }
  
  public final void nextNull()
  {
    expect(JsonToken.NULL);
    popStack();
  }
  
  public final String nextString()
  {
    JsonToken localJsonToken = peek();
    if ((localJsonToken != JsonToken.STRING) && (localJsonToken != JsonToken.NUMBER)) {
      throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + localJsonToken);
    }
    return ((JsonPrimitive)popStack()).getAsString();
  }
  
  public final JsonToken peek()
  {
    Object localObject;
    boolean bool;
    for (;;)
    {
      if (stack.isEmpty()) {
        return JsonToken.END_DOCUMENT;
      }
      localObject = peekStack();
      if (!(localObject instanceof Iterator)) {
        break label105;
      }
      bool = stack.get(stack.size() - 2) instanceof JsonObject;
      localObject = (Iterator)localObject;
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      if (bool) {
        return JsonToken.NAME;
      }
      stack.add(((Iterator)localObject).next());
    }
    if (bool) {
      return JsonToken.END_OBJECT;
    }
    return JsonToken.END_ARRAY;
    label105:
    if ((localObject instanceof JsonObject)) {
      return JsonToken.BEGIN_OBJECT;
    }
    if ((localObject instanceof JsonArray)) {
      return JsonToken.BEGIN_ARRAY;
    }
    if ((localObject instanceof JsonPrimitive))
    {
      localObject = (JsonPrimitive)localObject;
      if (((JsonPrimitive)localObject).isString()) {
        return JsonToken.STRING;
      }
      if (((JsonPrimitive)localObject).isBoolean()) {
        return JsonToken.BOOLEAN;
      }
      if (((JsonPrimitive)localObject).isNumber()) {
        return JsonToken.NUMBER;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof JsonNull)) {
      return JsonToken.NULL;
    }
    if (localObject == SENTINEL_CLOSED) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public final void promoteNameToValue()
  {
    expect(JsonToken.NAME);
    Map.Entry localEntry = (Map.Entry)((Iterator)peekStack()).next();
    stack.add(localEntry.getValue());
    stack.add(new JsonPrimitive((String)localEntry.getKey()));
  }
  
  public final void skipValue()
  {
    if (peek() == JsonToken.NAME)
    {
      nextName();
      return;
    }
    popStack();
  }
  
  public final String toString()
  {
    return getClass().getSimpleName();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.JsonTreeReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */