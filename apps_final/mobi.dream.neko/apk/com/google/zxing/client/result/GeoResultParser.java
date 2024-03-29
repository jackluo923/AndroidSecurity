package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GeoResultParser
  extends ResultParser
{
  private static final Pattern GEO_URL_PATTERN = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);
  
  public GeoParsedResult parse(Result paramResult)
  {
    paramResult = getMassagedText(paramResult);
    paramResult = GEO_URL_PATTERN.matcher(paramResult);
    if (!paramResult.matches()) {}
    for (;;)
    {
      return null;
      String str1 = paramResult.group(4);
      try
      {
        double d3 = Double.parseDouble(paramResult.group(1));
        if ((d3 <= 90.0D) && (d3 >= -90.0D))
        {
          double d4 = Double.parseDouble(paramResult.group(2));
          if ((d4 <= 180.0D) && (d4 >= -180.0D))
          {
            String str2 = paramResult.group(3);
            double d1;
            if (str2 == null) {
              d1 = 0.0D;
            }
            double d2;
            do
            {
              return new GeoParsedResult(d3, d4, d1, str1);
              d2 = Double.parseDouble(paramResult.group(3));
              d1 = d2;
            } while (d2 >= 0.0D);
            return null;
          }
        }
      }
      catch (NumberFormatException paramResult) {}
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.GeoResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */