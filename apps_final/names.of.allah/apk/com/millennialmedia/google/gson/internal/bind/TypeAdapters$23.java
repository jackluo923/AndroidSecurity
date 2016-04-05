package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.stream.JsonReader;
import com.millennialmedia.google.gson.stream.JsonToken;
import com.millennialmedia.google.gson.stream.JsonWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class TypeAdapters$23
  extends TypeAdapter<Calendar>
{
  private static final String DAY_OF_MONTH = "dayOfMonth";
  private static final String HOUR_OF_DAY = "hourOfDay";
  private static final String MINUTE = "minute";
  private static final String MONTH = "month";
  private static final String SECOND = "second";
  private static final String YEAR = "year";
  
  public final Calendar read(JsonReader paramJsonReader)
  {
    int j = 0;
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    paramJsonReader.beginObject();
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    while (paramJsonReader.peek() != JsonToken.END_OBJECT)
    {
      String str = paramJsonReader.nextName();
      int i = paramJsonReader.nextInt();
      if ("year".equals(str)) {
        i2 = i;
      } else if ("month".equals(str)) {
        i1 = i;
      } else if ("dayOfMonth".equals(str)) {
        n = i;
      } else if ("hourOfDay".equals(str)) {
        m = i;
      } else if ("minute".equals(str)) {
        k = i;
      } else if ("second".equals(str)) {
        j = i;
      }
    }
    paramJsonReader.endObject();
    return new GregorianCalendar(i2, i1, n, m, k, j);
  }
  
  public final void write(JsonWriter paramJsonWriter, Calendar paramCalendar)
  {
    if (paramCalendar == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginObject();
    paramJsonWriter.name("year");
    paramJsonWriter.value(paramCalendar.get(1));
    paramJsonWriter.name("month");
    paramJsonWriter.value(paramCalendar.get(2));
    paramJsonWriter.name("dayOfMonth");
    paramJsonWriter.value(paramCalendar.get(5));
    paramJsonWriter.name("hourOfDay");
    paramJsonWriter.value(paramCalendar.get(11));
    paramJsonWriter.name("minute");
    paramJsonWriter.value(paramCalendar.get(12));
    paramJsonWriter.name("second");
    paramJsonWriter.value(paramCalendar.get(13));
    paramJsonWriter.endObject();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */