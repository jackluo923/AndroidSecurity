package com.appyet.g;

import android.util.Xml;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

final class e
{
  protected XmlSerializer a = Xml.newSerializer();
  protected d b = new o();
  
  public final Object a(InputStream paramInputStream)
  {
    try
    {
      XmlPullParser localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
      localXmlPullParser.setInput(new InputStreamReader(new BufferedInputStream(paramInputStream)));
      localXmlPullParser.nextTag();
      localXmlPullParser.require(2, null, "methodResponse");
      localXmlPullParser.nextTag();
      paramInputStream = localXmlPullParser.getName();
      if (paramInputStream.equals("params"))
      {
        localXmlPullParser.nextTag();
        localXmlPullParser.require(2, null, "param");
        localXmlPullParser.nextTag();
        return b.a(localXmlPullParser);
      }
      if (paramInputStream.equals("fault"))
      {
        localXmlPullParser.nextTag();
        paramInputStream = (Map)b.a(localXmlPullParser);
        throw new m((String)paramInputStream.get("faultString"), ((Integer)paramInputStream.get("faultCode")).intValue());
      }
    }
    catch (Exception paramInputStream)
    {
      if ((paramInputStream instanceof p))
      {
        throw ((p)paramInputStream);
        throw new l("Bad tag <" + paramInputStream + "> in XMLRPC response - neither <params> nor <fault>");
      }
      throw new l("Error getting result from server.", paramInputStream);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */