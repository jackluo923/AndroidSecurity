package com.appyet.f;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class m
{
  private static final Map<String, String> a = new n();
  
  public static Date a(String paramString)
  {
    Object localObject = a.keySet().iterator();
    String str;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      str = (String)((Iterator)localObject).next();
    } while (!paramString.toLowerCase().matches(str));
    for (localObject = (String)a.get(str); localObject == null; localObject = null) {
      throw new ParseException("Unknown date format.", 0);
    }
    localObject = new SimpleDateFormat((String)localObject);
    ((SimpleDateFormat)localObject).setLenient(false);
    return ((SimpleDateFormat)localObject).parse(paramString);
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */