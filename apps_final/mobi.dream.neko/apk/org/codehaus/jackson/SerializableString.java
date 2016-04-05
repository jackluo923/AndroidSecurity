package org.codehaus.jackson;

public abstract interface SerializableString
{
  public abstract char[] asQuotedChars();
  
  public abstract byte[] asQuotedUTF8();
  
  public abstract byte[] asUnquotedUTF8();
  
  public abstract int charLength();
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.SerializableString
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */