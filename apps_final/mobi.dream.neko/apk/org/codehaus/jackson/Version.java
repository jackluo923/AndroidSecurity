package org.codehaus.jackson;

public class Version
  implements Comparable<Version>
{
  private static final Version UNKNOWN_VERSION = new Version(0, 0, 0, null);
  protected final int _majorVersion;
  protected final int _minorVersion;
  protected final int _patchLevel;
  protected final String _snapshotInfo;
  
  public Version(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    _majorVersion = paramInt1;
    _minorVersion = paramInt2;
    _patchLevel = paramInt3;
    _snapshotInfo = paramString;
  }
  
  public static Version unknownVersion()
  {
    return UNKNOWN_VERSION;
  }
  
  public int compareTo(Version paramVersion)
  {
    int j = _majorVersion - _majorVersion;
    int i = j;
    if (j == 0)
    {
      j = _minorVersion - _minorVersion;
      i = j;
      if (j == 0) {
        i = _patchLevel - _patchLevel;
      }
    }
    return i;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (paramObject.getClass() != getClass()) {
        return false;
      }
      paramObject = (Version)paramObject;
    } while ((_majorVersion == _majorVersion) && (_minorVersion == _minorVersion) && (_patchLevel == _patchLevel));
    return false;
  }
  
  public int getMajorVersion()
  {
    return _majorVersion;
  }
  
  public int getMinorVersion()
  {
    return _minorVersion;
  }
  
  public int getPatchLevel()
  {
    return _patchLevel;
  }
  
  public int hashCode()
  {
    return _majorVersion + _minorVersion + _patchLevel;
  }
  
  public boolean isSnapshot()
  {
    return (_snapshotInfo != null) && (_snapshotInfo.length() > 0);
  }
  
  public boolean isUknownVersion()
  {
    return this == UNKNOWN_VERSION;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(_majorVersion).append('.');
    localStringBuilder.append(_minorVersion).append('.');
    localStringBuilder.append(_patchLevel);
    if (isSnapshot()) {
      localStringBuilder.append('-').append(_snapshotInfo);
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.Version
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */