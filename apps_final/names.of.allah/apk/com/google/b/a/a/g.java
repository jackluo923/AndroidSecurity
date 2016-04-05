package com.google.b.a.a;

import java.io.IOException;

public final class g
  extends IOException
{
  private g(String paramString)
  {
    super(paramString);
  }
  
  static g a()
  {
    return new g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
  }
  
  static g b()
  {
    return new g("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
  }
  
  static g c()
  {
    return new g("CodedInputStream encountered a malformed varint.");
  }
  
  static g d()
  {
    return new g("Protocol message contained an invalid tag (zero).");
  }
  
  static g e()
  {
    return new g("Protocol message end-group tag did not match expected tag.");
  }
  
  static g f()
  {
    return new g("Protocol message tag had invalid wire type.");
  }
  
  static g g()
  {
    return new g("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
  }
}

/* Location:
 * Qualified Name:     com.google.b.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */