package com.appyet.c;

import android.content.Intent;
import android.widget.ProgressBar;
import com.appyet.activity.ImageViewerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.d.e;
import com.appyet.data.FeedItem;
import com.appyet.data.FileCache;
import com.appyet.f.a;
import com.appyet.f.aa;
import com.appyet.manager.al;
import com.appyet.manager.bp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class n
  extends a<Void, Void, Void>
{
  String a;
  
  public n(k paramk, String paramString)
  {
    a = paramString;
  }
  
  private Void f()
  {
    int j = 0;
    Object localObject2;
    Object localObject3;
    int i;
    try
    {
      Object localObject1 = a;
      localObject2 = ((String)localObject1).substring(((String)localObject1).indexOf("///") + 3);
      localObject1 = localObject2;
      if (!((String)localObject2).startsWith("http://"))
      {
        localObject1 = localObject2;
        if (!((String)localObject2).startsWith("https://"))
        {
          localObject1 = localObject2;
          if (((String)localObject2).startsWith("//")) {
            localObject1 = "http:" + (String)localObject2;
          }
        }
      }
      localObject2 = localObject1;
      if (((String)localObject1).startsWith("/"))
      {
        localObject2 = localObject1;
        if (!((String)localObject1).startsWith("//"))
        {
          localObject3 = aa.a(a);
          localObject2 = localObject1;
          if (localObject3 != null) {
            localObject2 = (String)localObject3 + (String)localObject1;
          }
        }
      }
      localObject3 = e.a((String)localObject2);
      localObject1 = (FeedItem)cb).n.b.get(k.j(b));
      Object localObject4 = cb).h.a(((FeedItem)localObject1).getCacheGuid());
      localObject2 = new ArrayList();
      localObject4 = ((List)localObject4).iterator();
      i = 0;
      while (((Iterator)localObject4).hasNext())
      {
        FileCache localFileCache = (FileCache)((Iterator)localObject4).next();
        if (cb).j.a(localFileCache.getFileCacheName(), cb).d.B()))
        {
          if (((String)localObject3).equals(localFileCache.getFileCacheName())) {
            j = i;
          }
          i += 1;
          ((ArrayList)localObject2).add(localFileCache.getFileLink());
          continue;
          return null;
        }
      }
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
    }
    for (;;)
    {
      if (i > 0)
      {
        localObject3 = new Intent(k.c(b), ImageViewerActivity.class);
        ((Intent)localObject3).putExtra("SHARE_TITLE", localException.getTitle());
        ((Intent)localObject3).putExtra("SHARE_URL", localException.getLink());
        ((Intent)localObject3).putExtra("SELECTED_POSITION", j);
        ((Intent)localObject3).putStringArrayListExtra("IMAGE_LINKS", (ArrayList)localObject2);
        k.c(b).startActivity((Intent)localObject3);
      }
    }
  }
  
  protected final void a()
  {
    k.i(b).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */