package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class PathParser$PathSection
  implements Expression
{
  private int begin;
  private List<String> cache = new ArrayList();
  private int end;
  private String path;
  private String section;
  
  public PathParser$PathSection(PathParser paramPathParser, int paramInt1, int paramInt2)
  {
    begin = paramInt1;
    end = paramInt2;
  }
  
  private String getCanonicalPath()
  {
    int j = 0;
    int i = 0;
    while (j < begin)
    {
      i = this$0.location.indexOf('/', i + 1);
      j += 1;
    }
    int m = i;
    int k = j;
    while (k <= end)
    {
      m = this$0.location.indexOf('/', m + 1);
      j = m;
      if (m == -1) {
        j = this$0.location.length();
      }
      k += 1;
      m = j;
    }
    return this$0.location.substring(i + 1, m);
  }
  
  private String getFragment()
  {
    int j = 0;
    int i = this$0.start;
    int m = 0;
    for (;;)
    {
      int k = i;
      if (j <= end)
      {
        if (i >= this$0.count) {
          k = i + 1;
        }
      }
      else {
        return new String(this$0.data, m, k - 1 - m);
      }
      char[] arrayOfChar = this$0.data;
      k = i + 1;
      int n = j;
      if (arrayOfChar[i] == '/')
      {
        j += 1;
        n = j;
        if (j == begin)
        {
          m = k;
          i = k;
          continue;
        }
      }
      i = k;
      j = n;
    }
  }
  
  public String getAttribute(String paramString)
  {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null) {
      str1 = this$0.getAttributePath(str2, paramString);
    }
    return str1;
  }
  
  public String getElement(String paramString)
  {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null) {
      str1 = this$0.getElementPath(str2, paramString);
    }
    return str1;
  }
  
  public String getFirst()
  {
    return (String)this$0.names.get(begin);
  }
  
  public int getIndex()
  {
    return ((Integer)this$0.indexes.get(begin)).intValue();
  }
  
  public String getLast()
  {
    return (String)this$0.names.get(end);
  }
  
  public String getPath()
  {
    if (section == null) {
      section = getCanonicalPath();
    }
    return section;
  }
  
  public Expression getPath(int paramInt)
  {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2)
  {
    return new PathSection(this$0, begin + paramInt1, end - paramInt2);
  }
  
  public String getPrefix()
  {
    return (String)this$0.prefixes.get(begin);
  }
  
  public boolean isAttribute()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this$0.attribute)
    {
      bool1 = bool2;
      if (end >= this$0.names.size() - 1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean isEmpty()
  {
    return begin == end;
  }
  
  public boolean isPath()
  {
    return end - begin > 0;
  }
  
  public Iterator<String> iterator()
  {
    if (cache.isEmpty())
    {
      int i = begin;
      while (i <= end)
      {
        String str = (String)this$0.names.get(i);
        if (str != null) {
          cache.add(str);
        }
        i += 1;
      }
    }
    return cache.iterator();
  }
  
  public String toString()
  {
    if (path == null) {
      path = getFragment();
    }
    return path;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PathParser.PathSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */