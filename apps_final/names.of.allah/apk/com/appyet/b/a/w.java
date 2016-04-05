package com.appyet.b.a;

import android.sax.Element;
import android.sax.RootElement;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import java.util.ArrayList;

public final class w
  extends t
{
  public w(ApplicationContext paramApplicationContext)
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
      e = new RootElement("http://www.w3.org/1999/02/22-rdf-syntax-ns#", "RDF");
      paramFeed = e.getChild("http://purl.org/rss/1.0/", "channel");
      paramFeed.getChild("http://purl.org/rss/1.0/", "title").setEndTextElementListener(new x(this));
      paramFeed.getChild("http://purl.org/rss/1.0/", "link").setEndTextElementListener(new ai(this));
      paramFeed.getChild("http://purl.org/rss/1.0/", "pubDate").setEndTextElementListener(new ar(this));
      paramFeed.getChild("http://purl.org/dc/elements/1.1/", "date").setEndTextElementListener(new as(this));
      paramFeed.getChild("http://purl.org/rss/1.0/", "lastBuildDate").setEndTextElementListener(new at(this));
      paramFeed = new FeedItem();
      g = new ArrayList();
      Element localElement = e.getChild("http://purl.org/rss/1.0/", "item");
      localElement.setEndElementListener(new au(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/", "title").setEndTextElementListener(new av(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/", "link").setEndTextElementListener(new aw(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/", "description").setEndTextElementListener(new ax(this, paramFeed));
      localElement.getChild("guid").setEndTextElementListener(new y(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "summary").setEndTextElementListener(new z(this, paramFeed));
      localElement.getChild("http://wellformedweb.org/CommentAPI/", "commentRss").setEndTextElementListener(new aa(this, paramFeed));
      localElement.getChild("http://wellformedweb.org/CommentAPI/", "commentRSS").setEndTextElementListener(new ab(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/modules/slash/", "comments").setEndTextElementListener(new ac(this, paramFeed));
      localElement.getChild("comments").setEndTextElementListener(new ad(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/", "enclosure").setStartElementListener(new ae(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "content").setStartElementListener(new af(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new ag(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "duration").setEndTextElementListener(new ah(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/", "pubDate").setEndTextElementListener(new aj(this, paramFeed));
      localElement.getChild("http://purl.org/dc/elements/1.1/", "date").setEndTextElementListener(new ak(this, paramFeed));
      localElement.getChild("http://purl.org/dc/elements/1.1/", "creator").setEndTextElementListener(new al(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/modules/syndication/", "updateBase").setEndTextElementListener(new am(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/modules/content/", "encoded").setEndTextElementListener(new an(this, paramFeed));
      localElement = localElement.getChild("http://search.yahoo.com/mrss/", "group");
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new ao(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "description").setEndTextElementListener(new ap(this, paramFeed));
      localElement.getChild("http://gdata.youtube.com/schemas/2007", "uploaded").setEndTextElementListener(new aq(this, paramFeed));
      paramFeed = a();
      return paramFeed;
    }
    catch (Exception paramFeed)
    {
      d.a(paramFeed);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.b.a.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */