package org.simpleframework.xml.stream;

abstract class Splitter
{
  protected StringBuilder builder = new StringBuilder();
  protected int count;
  protected int off;
  protected char[] text;
  
  public Splitter(String paramString)
  {
    text = paramString.toCharArray();
    count = text.length;
  }
  
  private boolean acronym()
  {
    boolean bool = false;
    int i = off;
    int j = 0;
    while ((i < count) && (isUpper(text[i])))
    {
      j += 1;
      i += 1;
    }
    if (j > 1)
    {
      int k = i;
      if (i < count)
      {
        k = i;
        if (isUpper(text[(i - 1)])) {
          k = i - 1;
        }
      }
      commit(text, off, k - off);
      off = k;
    }
    if (j > 1) {
      bool = true;
    }
    return bool;
  }
  
  private boolean isDigit(char paramChar)
  {
    return Character.isDigit(paramChar);
  }
  
  private boolean isLetter(char paramChar)
  {
    return Character.isLetter(paramChar);
  }
  
  private boolean isSpecial(char paramChar)
  {
    return !Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isUpper(char paramChar)
  {
    return Character.isUpperCase(paramChar);
  }
  
  private boolean number()
  {
    boolean bool = false;
    int i = off;
    int j = 0;
    while ((i < count) && (isDigit(text[i])))
    {
      j += 1;
      i += 1;
    }
    if (j > 0) {
      commit(text, off, i - off);
    }
    off = i;
    if (j > 0) {
      bool = true;
    }
    return bool;
  }
  
  private void token()
  {
    int i = off;
    while (i < count)
    {
      char c = text[i];
      if ((!isLetter(c)) || ((i > off) && (isUpper(c)))) {
        break;
      }
      i += 1;
    }
    if (i > off)
    {
      parse(text, off, i - off);
      commit(text, off, i - off);
    }
    off = i;
  }
  
  protected abstract void commit(char[] paramArrayOfChar, int paramInt1, int paramInt2);
  
  protected abstract void parse(char[] paramArrayOfChar, int paramInt1, int paramInt2);
  
  public String process()
  {
    while (off < count)
    {
      while ((off < count) && (isSpecial(text[off]))) {
        off += 1;
      }
      if (!acronym())
      {
        token();
        number();
      }
    }
    return builder.toString();
  }
  
  protected char toLower(char paramChar)
  {
    return Character.toLowerCase(paramChar);
  }
  
  protected char toUpper(char paramChar)
  {
    return Character.toUpperCase(paramChar);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Splitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */