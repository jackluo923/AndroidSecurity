package org.xmlpull.v1;

import java.io.PrintStream;

public class XmlPullParserException
  extends Exception
{
  protected int column;
  protected Throwable detail;
  protected int row;
  
  public XmlPullParserException(String paramString)
  {
    super(paramString);
    row = i;
    column = i;
  }
  
  public XmlPullParserException(String paramString, XmlPullParser paramXmlPullParser, Throwable paramThrowable) {}
  
  public int getColumnNumber()
  {
    int i = column;
    return i;
  }
  
  public Throwable getDetail()
  {
    Throwable localThrowable = detail;
    return localThrowable;
  }
  
  public int getLineNumber()
  {
    int i = row;
    return i;
  }
  
  public void printStackTrace()
  {
    ??? = detail;
    if (??? == null) {
      super.printStackTrace();
    }
    for (;;)
    {
      return;
      synchronized (System.err)
      {
        Object localObject2 = System.err;
        Object localObject4 = new java/lang/StringBuilder;
        ((StringBuilder)localObject4).<init>();
        String str = super.getMessage();
        localObject4 = ((StringBuilder)localObject4).append(str);
        str = "; nested exception is:";
        localObject4 = ((StringBuilder)localObject4).append(str);
        localObject4 = ((StringBuilder)localObject4).toString();
        ((PrintStream)localObject2).println((String)localObject4);
        localObject2 = detail;
        ((Throwable)localObject2).printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.xmlpull.v1.XmlPullParserException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */