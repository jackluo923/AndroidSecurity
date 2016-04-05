package com.google.a;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

final class a
  implements ad<Date>, v<Date>
{
  private final DateFormat a;
  private final DateFormat b;
  private final DateFormat c;
  
  a()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }
  
  public a(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }
  
  a(String paramString)
  {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }
  
  private a(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    a = paramDateFormat1;
    b = paramDateFormat2;
    c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    c.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  private w a(Date paramDate)
  {
    synchronized (b)
    {
      paramDate = new ab(a.format(paramDate));
      return paramDate;
    }
  }
  
  private Date a(w paramw)
  {
    Date localDate2;
    synchronized (b)
    {
      try
      {
        Date localDate1 = b.parse(paramw.b());
        return localDate1;
      }
      catch (ParseException localParseException1) {}
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(a.class.getSimpleName());
    localStringBuilder.append('(').append(b.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */