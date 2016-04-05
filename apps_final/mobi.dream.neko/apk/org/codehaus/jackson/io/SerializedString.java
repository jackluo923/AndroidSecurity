package org.codehaus.jackson.io;

import org.codehaus.jackson.SerializableString;

public class SerializedString
  implements SerializableString
{
  protected char[] _quotedChars;
  protected byte[] _quotedUTF8Ref;
  protected byte[] _unquotedUTF8Ref;
  protected final String _value;
  
  public SerializedString(String paramString)
  {
    _value = paramString;
  }
  
  public final char[] asQuotedChars()
  {
    char[] arrayOfChar2 = _quotedChars;
    char[] arrayOfChar1 = arrayOfChar2;
    if (arrayOfChar2 == null)
    {
      arrayOfChar1 = JsonStringEncoder.getInstance().quoteAsString(_value);
      _quotedChars = arrayOfChar1;
    }
    return arrayOfChar1;
  }
  
  public final byte[] asQuotedUTF8()
  {
    byte[] arrayOfByte2 = _quotedUTF8Ref;
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null)
    {
      arrayOfByte1 = JsonStringEncoder.getInstance().quoteAsUTF8(_value);
      _quotedUTF8Ref = arrayOfByte1;
    }
    return arrayOfByte1;
  }
  
  public final byte[] asUnquotedUTF8()
  {
    byte[] arrayOfByte2 = _unquotedUTF8Ref;
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null)
    {
      arrayOfByte1 = JsonStringEncoder.getInstance().encodeAsUTF8(_value);
      _unquotedUTF8Ref = arrayOfByte1;
    }
    return arrayOfByte1;
  }
  
  public final int charLength()
  {
    return _value.length();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject == null) || (paramObject.getClass() != getClass())) {
      return false;
    }
    paramObject = (SerializedString)paramObject;
    return _value.equals(_value);
  }
  
  public final String getValue()
  {
    return _value;
  }
  
  public final int hashCode()
  {
    return _value.hashCode();
  }
  
  public final String toString()
  {
    return _value;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.io.SerializedString
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */