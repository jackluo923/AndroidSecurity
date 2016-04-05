package com.appyet.b.a;

import android.sax.Element;
import android.sax.RootElement;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import java.util.ArrayList;

public final class a
  extends t
{
  public a(ApplicationContext paramApplicationContext)
  {
    super(paramApplicationContext);
  }
  
  public final u a(Feed paramFeed)
  {
    try
    {
      f = new Feed();
      f.setLink(paramFeed.getLink());
      f.setEncoding(paramFeed.getEncoding());
      f.setStreamHash(paramFeed.getStreamHash());
      f.setHTTPETag(paramFeed.getHTTPETag());
      f.setHTTPLastModified(paramFeed.getHTTPLastModified());
      e = new RootElement("http://www.w3.org/2005/Atom", "feed");
      e.getChild("http://www.w3.org/2005/Atom", "title").setEndTextElementListener(new b(this));
      e.getChild("http://www.w3.org/2005/Atom", "link").setStartElementListener(new l(this));
      e.getChild("http://www.w3.org/2005/Atom", "updated").setEndTextElementListener(new m(this));
      paramFeed = new FeedItem();
      g = new ArrayList();
      Element localElement = e.getChild("http://www.w3.org/2005/Atom", "entry");
      localElement.setEndElementListener(new n(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "title").setEndTextElementListener(new o(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "id").setEndTextElementListener(new p(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "summary").setEndTextElementListener(new q(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "link").setStartElementListener(new r(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "content").setStartElementListener(new s(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new c(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "duration").setEndTextElementListener(new d(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "content").setEndTextElementListener(new e(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "summary").setEndTextElementListener(new f(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "updated").setEndTextElementListener(new g(this, paramFeed));
      localElement.getChild("http://www.w3.org/2005/Atom", "published").setEndTextElementListener(new h(this, paramFeed));
      localElement = localElement.getChild("http://search.yahoo.com/mrss/", "group");
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new i(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "description").setEndTextElementListener(new j(this, paramFeed));
      localElement.getChild("http://gdata.youtube.com/schemas/2007", "uploaded").setEndTextElementListener(new k(this, paramFeed));
      paramFeed = a();
      return paramFeed;
    }
    catch (Exception paramFeed)
    {
      com.appyet.d.d.a(paramFeed);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */