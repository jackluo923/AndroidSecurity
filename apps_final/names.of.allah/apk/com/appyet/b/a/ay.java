package com.appyet.b.a;

import android.sax.Element;
import android.sax.RootElement;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import java.util.ArrayList;

public final class ay
  extends t
{
  public ay(ApplicationContext paramApplicationContext)
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
      e = new RootElement("rss");
      Element localElement = e.getChild("channel");
      localElement.getChild("title").setEndTextElementListener(new az(this));
      localElement.getChild("link").setEndTextElementListener(new bk(this));
      localElement.getChild("pubDate").setEndTextElementListener(new bt(this));
      localElement.getChild("http://purl.org/dc/elements/1.1/", "date").setEndTextElementListener(new bu(this));
      localElement.getChild("lastBuildDate").setEndTextElementListener(new bv(this));
      paramFeed = new FeedItem();
      g = new ArrayList();
      localElement = localElement.getChild("item");
      localElement.setEndElementListener(new bw(this, paramFeed));
      localElement.getChild("title").setEndTextElementListener(new bx(this, paramFeed));
      localElement.getChild("link").setEndTextElementListener(new by(this, paramFeed));
      localElement.getChild("description").setEndTextElementListener(new bz(this, paramFeed));
      localElement.getChild("guid").setEndTextElementListener(new ba(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "summary").setEndTextElementListener(new bb(this, paramFeed));
      localElement.getChild("http://wellformedweb.org/CommentAPI/", "commentRss").setEndTextElementListener(new bc(this, paramFeed));
      localElement.getChild("http://wellformedweb.org/CommentAPI/", "commentRSS").setEndTextElementListener(new bd(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/modules/slash/", "comments").setEndTextElementListener(new be(this, paramFeed));
      localElement.getChild("comments").setEndTextElementListener(new bf(this, paramFeed));
      localElement.getChild("enclosure").setStartElementListener(new bg(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "content").setStartElementListener(new bh(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new bi(this, paramFeed));
      localElement.getChild("http://www.itunes.com/dtds/podcast-1.0.dtd", "duration").setEndTextElementListener(new bj(this, paramFeed));
      localElement.getChild("pubDate").setEndTextElementListener(new bl(this, paramFeed));
      localElement.getChild("http://purl.org/dc/elements/1.1/", "date").setEndTextElementListener(new bm(this, paramFeed));
      localElement.getChild("http://purl.org/dc/elements/1.1/", "creator").setEndTextElementListener(new bn(this, paramFeed));
      localElement.getChild("encoded").setEndTextElementListener(new bo(this, paramFeed));
      localElement.getChild("http://purl.org/rss/1.0/modules/content/", "encoded").setEndTextElementListener(new bp(this, paramFeed));
      localElement = localElement.getChild("http://search.yahoo.com/mrss/", "group");
      localElement.getChild("http://search.yahoo.com/mrss/", "thumbnail").setStartElementListener(new bq(this, paramFeed));
      localElement.getChild("http://search.yahoo.com/mrss/", "description").setEndTextElementListener(new br(this, paramFeed));
      localElement.getChild("http://gdata.youtube.com/schemas/2007", "uploaded").setEndTextElementListener(new bs(this, paramFeed));
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
 * Qualified Name:     com.appyet.b.a.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */