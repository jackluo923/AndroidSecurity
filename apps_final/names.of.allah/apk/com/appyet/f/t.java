package com.appyet.f;

final class t
{
  private transient u[] a = new u[20];
  private transient int b;
  private int c = 15;
  private float d = 0.75F;
  
  public t()
  {
    this((byte)0);
  }
  
  private t(byte paramByte) {}
  
  public final Object a(int paramInt, Object paramObject)
  {
    Object localObject2 = a;
    int i = (paramInt & 0x7FFFFFFF) % localObject2.length;
    for (Object localObject1 = localObject2[i]; localObject1 != null; localObject1 = d) {
      if (a == paramInt)
      {
        localObject2 = c;
        c = paramObject;
        return localObject2;
      }
    }
    localObject1 = localObject2;
    if (b >= c)
    {
      i = a.length;
      u[] arrayOfu1 = a;
      int k = i * 2 + 1;
      u[] arrayOfu2 = new u[k];
      c = ((int)(k * d));
      a = arrayOfu2;
      for (;;)
      {
        int j = i - 1;
        if (i <= 0) {
          break;
        }
        for (localObject1 = arrayOfu1[j]; localObject1 != null; localObject1 = localObject2)
        {
          localObject2 = d;
          i = (a & 0x7FFFFFFF) % k;
          d = arrayOfu2[i];
          arrayOfu2[i] = localObject1;
        }
        i = j;
      }
      localObject1 = a;
      i = (paramInt & 0x7FFFFFFF) % localObject1.length;
    }
    localObject1[i] = new u(paramInt, paramInt, paramObject, localObject1[i]);
    b += 1;
    return null;
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */