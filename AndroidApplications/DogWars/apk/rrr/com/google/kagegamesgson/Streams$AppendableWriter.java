package com.google.kagegamesgson;

import java.io.IOException;
import java.io.Writer;

class Streams$AppendableWriter
  extends Writer
{
  private final Appendable appendable;
  private final Streams.AppendableWriter.CurrentWrite currentWrite;
  
  private Streams$AppendableWriter(Appendable paramAppendable)
  {
    Streams.AppendableWriter.CurrentWrite localCurrentWrite = new com/google/kagegamesgson/Streams$AppendableWriter$CurrentWrite;
    localCurrentWrite.<init>();
    currentWrite = localCurrentWrite;
    appendable = paramAppendable;
  }
  
  Streams$AppendableWriter(Appendable paramAppendable, Streams.1 param1)
  {
    this(paramAppendable);
  }
  
  public void close() {}
  
  public void flush() {}
  
  public void write(int paramInt)
    throws IOException
  {
    Appendable localAppendable = appendable;
    char c = (char)paramInt;
    localAppendable.append(c);
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException
  {
    Object localObject = currentWrite;
    chars = paramArrayOfChar;
    localObject = appendable;
    Streams.AppendableWriter.CurrentWrite localCurrentWrite = currentWrite;
    int i = paramInt1 + paramInt2;
    ((Appendable)localObject).append(localCurrentWrite, paramInt1, i);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Streams.AppendableWriter
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */