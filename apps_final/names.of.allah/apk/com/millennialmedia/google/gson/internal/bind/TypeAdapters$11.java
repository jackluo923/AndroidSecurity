package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.internal.LazilyParsedNumber;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$11
  extends TypeAdapter<Number>
{
  public final Number read(JsonReader paramJsonReader)
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    switch (TypeAdapters.32.$SwitchMap$com$millennialmedia$google$gson$stream$JsonToken[localJsonToken.ordinal()])
    {
    case 2: 
    case 3: 
    default: 
      throw new JsonSyntaxException("Expecting number, got: " + localJsonToken);
    case 4: 
      paramJsonReader.nextNull();
      return null;
    }
    return new LazilyParsedNumber(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, Number paramNumber)
  {
    paramJsonWriter.value(paramNumber);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */