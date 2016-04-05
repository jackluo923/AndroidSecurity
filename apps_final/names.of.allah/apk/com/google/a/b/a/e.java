package com.google.a.b.a;

import com.google.a.ae;
import com.google.a.ak;
import com.google.a.al;
import com.google.a.d.d;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class e
  extends ak<Date>
{
  public static final al a = new f();
  private final DateFormat b = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat c = DateFormat.getDateTimeInstance(2, 2);
  private final DateFormat d;
  
  public e()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    d = localSimpleDateFormat;
  }
  
  private Date a(String paramString)
  {
    try
    {
      Date localDate1 = c.parse(paramString);
      paramString = localDate1;
    }
    catch (ParseException localParseException1)
    {
      try
      {
        Date localDate2 = b.parse(paramString);
        paramString = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate3 = d.parse(paramString);
          paramString = localDate3;
        }
        catch (ParseException localParseException3)
        {
          throw new ae(paramString, localParseException3);
        }
      }
    }
    finally {}
    return paramString;
  }
  
  private void a(d paramd, Date paramDate)
  {
    if (paramDate == null) {}
    for (;;)
    {
      try
      {
        paramd.f();
        return;
      }
      finally {}
      paramd.b(b.format(paramDate));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */