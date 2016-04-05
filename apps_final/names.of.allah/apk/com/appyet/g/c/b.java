package com.appyet.g.c;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class b
{
  public String a;
  private List<b> b = new ArrayList();
  private String c;
  
  public b(String paramString)
  {
    c = paramString;
  }
  
  public final void a(b paramb)
  {
    b.add(paramb);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((a != null) && (a.length() > 0))
    {
      localStringBuilder.append("\n<").append(c).append(">").append(a).append("</").append(c).append(">\n");
      return localStringBuilder.toString();
    }
    if (b.size() > 0)
    {
      localStringBuilder.append("\n<").append(c).append(">");
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        localStringBuilder.append(((b)localIterator.next()).toString());
      }
      localStringBuilder.append("</").append(c).append(">\n");
      return localStringBuilder.toString();
    }
    localStringBuilder.append("\n<").append(c).append("/>\n");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */