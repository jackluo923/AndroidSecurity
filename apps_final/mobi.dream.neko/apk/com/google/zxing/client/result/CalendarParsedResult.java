package com.google.zxing.client.result;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class CalendarParsedResult
  extends ParsedResult
{
  private static final DateFormat DATE_FORMAT;
  private static final Pattern DATE_TIME = Pattern.compile("[0-9]{8}(T[0-9]{6}Z?)?");
  private static final DateFormat DATE_TIME_FORMAT = new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
  private final String[] attendees;
  private final String description;
  private final Date end;
  private final boolean endAllDay;
  private final double latitude;
  private final String location;
  private final double longitude;
  private final String organizer;
  private final Date start;
  private final boolean startAllDay;
  private final String summary;
  
  static
  {
    DATE_FORMAT = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
    DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("GMT"));
  }
  
  public CalendarParsedResult(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String[] paramArrayOfString, String paramString6, double paramDouble1, double paramDouble2)
  {
    super(ParsedResultType.CALENDAR);
    summary = paramString1;
    for (;;)
    {
      try
      {
        start = parseDate(paramString2);
        if (paramString3 == null)
        {
          paramString1 = null;
          end = paramString1;
          if (paramString2.length() == 8)
          {
            bool = true;
            startAllDay = bool;
            if ((paramString3 == null) || (paramString3.length() != 8)) {
              break label135;
            }
            bool = true;
            endAllDay = bool;
            location = paramString4;
            organizer = paramString5;
            attendees = paramArrayOfString;
            description = paramString6;
            latitude = paramDouble1;
            longitude = paramDouble2;
          }
        }
        else
        {
          paramString1 = parseDate(paramString3);
          continue;
        }
        bool = false;
      }
      catch (ParseException paramString1)
      {
        throw new IllegalArgumentException(paramString1.toString());
      }
      continue;
      label135:
      boolean bool = false;
    }
  }
  
  private static String format(boolean paramBoolean, Date paramDate)
  {
    if (paramDate == null) {
      return null;
    }
    if (paramBoolean) {}
    for (DateFormat localDateFormat = DateFormat.getDateInstance(2);; localDateFormat = DateFormat.getDateTimeInstance(2, 2)) {
      return localDateFormat.format(paramDate);
    }
  }
  
  private static Date parseDate(String paramString)
    throws ParseException
  {
    if (!DATE_TIME.matcher(paramString).matches()) {
      throw new ParseException(paramString, 0);
    }
    if (paramString.length() == 8) {
      return DATE_FORMAT.parse(paramString);
    }
    if ((paramString.length() == 16) && (paramString.charAt(15) == 'Z'))
    {
      paramString = DATE_TIME_FORMAT.parse(paramString.substring(0, 15));
      GregorianCalendar localGregorianCalendar = new GregorianCalendar();
      long l = paramString.getTime() + localGregorianCalendar.get(15);
      localGregorianCalendar.setTime(new Date(l));
      return new Date(l + localGregorianCalendar.get(16));
    }
    return DATE_TIME_FORMAT.parse(paramString);
  }
  
  public String[] getAttendees()
  {
    return attendees;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    maybeAppend(summary, localStringBuilder);
    maybeAppend(format(startAllDay, start), localStringBuilder);
    maybeAppend(format(endAllDay, end), localStringBuilder);
    maybeAppend(location, localStringBuilder);
    maybeAppend(organizer, localStringBuilder);
    maybeAppend(attendees, localStringBuilder);
    maybeAppend(description, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public Date getEnd()
  {
    return end;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public String getLocation()
  {
    return location;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getOrganizer()
  {
    return organizer;
  }
  
  public Date getStart()
  {
    return start;
  }
  
  public String getSummary()
  {
    return summary;
  }
  
  public boolean isEndAllDay()
  {
    return endAllDay;
  }
  
  public boolean isStartAllDay()
  {
    return startAllDay;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.CalendarParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */