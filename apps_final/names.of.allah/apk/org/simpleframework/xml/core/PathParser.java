package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.Style;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.ConcurrentCache;

class PathParser
  implements Expression
{
  protected boolean attribute;
  protected Cache<String> attributes = new ConcurrentCache();
  protected StringBuilder builder = new StringBuilder();
  protected String cache;
  protected int count;
  protected char[] data;
  protected Cache<String> elements = new ConcurrentCache();
  protected List<Integer> indexes = new ArrayList();
  protected String location;
  protected List<String> names = new ArrayList();
  protected int off;
  protected String path;
  protected List<String> prefixes = new ArrayList();
  protected int start;
  protected Style style;
  protected Type type;
  
  public PathParser(String paramString, Type paramType, Format paramFormat)
  {
    style = paramFormat.getStyle();
    type = paramType;
    path = paramString;
    parse(paramString);
  }
  
  private void align()
  {
    if (names.size() > indexes.size()) {
      indexes.add(Integer.valueOf(1));
    }
  }
  
  private void attribute()
  {
    int i = off + 1;
    off = i;
    while (off < count)
    {
      char[] arrayOfChar = data;
      int j = off;
      off = (j + 1);
      char c = arrayOfChar[j];
      if (!isValid(c)) {
        throw new PathException("Illegal character '%s' in attribute for '%s' in %s", new Object[] { Character.valueOf(c), path, type });
      }
    }
    if (off <= i) {
      throw new PathException("Attribute reference in '%s' for %s is empty", new Object[] { path, type });
    }
    attribute = true;
    attribute(i, off - i);
  }
  
  private void attribute(int paramInt1, int paramInt2)
  {
    String str = new String(data, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      attribute(str);
    }
  }
  
  private void attribute(String paramString)
  {
    paramString = style.getAttribute(paramString);
    prefixes.add(null);
    names.add(paramString);
  }
  
  private void build()
  {
    int j = names.size();
    int i = 0;
    if (i < j)
    {
      String str1 = (String)prefixes.get(i);
      String str2 = (String)names.get(i);
      int k = ((Integer)indexes.get(i)).intValue();
      if (i > 0) {
        builder.append('/');
      }
      if ((attribute) && (i == j - 1))
      {
        builder.append('@');
        builder.append(str2);
      }
      for (;;)
      {
        i += 1;
        break;
        if (str1 != null)
        {
          builder.append(str1);
          builder.append(':');
        }
        builder.append(str2);
        builder.append('[');
        builder.append(k);
        builder.append(']');
      }
    }
    location = builder.toString();
  }
  
  private void element()
  {
    int j = off;
    int i = 0;
    for (;;)
    {
      char c;
      if (off < count)
      {
        char[] arrayOfChar = data;
        int k = off;
        off = (k + 1);
        c = arrayOfChar[k];
        if (isValid(c)) {
          break label129;
        }
        if (c != '@') {
          break label75;
        }
        off -= 1;
      }
      label75:
      do
      {
        for (;;)
        {
          element(j, i);
          return;
          if (c != '[') {
            break;
          }
          index();
        }
      } while (c == '/');
      throw new PathException("Illegal character '%s' in element for '%s' in %s", new Object[] { Character.valueOf(c), path, type });
      label129:
      i += 1;
    }
  }
  
  private void element(int paramInt1, int paramInt2)
  {
    String str = new String(data, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      element(str);
    }
  }
  
  private void element(String paramString)
  {
    int i = paramString.indexOf(':');
    String str1 = null;
    String str2 = paramString;
    if (i > 0)
    {
      str1 = paramString.substring(0, i);
      str2 = paramString.substring(i + 1);
    }
    paramString = style.getElement(str2);
    prefixes.add(str1);
    names.add(paramString);
  }
  
  private void index()
  {
    if (data[(off - 1)] == '[')
    {
      int i;
      for (j = 0;; j = j * 10 + i - 48)
      {
        k = j;
        if (off >= count) {
          break;
        }
        arrayOfChar = data;
        k = off;
        off = (k + 1);
        i = arrayOfChar[k];
        k = j;
        if (!isDigit(i)) {
          break;
        }
      }
    }
    int k = 0;
    char[] arrayOfChar = data;
    int j = off;
    off = (j + 1);
    if (arrayOfChar[(j - 1)] != ']') {
      throw new PathException("Invalid index for path '%s' in %s", new Object[] { path, type });
    }
    indexes.add(Integer.valueOf(k));
  }
  
  private boolean isDigit(char paramChar)
  {
    return Character.isDigit(paramChar);
  }
  
  private boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  private boolean isLetter(char paramChar)
  {
    return Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isSpecial(char paramChar)
  {
    return (paramChar == '_') || (paramChar == '-') || (paramChar == ':');
  }
  
  private boolean isValid(char paramChar)
  {
    return (isLetter(paramChar)) || (isSpecial(paramChar));
  }
  
  private void parse(String paramString)
  {
    if (paramString != null)
    {
      count = paramString.length();
      data = new char[count];
      paramString.getChars(0, count, data, 0);
    }
    path();
  }
  
  private void path()
  {
    if (data[off] == '/') {
      throw new PathException("Path '%s' in %s references document root", new Object[] { path, type });
    }
    if (data[off] == '.') {
      skip();
    }
    while (off < count)
    {
      if (attribute) {
        throw new PathException("Path '%s' in %s references an invalid attribute", new Object[] { path, type });
      }
      segment();
    }
    truncate();
    build();
  }
  
  private void segment()
  {
    int i = data[off];
    if (i == 47) {
      throw new PathException("Invalid path expression '%s' in %s", new Object[] { path, type });
    }
    if (i == 64) {
      attribute();
    }
    for (;;)
    {
      align();
      return;
      element();
    }
  }
  
  private void skip()
  {
    if (data.length > 1)
    {
      if (data[(off + 1)] != '/') {
        throw new PathException("Path '%s' in %s has an illegal syntax", new Object[] { path, type });
      }
      off += 1;
    }
    int i = off + 1;
    off = i;
    start = i;
  }
  
  private void truncate()
  {
    if (off - 1 >= data.length) {
      off -= 1;
    }
    while (data[(off - 1)] != '/') {
      return;
    }
    off -= 1;
  }
  
  public String getAttribute(String paramString)
  {
    if (!isEmpty(location))
    {
      String str2 = (String)attributes.fetch(paramString);
      String str1 = str2;
      if (str2 == null)
      {
        str2 = getAttributePath(location, paramString);
        str1 = str2;
        if (str2 != null)
        {
          attributes.cache(paramString, str2);
          str1 = str2;
        }
      }
      return str1;
    }
    return style.getAttribute(paramString);
  }
  
  protected String getAttributePath(String paramString1, String paramString2)
  {
    paramString2 = style.getAttribute(paramString2);
    if (isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1 + "/@" + paramString2;
  }
  
  public String getElement(String paramString)
  {
    if (!isEmpty(location))
    {
      String str2 = (String)elements.fetch(paramString);
      String str1 = str2;
      if (str2 == null)
      {
        str2 = getElementPath(location, paramString);
        str1 = str2;
        if (str2 != null)
        {
          elements.cache(paramString, str2);
          str1 = str2;
        }
      }
      return str1;
    }
    return style.getElement(paramString);
  }
  
  protected String getElementPath(String paramString1, String paramString2)
  {
    paramString2 = style.getElement(paramString2);
    if (isEmpty(paramString2)) {
      return paramString1;
    }
    if (isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1 + "/" + paramString2 + "[1]";
  }
  
  public String getFirst()
  {
    return (String)names.get(0);
  }
  
  public int getIndex()
  {
    return ((Integer)indexes.get(0)).intValue();
  }
  
  public String getLast()
  {
    int i = names.size();
    return (String)names.get(i - 1);
  }
  
  public String getPath()
  {
    return location;
  }
  
  public Expression getPath(int paramInt)
  {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2)
  {
    int i = names.size() - 1;
    if (i - paramInt2 >= paramInt1) {
      return new PathParser.PathSection(this, paramInt1, i - paramInt2);
    }
    return new PathParser.PathSection(this, paramInt1, paramInt1);
  }
  
  public String getPrefix()
  {
    return (String)prefixes.get(0);
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isEmpty()
  {
    return isEmpty(location);
  }
  
  public boolean isPath()
  {
    return names.size() > 1;
  }
  
  public Iterator<String> iterator()
  {
    return names.iterator();
  }
  
  public String toString()
  {
    int i = off;
    int j = start;
    if (cache == null) {
      cache = new String(data, start, i - j);
    }
    return cache;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PathParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */