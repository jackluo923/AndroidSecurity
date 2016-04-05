package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.net.InetAddress;

final class TypeAdapters$20
  extends TypeAdapter<InetAddress>
{
  public final InetAddress read(JsonReader paramJsonReader)
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return InetAddress.getByName(paramJsonReader.nextString());
  }
  
  public final void write(JsonWriter paramJsonWriter, InetAddress paramInetAddress)
  {
    if (paramInetAddress == null) {}
    for (paramInetAddress = null;; paramInetAddress = paramInetAddress.getHostAddress())
    {
      paramJsonWriter.value(paramInetAddress);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */