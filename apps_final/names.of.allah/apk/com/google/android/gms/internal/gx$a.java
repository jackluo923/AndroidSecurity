package com.google.android.gms.internal;

public final class gx$a
{
  public final int FP;
  public final int FQ;
  
  public gx$a(int paramInt1, int paramInt2)
  {
    FP = paramInt1;
    FQ = paramInt2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
      paramObject = (a)paramObject;
    } while ((FP != FP) || (FQ != FQ));
    return true;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(FP), Integer.valueOf(FQ) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gx.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */