package com.google.android.gms.tagmanager;

class dg
  extends Number
  implements Comparable<dg>
{
  private double aih;
  private long aii;
  private boolean aij;
  
  private dg(double paramDouble)
  {
    aih = paramDouble;
    aij = false;
  }
  
  private dg(long paramLong)
  {
    aii = paramLong;
    aij = true;
  }
  
  public static dg a(Double paramDouble)
  {
    return new dg(paramDouble.doubleValue());
  }
  
  public static dg co(String paramString)
  {
    try
    {
      dg localdg1 = new dg(Long.parseLong(paramString));
      return localdg1;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        dg localdg2 = new dg(Double.parseDouble(paramString));
        return localdg2;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        throw new NumberFormatException(paramString + " is not a valid TypedNumber");
      }
    }
  }
  
  public static dg z(long paramLong)
  {
    return new dg(paramLong);
  }
  
  public int a(dg paramdg)
  {
    if ((mO()) && (paramdg.mO())) {
      return new Long(aii).compareTo(Long.valueOf(aii));
    }
    return Double.compare(doubleValue(), paramdg.doubleValue());
  }
  
  public byte byteValue()
  {
    return (byte)(int)longValue();
  }
  
  public double doubleValue()
  {
    if (mO()) {
      return aii;
    }
    return aih;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof dg)) && (a((dg)paramObject) == 0);
  }
  
  public float floatValue()
  {
    return (float)doubleValue();
  }
  
  public int hashCode()
  {
    return new Long(longValue()).hashCode();
  }
  
  public int intValue()
  {
    return mQ();
  }
  
  public long longValue()
  {
    return mP();
  }
  
  public boolean mN()
  {
    return !mO();
  }
  
  public boolean mO()
  {
    return aij;
  }
  
  public long mP()
  {
    if (mO()) {
      return aii;
    }
    return aih;
  }
  
  public int mQ()
  {
    return (int)longValue();
  }
  
  public short mR()
  {
    return (short)(int)longValue();
  }
  
  public short shortValue()
  {
    return mR();
  }
  
  public String toString()
  {
    if (mO()) {
      return Long.toString(aii);
    }
    return Double.toString(aih);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */