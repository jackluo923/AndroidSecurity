package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.util.UUID;

final class TypeAdapters$21
  extends TypeAdapter<UUID>
{
  public final UUID read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return UUID.fromString(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, UUID paramUUID)
  {
    if (paramUUID == null) {}
    for (paramUUID = null;; paramUUID = paramUUID.toString())
    {
      paramJsonWriter.value(paramUUID);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */