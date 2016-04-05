import java.io.UnsupportedEncodingException;

public class v
{
  static final boolean a = false;
  
  static
  {
    Class localClass = v.class;
    boolean bool = localClass.desiredAssertionStatus();
    if (!bool) {}
    for (bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    int i3 = 1;
    for (;;)
    {
      int k;
      int i2;
      try
      {
        Object localObject1 = new java/lang/String;
        int i = paramArrayOfByte.length;
        localObject3 = new v$b;
        ((v.b)localObject3).<init>();
        k = i / 3;
        k *= 4;
        boolean bool2 = d;
        if (bool2)
        {
          int m = i % 3;
          if (m > 0) {
            k += 4;
          }
          boolean bool3 = e;
          if ((bool3) && (i > 0))
          {
            int n = i - i3;
            n /= 57;
            n += 1;
            boolean bool4 = f;
            if (!bool4) {
              break label233;
            }
            i2 = 2;
            n *= i2;
            k += n;
          }
          byte[] arrayOfByte = new byte[k];
          a = arrayOfByte;
          ((v.b)localObject3).a(paramArrayOfByte, i);
          boolean bool1 = a;
          if (bool1) {
            break;
          }
          int j = b;
          if (j == k) {
            break;
          }
          localObject1 = new java/lang/AssertionError;
          ((AssertionError)localObject1).<init>();
          throw ((Throwable)localObject1);
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localObject2 = new java/lang/AssertionError;
        ((AssertionError)localObject2).<init>(localUnsupportedEncodingException);
        throw ((Throwable)localObject2);
      }
      int i1 = localObject2 % 3;
      switch (i1)
      {
      case 0: 
      default: 
        break;
      case 1: 
        k += 2;
        break;
      case 2: 
        k += 3;
        continue;
        label233:
        i2 = i3;
      }
    }
    Object localObject2 = a;
    Object localObject3 = "US-ASCII";
    localUnsupportedEncodingException.<init>((byte[])localObject2, (String)localObject3);
    return localUnsupportedEncodingException;
  }
}

/* Location:
 * Qualified Name:     v
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */