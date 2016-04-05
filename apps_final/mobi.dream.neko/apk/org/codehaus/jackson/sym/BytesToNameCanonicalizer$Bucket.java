package org.codehaus.jackson.sym;

final class BytesToNameCanonicalizer$Bucket
{
  private final int _length;
  protected final Name _name;
  protected final Bucket _next;
  
  BytesToNameCanonicalizer$Bucket(Name paramName, Bucket paramBucket)
  {
    _name = paramName;
    _next = paramBucket;
    if (paramBucket == null) {}
    for (int i = 1;; i = _length + 1)
    {
      _length = i;
      return;
    }
  }
  
  public Name find(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject;
    if ((_name.hashCode() == paramInt1) && (_name.equals(paramInt2, paramInt3)))
    {
      localObject = _name;
      return (Name)localObject;
    }
    for (Bucket localBucket = _next;; localBucket = _next)
    {
      if (localBucket == null) {
        break label83;
      }
      Name localName = _name;
      if (localName.hashCode() == paramInt1)
      {
        localObject = localName;
        if (localName.equals(paramInt2, paramInt3)) {
          break;
        }
      }
    }
    label83:
    return null;
  }
  
  public Name find(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    Object localObject;
    if ((_name.hashCode() == paramInt1) && (_name.equals(paramArrayOfInt, paramInt2)))
    {
      localObject = _name;
      return (Name)localObject;
    }
    for (Bucket localBucket = _next;; localBucket = _next)
    {
      if (localBucket == null) {
        break label83;
      }
      Name localName = _name;
      if (localName.hashCode() == paramInt1)
      {
        localObject = localName;
        if (localName.equals(paramArrayOfInt, paramInt2)) {
          break;
        }
      }
    }
    label83:
    return null;
  }
  
  public int length()
  {
    return _length;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.BytesToNameCanonicalizer.Bucket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */