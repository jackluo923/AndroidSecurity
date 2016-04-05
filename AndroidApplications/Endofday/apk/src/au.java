import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class au
  extends ao
{
  private static final Class[] a;
  private static final BigInteger b;
  private static final BigInteger c;
  private Object d;
  
  static
  {
    int i = 16;
    Class[] arrayOfClass = new Class[i];
    int j = 0;
    Class localClass = Integer.TYPE;
    arrayOfClass[j] = localClass;
    j = 1;
    localClass = Long.TYPE;
    arrayOfClass[j] = localClass;
    j = 2;
    localClass = Short.TYPE;
    arrayOfClass[j] = localClass;
    j = 3;
    localClass = Float.TYPE;
    arrayOfClass[j] = localClass;
    j = 4;
    localClass = Double.TYPE;
    arrayOfClass[j] = localClass;
    j = 5;
    localClass = Byte.TYPE;
    arrayOfClass[j] = localClass;
    j = 6;
    localClass = Boolean.TYPE;
    arrayOfClass[j] = localClass;
    j = 7;
    localClass = Character.TYPE;
    arrayOfClass[j] = localClass;
    j = 8;
    localClass = Integer.class;
    arrayOfClass[j] = localClass;
    j = 9;
    localClass = Long.class;
    arrayOfClass[j] = localClass;
    j = 10;
    localClass = Short.class;
    arrayOfClass[j] = localClass;
    j = 11;
    localClass = Float.class;
    arrayOfClass[j] = localClass;
    j = 12;
    localClass = Double.class;
    arrayOfClass[j] = localClass;
    j = 13;
    localClass = Byte.class;
    arrayOfClass[j] = localClass;
    j = 14;
    localClass = Boolean.class;
    arrayOfClass[j] = localClass;
    j = 15;
    localClass = Character.class;
    arrayOfClass[j] = localClass;
    a = arrayOfClass;
    long l1 = 2147483647L;
    BigInteger localBigInteger1 = BigInteger.valueOf(l1);
    b = localBigInteger1;
    long l2 = Long.MAX_VALUE;
    BigInteger localBigInteger2 = BigInteger.valueOf(l2);
    c = localBigInteger2;
  }
  
  public au(Boolean paramBoolean)
  {
    a(paramBoolean);
  }
  
  public au(Character paramCharacter)
  {
    a(paramCharacter);
  }
  
  public au(Number paramNumber)
  {
    a(paramNumber);
  }
  
  au(Object paramObject)
  {
    a(paramObject);
  }
  
  public au(String paramString)
  {
    a(paramString);
  }
  
  protected final void a(Appendable paramAppendable, ad paramad)
    throws IOException
  {
    char c1 = '"';
    Object localObject1 = d;
    boolean bool = localObject1 instanceof String;
    Object localObject2;
    if (bool)
    {
      paramAppendable.append(c1);
      localObject2 = d;
      localObject2 = localObject2.toString();
      localObject2 = paramad.a((CharSequence)localObject2);
      paramAppendable.append((CharSequence)localObject2);
      paramAppendable.append(c1);
    }
    for (;;)
    {
      return;
      localObject2 = d;
      localObject2 = localObject2.toString();
      paramAppendable.append((CharSequence)localObject2);
    }
  }
  
  private void a(Object paramObject)
  {
    Class localClass4 = 1;
    Class localClass3 = 0;
    boolean bool1 = paramObject instanceof Character;
    if (bool1)
    {
      paramObject = (Character)paramObject;
      char c1 = ((Character)paramObject).charValue();
      String str = String.valueOf(c1);
      d = str;
      return;
    }
    boolean bool2 = paramObject instanceof Number;
    if (!bool2)
    {
      bool2 = paramObject instanceof String;
      if (!bool2) {
        break label77;
      }
      bool2 = localClass4;
      label58:
      if (!bool2) {
        break label141;
      }
    }
    label77:
    Class localClass1;
    label135:
    label141:
    for (bool2 = localClass4;; localClass1 = localClass3)
    {
      bm.a(bool2);
      d = paramObject;
      break;
      localClass1 = paramObject.getClass();
      Class[] arrayOfClass = a;
      int i = arrayOfClass.length;
      int j = localClass3;
      for (;;)
      {
        if (j >= i) {
          break label135;
        }
        Class localClass2 = arrayOfClass[j];
        boolean bool3 = localClass2.isAssignableFrom(localClass1);
        if (bool3)
        {
          localClass1 = localClass4;
          break;
        }
        j += 1;
      }
      localClass1 = localClass3;
      break label58;
    }
  }
  
  private static boolean a(au paramau)
  {
    boolean bool2 = false;
    Object localObject = d;
    boolean bool1 = localObject instanceof Number;
    if (bool1)
    {
      paramau = d;
      paramau = (Number)paramau;
      bool1 = paramau instanceof BigInteger;
      if (!bool1)
      {
        bool1 = paramau instanceof Long;
        if (!bool1)
        {
          bool1 = paramau instanceof Integer;
          if (!bool1)
          {
            bool1 = paramau instanceof Short;
            if (!bool1)
            {
              bool1 = paramau instanceof Byte;
              if (!bool1) {
                break label76;
              }
            }
          }
        }
      }
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      label76:
      bool1 = bool2;
      continue;
      bool1 = bool2;
    }
  }
  
  private static boolean b(au paramau)
  {
    boolean bool2 = false;
    Object localObject = d;
    boolean bool1 = localObject instanceof Number;
    if (bool1)
    {
      paramau = d;
      paramau = (Number)paramau;
      bool1 = paramau instanceof BigDecimal;
      if (!bool1)
      {
        bool1 = paramau instanceof Double;
        if (!bool1)
        {
          bool1 = paramau instanceof Float;
          if (!bool1) {
            break label58;
          }
        }
      }
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      label58:
      bool1 = bool2;
      continue;
      bool1 = bool2;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool7 = true;
    boolean bool6 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = bool7;
    }
    for (;;)
    {
      return bool1;
      Object localObject3;
      if (paramObject != null)
      {
        localObject1 = getClass();
        localObject3 = paramObject.getClass();
        if (localObject1 == localObject3) {}
      }
      else
      {
        localObject1 = bool6;
        continue;
      }
      paramObject = (au)paramObject;
      Object localObject1 = d;
      if (localObject1 == null)
      {
        localObject1 = d;
        if (localObject1 == null) {
          localObject1 = bool7;
        } else {
          localObject1 = bool6;
        }
      }
      else
      {
        boolean bool2 = a(this);
        if (bool2)
        {
          bool2 = a((au)paramObject);
          if (bool2)
          {
            this = d;
            this = (Number)this;
            long l1 = longValue();
            this = d;
            this = (Number)this;
            long l2 = longValue();
            bool3 = l1 < l2;
            if (!bool3)
            {
              bool3 = bool7;
              continue;
            }
            bool3 = bool6;
            continue;
          }
        }
        boolean bool3 = b(this);
        if (bool3)
        {
          bool3 = b((au)paramObject);
          if (bool3)
          {
            this = d;
            this = (Number)this;
            double d1 = doubleValue();
            this = d;
            this = (Number)this;
            double d2 = doubleValue();
            boolean bool4 = d1 < d2;
            if (!bool4)
            {
              bool4 = bool7;
              continue;
            }
            bool4 = bool6;
            continue;
          }
        }
        Object localObject2 = d;
        localObject3 = d;
        boolean bool5 = localObject2.equals(localObject3);
      }
    }
  }
  
  public final int hashCode()
  {
    int n = 32;
    Object localObject1 = d;
    int i;
    if (localObject1 == null) {
      i = 31;
    }
    for (;;)
    {
      return i;
      boolean bool1 = a(this);
      long l3;
      if (bool1)
      {
        this = d;
        this = (Number)this;
        long l1 = longValue();
        l3 = l1 >>> n;
        l1 ^= l3;
        int j = (int)l1;
      }
      else
      {
        boolean bool2 = b(this);
        if (bool2)
        {
          this = d;
          this = (Number)this;
          double d1 = doubleValue();
          long l2 = Double.doubleToLongBits(d1);
          l3 = l2 >>> l3;
          l2 ^= l3;
          int k = (int)l2;
        }
        else
        {
          Object localObject2 = d;
          int m = localObject2.hashCode();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     au
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */