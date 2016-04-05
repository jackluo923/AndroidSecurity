package com.google.kagegamesgson;

class Streams$AppendableWriter$CurrentWrite
  implements CharSequence
{
  char[] chars;
  
  public char charAt(int paramInt)
  {
    char[] arrayOfChar = chars;
    char c = arrayOfChar[paramInt];
    return c;
  }
  
  public int length()
  {
    char[] arrayOfChar = chars;
    int i = arrayOfChar.length;
    return i;
  }
  
  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    String str = new java/lang/String;
    char[] arrayOfChar = chars;
    int i = paramInt2 - paramInt1;
    str.<init>(arrayOfChar, paramInt1, i);
    return str;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Streams.AppendableWriter.CurrentWrite
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */