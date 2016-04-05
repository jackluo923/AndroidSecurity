package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.sql.Timestamp;
import java.util.Date;

class TypeAdapters$22$1
  extends TypeAdapter<Timestamp>
{
  TypeAdapters$22$1(TypeAdapters.22 param22, TypeAdapter paramTypeAdapter) {}
  
  public Timestamp read(JsonReader paramJsonReader)
  {
    paramJsonReader = (Date)val$dateTypeAdapter.read(paramJsonReader);
    if (paramJsonReader != null) {
      return new Timestamp(paramJsonReader.getTime());
    }
    return null;
  }
  
  public void write(JsonWriter paramJsonWriter, Timestamp paramTimestamp)
  {
    val$dateTypeAdapter.write(paramJsonWriter, paramTimestamp);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.22.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */