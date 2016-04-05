package com.appyet.g;

import com.appyet.f.m;
import com.appyet.g.a.a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class o
  implements d
{
  static SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd'T'HH:mm:ss");
  
  public final Object a(XmlPullParser paramXmlPullParser)
  {
    paramXmlPullParser.require(2, null, "value");
    if (paramXmlPullParser.isEmptyElementTag()) {
      return "";
    }
    int j = 1;
    try
    {
      paramXmlPullParser.nextTag();
      String str1 = paramXmlPullParser.getName();
      localObject3 = str1;
      i = j;
      i = 0;
    }
    catch (XmlPullParserException localXmlPullParserException1)
    {
      try
      {
        if (!str1.equals("value")) {
          break label81;
        }
        localObject3 = str1;
        i = j;
        if (paramXmlPullParser.getEventType() != 3) {
          break label81;
        }
        return "";
      }
      catch (XmlPullParserException localXmlPullParserException2)
      {
        Object localObject3;
        int i;
        Object localObject1;
        for (;;) {}
      }
      localXmlPullParserException1 = localXmlPullParserException1;
      localObject1 = null;
    }
    localObject3 = localObject1;
    label81:
    if (i != 0) {
      if ((((String)localObject3).equals("int")) || (((String)localObject3).equals("i4"))) {
        localObject1 = Integer.valueOf(Integer.parseInt(paramXmlPullParser.nextText()));
      }
    }
    for (;;)
    {
      paramXmlPullParser.nextTag();
      paramXmlPullParser.require(3, null, "value");
      return localObject1;
      if (((String)localObject3).equals("i8"))
      {
        localObject1 = Long.valueOf(Long.parseLong(paramXmlPullParser.nextText()));
      }
      else if (((String)localObject3).equals("double"))
      {
        localObject1 = Double.valueOf(Double.parseDouble(paramXmlPullParser.nextText()));
      }
      else if (((String)localObject3).equals("boolean"))
      {
        if (paramXmlPullParser.nextText().equals("1")) {
          localObject1 = Boolean.TRUE;
        } else {
          localObject1 = Boolean.FALSE;
        }
      }
      else if (((String)localObject3).equals("string"))
      {
        localObject1 = paramXmlPullParser.nextText();
      }
      else
      {
        Object localObject2;
        if (((String)localObject3).equals("dateTime.iso8601"))
        {
          localObject3 = paramXmlPullParser.nextText();
          try
          {
            localObject1 = a.parseObject((String)localObject3);
          }
          catch (ParseException localParseException)
          {
            try
            {
              localObject2 = m.a((String)localObject3);
            }
            catch (Exception paramXmlPullParser)
            {
              throw new IOException("Cannot deserialize dateTime " + (String)localObject3);
            }
          }
        }
        else
        {
          Object localObject4;
          if (((String)localObject3).equals("base64"))
          {
            localObject2 = new BufferedReader(new StringReader(paramXmlPullParser.nextText()));
            localObject3 = new StringBuffer();
            for (;;)
            {
              localObject4 = ((BufferedReader)localObject2).readLine();
              if (localObject4 == null) {
                break;
              }
              ((StringBuffer)localObject3).append((String)localObject4);
            }
            localObject2 = a.a(((StringBuffer)localObject3).toString());
          }
          else if (((String)localObject3).equals("array"))
          {
            paramXmlPullParser.nextTag();
            paramXmlPullParser.require(2, null, "data");
            paramXmlPullParser.nextTag();
            localObject2 = new ArrayList();
            while (paramXmlPullParser.getName().equals("value"))
            {
              ((List)localObject2).add(a(paramXmlPullParser));
              paramXmlPullParser.nextTag();
            }
            paramXmlPullParser.require(3, null, "data");
            paramXmlPullParser.nextTag();
            paramXmlPullParser.require(3, null, "array");
            localObject2 = ((List)localObject2).toArray();
          }
          else if (((String)localObject3).equals("struct"))
          {
            paramXmlPullParser.nextTag();
            localObject4 = new HashMap();
            while (paramXmlPullParser.getName().equals("member"))
            {
              localObject3 = null;
              localObject2 = null;
              for (;;)
              {
                paramXmlPullParser.nextTag();
                String str2 = paramXmlPullParser.getName();
                if (str2.equals("name"))
                {
                  localObject2 = paramXmlPullParser.nextText();
                }
                else
                {
                  if (!str2.equals("value")) {
                    break;
                  }
                  localObject3 = a(paramXmlPullParser);
                }
              }
              if ((localObject2 != null) && (localObject3 != null)) {
                ((Map)localObject4).put(localObject2, localObject3);
              }
              paramXmlPullParser.require(3, null, "member");
              paramXmlPullParser.nextTag();
            }
            paramXmlPullParser.require(3, null, "struct");
            localObject2 = localObject4;
          }
          else
          {
            throw new IOException("Cannot deserialize " + paramXmlPullParser.getName());
            localObject2 = paramXmlPullParser.getText();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */