package com.millennialmedia.google.gson.internal;

import java.io.Writer;

final class Streams$AppendableWriter
  extends Writer
{
  private final Appendable appendable;
  private final Streams.AppendableWriter.CurrentWrite currentWrite = new Streams.AppendableWriter.CurrentWrite();
  
  private Streams$AppendableWriter(Appendable paramAppendable)
  {
    appendable = paramAppendable;
  }
  
  public final void close() {}
  
  public final void flush() {}
  
  public final void write(int paramInt)
  {
    appendable.append((char)paramInt);
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    currentWrite.chars = paramArrayOfChar;
    appendable.append(currentWrite, paramInt1, paramInt1 + paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.Streams.AppendableWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */