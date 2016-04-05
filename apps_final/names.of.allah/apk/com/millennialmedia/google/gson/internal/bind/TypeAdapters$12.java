package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.JsonSyntaxException;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;

final class TypeAdapters$12
  extends TypeAdapter<Character>
{
  public final Character read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    paramJsonReader = paramJsonReader.nextString();
    if (paramJsonReader.length() != 1) {
      throw new JsonSyntaxException("Expecting character, got: " + paramJsonReader);
    }
    return Character.valueOf(paramJsonReader.charAt(0));
  }
  
  public final void write(JsonWriter paramJsonWriter, Character paramCharacter)
  {
    if (paramCharacter == null) {}
    for (paramCharacter = null;; paramCharacter = String.valueOf(paramCharacter))
    {
      paramJsonWriter.value(paramCharacter);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */