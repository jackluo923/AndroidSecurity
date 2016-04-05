package com.appyet.manager;

import com.appyet.a.a.a;
import com.appyet.a.a.b;
import com.appyet.a.a.e;
import com.appyet.a.a.f;
import com.appyet.context.ApplicationContext;
import com.appyet.data.Forum;
import com.appyet.f.z;
import com.appyet.g.l;
import com.appyet.g.p;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class an
{
  private static final Pattern b = Pattern.compile("\\[IMG[l|r]?\\](.+?)\\[/IMG[l|r]?\\]", 2);
  private static final Pattern c = Pattern.compile("\\[IMG\\](.*)\\[/IMG\\]", 2);
  private static final Pattern d = Pattern.compile("\\[QUOTE(.*)\\]((?s).*?)\\[/QUOTE\\]", 2);
  private static final Pattern e = Pattern.compile("\\[URL=\"?(.+?)\"?\\](.+?)\\[/URL\\]", 2);
  private static final Pattern f = Pattern.compile("\\[URL\\](.+?)\\[/URL\\]", 2);
  private ApplicationContext a;
  
  public an(ApplicationContext paramApplicationContext)
  {
    a = paramApplicationContext;
  }
  
  public static String a(com.appyet.a.a.d paramd, String paramString, boolean paramBoolean)
  {
    String str2 = a;
    String str1 = str2;
    if (!str2.endsWith("/")) {
      str1 = str2 + "/";
    }
    if ((paramd.a()) && (paramBoolean)) {
      return str1 + "announcement.php?a=" + paramString;
    }
    return str1 + "showthread.php?t=" + paramString;
  }
  
  private static String a(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Matcher localMatcher = c.matcher(paramString);
      while (localMatcher.find())
      {
        String str2 = localMatcher.group(1);
        localMatcher.appendReplacement(localStringBuffer, "<img src=\"" + z.a(str2) + "\">");
      }
      localMatcher.appendTail(localException);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return paramString;
    }
    String str1 = localException.toString();
    return str1;
  }
  
  private void a(Map<String, Object> paramMap, com.appyet.a.a.d paramd, a parama)
  {
    if (paramMap.containsKey("forum_id")) {
      a = ((String)paramMap.get("forum_id"));
    }
    if (paramMap.containsKey("forum_name")) {
      b = new String((byte[])paramMap.get("forum_name"));
    }
    if (paramMap.containsKey("description")) {
      c = new String((byte[])paramMap.get("description"));
    }
    if (paramMap.containsKey("parent_id")) {
      d = ((String)paramMap.get("parent_id"));
    }
    if (paramMap.containsKey("logo_url")) {
      e = ((String)paramMap.get("logo_url"));
    }
    if (paramMap.containsKey("new_post")) {
      f = ((Boolean)paramMap.get("new_post")).booleanValue();
    }
    if (paramMap.containsKey("is_protected")) {
      g = ((Boolean)paramMap.get("is_protected")).booleanValue();
    }
    if (paramMap.containsKey("is_subscribed")) {
      h = ((Boolean)paramMap.get("is_subscribed")).booleanValue();
    }
    if (paramMap.containsKey("can_subscribe")) {
      i = ((Boolean)paramMap.get("can_subscribe")).booleanValue();
    }
    if (paramMap.containsKey("url")) {
      j = ((String)paramMap.get("url"));
    }
    if (paramMap.containsKey("sub_only")) {
      k = ((Boolean)paramMap.get("sub_only")).booleanValue();
    }
    if (paramMap.containsKey("child"))
    {
      paramMap = (Object[])paramMap.get("child");
      if (paramMap != null)
      {
        int j = paramMap.length;
        int i = 0;
        while (i < j)
        {
          parama = (Map)paramMap[i];
          a locala = new a();
          a(parama, paramd, locala);
          b.add(locala);
          i += 1;
        }
      }
    }
  }
  
  private static String b(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Matcher localMatcher = e.matcher(paramString);
      while (localMatcher.find())
      {
        String str2 = localMatcher.group(1);
        String str3 = localMatcher.group(2);
        localMatcher.appendReplacement(localStringBuffer, "<a href=\"" + z.a(str2) + "\">" + str3 + "</a>");
      }
      localMatcher.appendTail(localException);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return paramString;
    }
    String str1 = localException.toString();
    return str1;
  }
  
  private static String c(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Matcher localMatcher = f.matcher(paramString);
      while (localMatcher.find())
      {
        String str2 = localMatcher.group(1);
        localMatcher.appendReplacement(localStringBuffer, "<a href=\"" + z.a(str2) + "\">" + str2 + "</a>");
      }
      localMatcher.appendTail(localException);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return paramString;
    }
    String str1 = localException.toString();
    return str1;
  }
  
  private static String d(String paramString)
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      Matcher localMatcher = d.matcher(paramString);
      while (localMatcher.find())
      {
        String str2 = localMatcher.group(2);
        localMatcher.appendReplacement(localStringBuffer, "<div class=\"quote\">" + str2 + "</div>");
      }
      localMatcher.appendTail(localException);
    }
    catch (Exception localException)
    {
      com.appyet.d.d.a(localException);
      return paramString;
    }
    String str1 = localException.toString();
    return str1;
  }
  
  public final a a(long paramLong, String paramString)
  {
    Iterator localIterator = ab.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (a.equals(paramString)) {
        return locala;
      }
    }
    return null;
  }
  
  public final com.appyet.a.a.d a(long paramLong)
  {
    if (a.o.a == null) {
      return null;
    }
    Object localObject = a.o.a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      locald = (com.appyet.a.a.d)((Iterator)localObject).next();
      if (c == paramLong) {
        return locald;
      }
    }
    localObject = a.h.i(paramLong);
    if (localObject == null) {
      return null;
    }
    com.appyet.a.a.d locald = new com.appyet.a.a.d();
    c = ((Forum)localObject).getModuleId().longValue();
    a = ((Forum)localObject).getLink();
    a.o.a.add(locald);
    return locald;
  }
  
  public final ao a(long paramLong, String paramString1, String paramString2)
  {
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {
      return new ao(this, false, null);
    }
    try
    {
      com.appyet.g.g localg = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      j = 120;
      localg.a(a.v);
      localg.a("Accept-Encoding", "gzip");
      if (d.d != null) {
        d.d.equals("1");
      }
      if (d.e != null) {
        d.e.equals("1");
      }
      paramString1 = (Map)localg.a("login", new Object[] { paramString1.getBytes(), paramString2.getBytes() });
      if (paramString1 != null)
      {
        paramString2 = (Boolean)paramString1.get("result");
        if (!paramString2.booleanValue()) {
          break label461;
        }
        f = e.b;
        e = new f();
        e.a = paramString2.booleanValue();
        if (paramString1.containsKey("result_text")) {
          e.b = new String((byte[])paramString1.get("result_text"));
        }
        if (paramString1.containsKey("status")) {
          e.c = ((String)paramString1.get("status"));
        }
        e.d = ((String)paramString1.get("user_id"));
        e.e = new String((byte[])paramString1.get("username"));
        if (paramString1.containsKey("email")) {
          e.f = new String((byte[])paramString1.get("email"));
        }
        e.g = ((String)paramString1.get("icon_url"));
        paramString1 = new ao(this, true, null);
        return paramString1;
      }
    }
    catch (p paramString1)
    {
      e = null;
      com.appyet.d.d.a(paramString1);
      do
      {
        return new ao(this, false, null);
      } while (!paramString1.containsKey("result_text"));
      paramString1 = new ao(this, false, new String((byte[])paramString1.get("result_text")));
      return paramString1;
    }
    catch (l paramString1)
    {
      for (;;)
      {
        e = null;
        com.appyet.d.d.a(paramString1);
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        label461:
        e = null;
        com.appyet.d.d.a(paramString1);
      }
    }
  }
  
  public final ao a(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {
      return new ao(this, false, null);
    }
    try
    {
      com.appyet.g.g localg = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      if (f != null) {
        localg.a(f);
      }
      j = 120;
      localg.a(a.v);
      localg.a("Accept-Encoding", "gzip");
      paramString1 = (Map)localg.a("new_topic", new Object[] { paramString1, paramString2.getBytes(), paramString3.getBytes() });
      if (paramString1 == null) {
        break label226;
      }
      paramString2 = (Boolean)paramString1.get("result");
      if (!paramString1.containsKey("result_text")) {
        break label253;
      }
      paramString1 = new String((byte[])paramString1.get("result_text"));
    }
    catch (p paramString1)
    {
      com.appyet.d.d.a(paramString1);
      return new ao(this, false, null);
    }
    catch (l paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
        continue;
        paramString1 = null;
      }
    }
    if (paramString2.booleanValue())
    {
      paramString1 = new ao(this, true, paramString1);
      return paramString1;
    }
  }
  
  public final List<com.appyet.a.a.c> a(long paramLong, String paramString, int paramInt)
  {
    com.appyet.a.a.d locald = a(paramLong);
    int i = paramInt * 10;
    paramInt = (paramInt + 1) * 10 - 1;
    ArrayList localArrayList = new ArrayList();
    try
    {
      Object localObject = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      if (f != null) {
        ((com.appyet.g.g)localObject).a(f);
      }
      j = 120;
      ((com.appyet.g.g)localObject).a(a.v);
      ((com.appyet.g.g)localObject).a("Accept-Encoding", "gzip");
      if ((a.o.b.m) && (locald.a())) {}
      for (paramString = (Map)((com.appyet.g.g)localObject).a("get_announcement", new Object[] { paramString, Integer.valueOf(i), Integer.valueOf(paramInt), Boolean.valueOf(false) });; paramString = (Map)((com.appyet.g.g)localObject).a("get_thread", new Object[] { paramString, Integer.valueOf(i), Integer.valueOf(paramInt), Boolean.valueOf(true) }))
      {
        if (paramString == null) {
          break label651;
        }
        if (paramString.containsKey("result_text")) {
          new String((byte[])paramString.get("result_text"));
        }
        if (paramString.containsKey("total_post_num"))
        {
          paramInt = ((Integer)paramString.get("total_post_num")).intValue();
          if ((a.o.b != null) && (a.o.b.k != paramInt)) {
            a.o.b.k = paramInt;
          }
        }
        if (!paramString.containsKey("posts")) {
          break;
        }
        paramString = (Object[])paramString.get("posts");
        if (paramString == null) {
          break;
        }
        i = paramString.length;
        paramInt = 0;
        while (paramInt < i)
        {
          localObject = (Map)paramString[paramInt];
          com.appyet.a.a.c localc = new com.appyet.a.a.c();
          b = new String((byte[])((Map)localObject).get("post_title"));
          f = ((String)((Map)localObject).get("icon_url"));
          c = d(c(b(a(new String((byte[])((Map)localObject).get("post_content"))))));
          if ((a.o.b.m) && (locald.a())) {
            c = c.replace("\n", "<br>");
          }
          g = ((Date)((Map)localObject).get("post_time"));
          a = ((String)((Map)localObject).get("post_id"));
          d = ((String)((Map)localObject).get("post_author_id"));
          e = new String((byte[])((Map)localObject).get("post_author_name"));
          localArrayList.add(localc);
          paramInt += 1;
        }
      }
      return localArrayList;
    }
    catch (p paramString)
    {
      com.appyet.d.d.a(paramString);
      return null;
    }
    catch (l paramString)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        label651:
        com.appyet.d.d.a(paramString);
      }
    }
  }
  
  public final List<e> a(long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    Object localObject2 = a(paramLong);
    Object localObject1 = a(paramLong, paramString1);
    if (localObject1 == null) {
      return null;
    }
    try
    {
      Object localObject3 = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      if (f != null) {
        ((com.appyet.g.g)localObject3).a(f);
      }
      j = 120;
      ((com.appyet.g.g)localObject3).a(a.v);
      ((com.appyet.g.g)localObject3).a("Accept-Encoding", "gzip");
      localObject2 = (Map)((com.appyet.g.g)localObject3).a("get_topic", new Object[] { paramString1, Integer.valueOf(paramInt1 * paramInt2), Integer.valueOf((paramInt1 + 1) * paramInt2 - 1), paramString2 });
      if (localObject2 != null)
      {
        paramString2 = new ArrayList();
        if (((Map)localObject2).containsKey("total_topic_num")) {
          l = ((Integer)((Map)localObject2).get("total_topic_num")).intValue();
        }
        if (((Map)localObject2).containsKey("can_post")) {
          m = ((Boolean)((Map)localObject2).get("can_post")).booleanValue();
        }
        if (((Map)localObject2).containsKey("unread_sticky_count")) {
          n = ((Integer)((Map)localObject2).get("unread_sticky_count")).intValue();
        }
        if (((Map)localObject2).containsKey("unread_announce_count")) {
          o = ((Integer)((Map)localObject2).get("unread_announce_count")).intValue();
        }
        if (((Map)localObject2).containsKey("require_prefix")) {
          p = ((Boolean)((Map)localObject2).get("require_prefix")).booleanValue();
        }
        if (((Map)localObject2).containsKey("topics"))
        {
          localObject1 = (Object[])((Map)localObject2).get("topics");
          if (localObject1 != null)
          {
            paramInt2 = localObject1.length;
            paramInt1 = 0;
            while (paramInt1 < paramInt2)
            {
              localObject2 = (Map)localObject1[paramInt1];
              localObject3 = new e();
              a = paramString1;
              b = ((String)((Map)localObject2).get("topic_id"));
              c = new String((byte[])((Map)localObject2).get("topic_title"));
              f = ((String)((Map)localObject2).get("icon_url"));
              j = new String((byte[])((Map)localObject2).get("short_content"));
              d = new String((byte[])((Map)localObject2).get("topic_author_name"));
              h = ((Integer)((Map)localObject2).get("reply_number")).intValue();
              i = ((Integer)((Map)localObject2).get("view_number")).intValue();
              g = ((Date)((Map)localObject2).get("last_reply_time"));
              if (((Map)localObject2).containsKey("is_closed")) {
                e = ((Boolean)((Map)localObject2).get("is_closed")).booleanValue();
              }
              paramString2.add(localObject3);
              paramInt1 += 1;
            }
          }
        }
        return paramString2;
      }
    }
    catch (p paramString1)
    {
      com.appyet.d.d.a(paramString1);
      return null;
    }
    catch (l paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
      }
    }
  }
  
  public final ao b(long paramLong, String paramString1, String paramString2, String paramString3)
  {
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {
      return new ao(this, false, null);
    }
    try
    {
      com.appyet.g.g localg = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      if (f != null) {
        localg.a(f);
      }
      j = 120;
      localg.a(a.v);
      localg.a("Accept-Encoding", "gzip");
      paramString1 = (Map)localg.a("reply_post", new Object[] { paramString1, paramString2, "".getBytes(), paramString3.getBytes() });
      if (paramString1 == null) {
        break label232;
      }
      paramString2 = (Boolean)paramString1.get("result");
      if (!paramString1.containsKey("result_text")) {
        break label259;
      }
      paramString1 = new String((byte[])paramString1.get("result_text"));
    }
    catch (p paramString1)
    {
      com.appyet.d.d.a(paramString1);
      return new ao(this, false, null);
    }
    catch (l paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        com.appyet.d.d.a(paramString1);
        continue;
        paramString1 = null;
      }
    }
    if (paramString2.booleanValue())
    {
      paramString1 = new ao(this, true, paramString1);
      return paramString1;
    }
  }
  
  public final void b(long paramLong)
  {
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {}
    for (;;)
    {
      return;
      if (d == null) {
        try
        {
          Object localObject = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
          j = 120;
          ((com.appyet.g.g)localObject).a(a.v);
          ((com.appyet.g.g)localObject).a("Accept-Encoding", "gzip");
          localObject = (Map)((com.appyet.g.g)localObject).a("get_config", new Object[0]);
          if (localObject != null)
          {
            d = new b();
            d.a = ((String)((Map)localObject).get("sys_version"));
            d.c = ((String)((Map)localObject).get("api_level"));
            d.b = ((String)((Map)localObject).get("version"));
            if (((Map)localObject).containsKey("support_md5")) {
              d.d = ((String)((Map)localObject).get("support_md5"));
            }
            if (((Map)localObject).containsKey("support_sha1"))
            {
              d.e = ((String)((Map)localObject).get("support_sha1"));
              return;
            }
          }
        }
        catch (p localp)
        {
          d = null;
          com.appyet.d.d.a(localp);
          return;
        }
        catch (l locall)
        {
          d = null;
          com.appyet.d.d.a(locall);
          return;
        }
        catch (Exception localException)
        {
          d = null;
          com.appyet.d.d.a(localException);
        }
      }
    }
  }
  
  public final boolean c(long paramLong)
  {
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {
      return false;
    }
    try
    {
      Object localObject = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
      if (f != null) {
        ((com.appyet.g.g)localObject).a(f);
      }
      j = 120;
      ((com.appyet.g.g)localObject).a(a.v);
      ((com.appyet.g.g)localObject).a("Accept-Encoding", "gzip");
      localObject = (Boolean)((com.appyet.g.g)localObject).a("logout_user", new Object[0]);
      e = null;
      f = null;
      boolean bool = ((Boolean)localObject).booleanValue();
      if (bool) {
        return true;
      }
    }
    catch (p localp)
    {
      com.appyet.d.d.a(localp);
      return false;
    }
    catch (l locall)
    {
      for (;;)
      {
        com.appyet.d.d.a(locall);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.appyet.d.d.a(localException);
      }
    }
  }
  
  public final void d(long paramLong)
  {
    int i = 0;
    com.appyet.a.a.d locald = a(paramLong);
    if (locald == null) {}
    for (;;)
    {
      return;
      if ((b != null) && (b.size() > 0)) {
        continue;
      }
      if (b == null) {
        b = new ArrayList();
      }
      try
      {
        Object localObject = new com.appyet.g.g(new URL(a + "/mobiquo/mobiquo.php"));
        if (f != null) {
          ((com.appyet.g.g)localObject).a(f);
        }
        j = 120;
        ((com.appyet.g.g)localObject).a(a.v);
        ((com.appyet.g.g)localObject).a("Accept-Encoding", "gzip");
        if (d.c.equals("3")) {}
        for (localObject = (Object[])((com.appyet.g.g)localObject).a("get_forum", new Object[0]); localObject != null; localObject = (Object[])((com.appyet.g.g)localObject).a("get_forum", new Object[] { Boolean.valueOf(false) }))
        {
          int j = localObject.length;
          while (i < j)
          {
            Map localMap = (Map)localObject[i];
            a locala = new a();
            a(localMap, locald, locala);
            b.add(locala);
            i += 1;
          }
        }
        return;
      }
      catch (p localp)
      {
        b.clear();
        com.appyet.d.d.a(localp);
        return;
      }
      catch (l locall)
      {
        b.clear();
        com.appyet.d.d.a(locall);
        return;
      }
      catch (Exception localException)
      {
        b.clear();
        com.appyet.d.d.a(localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */