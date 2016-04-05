package com.appyet.b.a;

import android.sax.RootElement;
import android.util.Xml;
import com.appyet.a.f;
import com.appyet.context.ApplicationContext;
import com.appyet.d.b;
import com.appyet.d.e;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.data.FileCache;
import com.appyet.manager.bl;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class t
{
  public static String a = "[^\t\r\n -퟿-�𐀀-􏿿]";
  public static String b = "[^\001-퟿-�𐀀-􏿿]+";
  public static String c = "JGH386S4WFaqy1khW";
  protected ApplicationContext d;
  protected RootElement e;
  protected Feed f;
  protected List<FeedItem> g;
  protected List<FileCache> h;
  
  protected t(ApplicationContext paramApplicationContext)
  {
    d = paramApplicationContext;
    h = new ArrayList();
  }
  
  protected final u a()
  {
    u localu = new u();
    Object localObject4 = null;
    f localf = null;
    Object localObject2 = localf;
    Object localObject1 = localObject4;
    try
    {
      Object localObject5 = new com.appyet.a.d();
      localObject2 = localf;
      localObject1 = localObject4;
      a = URLDecoder.decode(f.getLink(), "UTF-8");
      localObject2 = localf;
      localObject1 = localObject4;
      e = f.getHTTPETag();
      localObject2 = localf;
      localObject1 = localObject4;
      d = f.getHTTPLastModified();
      localObject2 = localf;
      localObject1 = localObject4;
      localf = d.g.a((com.appyet.a.d)localObject5);
      localObject2 = localf;
      localObject1 = localf;
      localObject4 = d.g;
      localObject2 = localf;
      localObject1 = localf;
      if (!bl.a(localf))
      {
        localObject2 = localf;
        localObject1 = localf;
        a = v.b;
        bl.b(localf);
        return localu;
      }
      localObject2 = localf;
      localObject1 = localf;
      localObject4 = b.a(b);
      localObject2 = localf;
      localObject1 = localf;
      bl.b(localf);
      localObject2 = localf;
      localObject1 = localf;
      localObject5 = e.a((byte[])localObject4);
      localObject2 = localf;
      localObject1 = localf;
      if (f.getStreamHash() != null)
      {
        localObject2 = localf;
        localObject1 = localf;
        if (f.getStreamHash().equals(localObject5))
        {
          localObject2 = localf;
          localObject1 = localf;
          a = v.c;
          bl.b(localf);
          return localu;
        }
      }
      localObject2 = localf;
      localObject1 = localf;
      if (f.getEncoding() != null)
      {
        localObject2 = localf;
        localObject1 = localf;
        if (!f.getEncoding().trim().equals("")) {}
      }
      else
      {
        localObject2 = localf;
        localObject1 = localf;
        if (d == null) {
          break label392;
        }
        localObject2 = localf;
        localObject1 = localf;
        if (d.equals("")) {
          break label392;
        }
        localObject2 = localf;
        localObject1 = localf;
        f.setEncoding(d);
      }
      for (;;)
      {
        localObject2 = localf;
        localObject1 = localf;
        f.setStreamHash((String)localObject5);
        localObject2 = localf;
        localObject1 = localf;
        f.setHTTPLastModified(g);
        localObject2 = localf;
        localObject1 = localf;
        f.setHTTPETag(h);
        localObject2 = localf;
        localObject1 = localf;
        localObject4 = b.a((byte[])localObject4, f.getEncoding());
        if (localObject4 != null) {
          break;
        }
        localObject2 = localf;
        localObject1 = localf;
        a = v.b;
        bl.b(localf);
        return localu;
        label392:
        localObject2 = localf;
        localObject1 = localf;
        f.setEncoding(b.a((byte[])localObject4));
        localObject2 = localf;
        localObject1 = localf;
        if (f.getEncoding() != null)
        {
          localObject2 = localf;
          localObject1 = localf;
          if (!f.getEncoding().equals("")) {}
        }
        else
        {
          localObject2 = localf;
          localObject1 = localf;
          f.setEncoding("utf-8");
        }
      }
      f.setFeedItems(g);
    }
    catch (Exception localException)
    {
      localObject1 = localObject2;
      com.appyet.d.d.a(localException);
      localObject1 = localObject2;
      a = v.b;
      return localu;
      localObject2 = localException;
      localObject1 = localException;
      Xml.parse(((String)localObject4).replaceAll(a, ""), e.getContentHandler());
      bl.b(localException);
      localObject1 = g.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (FeedItem)((Iterator)localObject1).next();
        if ((((FeedItem)localObject2).getUniqueKey() == null) || (((FeedItem)localObject2).getUniqueKey().trim().equals(""))) {
          ((FeedItem)localObject2).setUniqueKey(((FeedItem)localObject2).buildUniqueKey());
        }
      }
    }
    finally
    {
      bl.b((f)localObject1);
    }
    b = f;
    a = v.a;
    return localu;
  }
  
  public final String a(String paramString)
  {
    String str;
    if ((f.getLink().startsWith("https://www.facebook.com/feeds")) || (f.getLink().startsWith("http://www.facebook.com/feeds"))) {
      str = paramString.replaceAll("_s.jpg\" alt=\"\" />", "_n.jpg\" alt=\"\" />");
    }
    do
    {
      return str;
      if (f.getLink().startsWith("http://api.flickr.com/services/feeds")) {
        return paramString.replaceAll("_m.jpg\"", "_b.jpg\"");
      }
      if (((f.getLink().startsWith("http://pinterest.com")) && (f.getLink().endsWith("rss"))) || ((f.getLink().startsWith("https://pinterest.com")) && (f.getLink().endsWith("rss")))) {
        return paramString.replaceAll("/192x/", "/736x/");
      }
      if (f.getLink().startsWith("https://photos.googleapis.com/data/feed")) {
        break;
      }
      str = paramString;
    } while (!f.getLink().startsWith("http://photos.googleapis.com/data/feed"));
    return paramString.replaceAll("/s288/", "/s800/");
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */