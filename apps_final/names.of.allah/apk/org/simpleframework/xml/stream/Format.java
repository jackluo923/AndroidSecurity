package org.simpleframework.xml.stream;

public class Format
{
  private final int indent;
  private final String prolog;
  private final Style style;
  private final Verbosity verbosity;
  
  public Format()
  {
    this(3);
  }
  
  public Format(int paramInt)
  {
    this(paramInt, null, new IdentityStyle());
  }
  
  public Format(int paramInt, String paramString)
  {
    this(paramInt, paramString, new IdentityStyle());
  }
  
  public Format(int paramInt, String paramString, Style paramStyle)
  {
    this(paramInt, paramString, paramStyle, Verbosity.HIGH);
  }
  
  public Format(int paramInt, String paramString, Style paramStyle, Verbosity paramVerbosity)
  {
    verbosity = paramVerbosity;
    prolog = paramString;
    indent = paramInt;
    style = paramStyle;
  }
  
  public Format(int paramInt, Style paramStyle)
  {
    this(paramInt, null, paramStyle);
  }
  
  public Format(int paramInt, Style paramStyle, Verbosity paramVerbosity)
  {
    this(paramInt, null, paramStyle, paramVerbosity);
  }
  
  public Format(int paramInt, Verbosity paramVerbosity)
  {
    this(paramInt, new IdentityStyle(), paramVerbosity);
  }
  
  public Format(String paramString)
  {
    this(3, paramString);
  }
  
  public Format(Style paramStyle)
  {
    this(3, paramStyle);
  }
  
  public Format(Style paramStyle, Verbosity paramVerbosity)
  {
    this(3, paramStyle, paramVerbosity);
  }
  
  public Format(Verbosity paramVerbosity)
  {
    this(3, paramVerbosity);
  }
  
  public int getIndent()
  {
    return indent;
  }
  
  public String getProlog()
  {
    return prolog;
  }
  
  public Style getStyle()
  {
    return style;
  }
  
  public Verbosity getVerbosity()
  {
    return verbosity;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Format
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */