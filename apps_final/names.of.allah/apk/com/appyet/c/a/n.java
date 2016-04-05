package com.appyet.c.a;

import android.content.res.Resources;
import android.os.Build.VERSION;
import android.view.View;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.appyet.a.a.c;
import com.appyet.a.a.e;
import com.appyet.context.ApplicationContext;
import com.appyet.context.g;
import com.appyet.d.d;
import com.appyet.manager.an;
import com.appyet.manager.bp;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

final class n
  extends com.appyet.f.a<Void, Void, Boolean>
{
  WebView a;
  String b;
  View c;
  
  public n(l paraml, WebView paramWebView, View paramView)
  {
    a = paramWebView;
    c = paramView;
  }
  
  private Boolean f()
  {
    for (;;)
    {
      try
      {
        Object localObject = cd).p.a(l.b(d).longValue(), cd).o.b.b, l.d(d));
        String str1 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Basic 1.1//EN\"\"http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd\"><html><head><title></title>";
        if (Build.VERSION.SDK_INT >= 16) {
          str1 = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML Basic 1.1//EN\"\"http://www.w3.org/TR/xhtml-basic/xhtml-basic11.dtd\"><html><head><title></title>" + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" />";
        }
        str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/fonts.css\"></link>";
        if (cd).m.a.PrimaryBgColor.equals("DARK")) {
          str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/forum/forum_dark.css\"></link>";
        }
        String str3;
        c localc;
        switch (cd).d.K())
        {
        case 0: 
          str3 = str1 + "</head><body><div class=\"posts\">";
          if ((localObject != null) && (((List)localObject).size() > 0))
          {
            Iterator localIterator = ((List)localObject).iterator();
            int i = 0;
            if (!localIterator.hasNext()) {
              continue;
            }
            localc = (c)localIterator.next();
            i += 1;
            if (com.appyet.d.a.a(g, new Date()))
            {
              localObject = com.appyet.d.a.d(l.c(d), g);
              if ((f == null) || (f.length() <= 0)) {
                continue;
              }
              str1 = f;
              str3 = str3 + "<div class=\"post\">";
              str1 = str3 + "<div class=\"posthead\"><img src=\"" + str1 + "\" class=\"postavatar\"><div class=\"postauthor\">" + e + "</div><div class=\"postindex\">&nbsp;/&nbsp;#" + (l.d(d) * 10 + i) + "</div><div class=\"postdate\">&nbsp;/&nbsp;" + (String)localObject + "</div></div>";
              str1 = str1 + "<div class=\"postbody\">" + c + "</div>";
              str1 = str1 + "<div class=\"postfooter\"></div>";
              str3 = str1 + "</div><hr/>";
              continue;
              str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/forum/forum_light.css\"></link>";
              continue;
              if (d.getResources().getBoolean(2131558413))
              {
                str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_small.css\"></link>";
                continue;
              }
              str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_small.css\"></link>";
            }
          }
          break;
        case 1: 
          if (d.getResources().getBoolean(2131558413))
          {
            str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_small.css\"></link>";
            continue;
          }
          str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_small.css\"></link>";
          break;
        case 2: 
          if (d.getResources().getBoolean(2131558413))
          {
            str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_medium.css\"></link>";
            continue;
          }
          str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_medium.css\"></link>";
          break;
        case 3: 
          if (d.getResources().getBoolean(2131558413))
          {
            str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_large.css\"></link>";
            continue;
          }
          str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_large.css\"></link>";
          break;
        case 4: 
          if (d.getResources().getBoolean(2131558413))
          {
            str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_tablet_extra_large.css\"></link>";
            continue;
          }
          str1 = str1 + "<link rel=\"stylesheet\" type=\"text/css\" href=\"file:///android_asset/html/article_extra_large.css\"></link>";
          continue;
          localObject = com.appyet.d.a.b(l.c(d), g);
          continue;
          if (!cd).m.a.PrimaryBgColor.equals("DARK")) {
            break label916;
          }
          str1 = "file:///android_asset/html/forum/default_avatar_dark.png";
          continue;
          b = null;
          return null;
          b = (str3 + "</div></body></html>");
          return Boolean.valueOf(true);
        }
      }
      catch (Exception localException)
      {
        d.a(localException);
        return Boolean.valueOf(false);
      }
      continue;
      label916:
      String str2 = "file:///android_asset/html/forum/default_avatar_light.png";
    }
  }
  
  protected final void a()
  {
    l.f(d).setVisibility(0);
    l.e(d).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */