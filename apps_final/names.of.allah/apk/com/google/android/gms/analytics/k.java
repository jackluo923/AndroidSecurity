package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

abstract class k<T extends j>
{
  Context mContext;
  k.a<T> tJ;
  
  public k(Context paramContext, k.a<T> parama)
  {
    mContext = paramContext;
    tJ = parama;
  }
  
  private T a(XmlResourceParser paramXmlResourceParser)
  {
    for (;;)
    {
      try
      {
        paramXmlResourceParser.next();
        i = paramXmlResourceParser.getEventType();
        if (i == 1) {
          continue;
        }
        if (paramXmlResourceParser.getEventType() == 2)
        {
          str1 = paramXmlResourceParser.getName().toLowerCase();
          if (!str1.equals("screenname")) {
            continue;
          }
          str1 = paramXmlResourceParser.getAttributeValue(null, "name");
          str2 = paramXmlResourceParser.nextText().trim();
          if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2))) {
            tJ.c(str1, str2);
          }
        }
      }
      catch (XmlPullParserException paramXmlResourceParser)
      {
        aa.A("Error parsing tracker configuration file: " + paramXmlResourceParser);
        return tJ.cw();
        if (!str1.equals("bool")) {
          continue;
        }
        String str2 = paramXmlResourceParser.getAttributeValue(null, "name");
        str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str2)) {
          continue;
        }
        bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          bool = Boolean.parseBoolean(str1);
          tJ.c(str2, bool);
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          aa.A("Error parsing bool configuration value: " + str1);
        }
        continue;
      }
      catch (IOException paramXmlResourceParser)
      {
        int i;
        aa.A("Error parsing tracker configuration file: " + paramXmlResourceParser);
        continue;
        if (!str1.equals("integer")) {
          continue;
        }
        String str3 = paramXmlResourceParser.getAttributeValue(null, "name");
        String str1 = paramXmlResourceParser.nextText().trim();
        if (TextUtils.isEmpty(str3)) {
          continue;
        }
        boolean bool = TextUtils.isEmpty(str1);
        if (bool) {
          continue;
        }
        try
        {
          i = Integer.parseInt(str1);
          tJ.a(str3, i);
        }
        catch (NumberFormatException localNumberFormatException2)
        {
          aa.A("Error parsing int configuration value: " + str1);
        }
        continue;
      }
      i = paramXmlResourceParser.next();
      continue;
      if (!str1.equals("string")) {
        continue;
      }
      str1 = paramXmlResourceParser.getAttributeValue(null, "name");
      str2 = paramXmlResourceParser.nextText().trim();
      if ((!TextUtils.isEmpty(str1)) && (str2 != null)) {
        tJ.d(str1, str2);
      }
    }
  }
  
  public T r(int paramInt)
  {
    try
    {
      j localj = a(mContext.getResources().getXml(paramInt));
      return localj;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      aa.D("inflate() called with unknown resourceId: " + localNotFoundException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */