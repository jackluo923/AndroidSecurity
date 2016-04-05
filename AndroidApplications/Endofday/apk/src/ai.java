import java.io.IOException;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

public final class ai
{
  static final y a;
  static final bq b;
  static final be c;
  static final ar d;
  static final ag e;
  private static final ae f;
  private final ae g;
  private final ae h;
  private final ag i;
  private final bc j;
  private final bk k;
  private final bk l;
  private final ar m;
  private final boolean n;
  private final boolean o;
  
  static
  {
    Object localObject1 = new y;
    ((y)localObject1).<init>();
    a = (y)localObject1;
    localObject1 = new bq;
    ((bq)localObject1).<init>();
    b = (bq)localObject1;
    localObject1 = new be;
    int i1 = 2;
    int[] arrayOfInt = new int[i1];
    arrayOfInt[0] = 128;
    arrayOfInt[1] = 8;
    ((be)localObject1).<init>(arrayOfInt);
    c = (be)localObject1;
    localObject1 = new al;
    byte b1 = 0;
    ((al)localObject1).<init>(b1);
    d = (ar)localObject1;
    localObject1 = new bp;
    Object localObject2 = new aj;
    ((aj)localObject2).<init>();
    ((bp)localObject1).<init>((ag)localObject2);
    e = (ag)localObject1;
    localObject1 = new java/util/LinkedList;
    ((LinkedList)localObject1).<init>();
    localObject2 = a;
    ((List)localObject1).add(localObject2);
    localObject2 = b;
    ((List)localObject1).add(localObject2);
    localObject2 = c;
    ((List)localObject1).add(localObject2);
    localObject2 = new ac;
    ((ac)localObject2).<init>((Collection)localObject1);
    f = (ae)localObject2;
  }
  
  public ai() {}
  
  private ai(ae paramae1, ae paramae2, ag paramag, bc parambc, ar paramar, bk<ay<?>> parambk, bk<am<?>> parambk1)
  {
    g = paramae1;
    h = paramae2;
    i = paramag;
    j = parambc;
    m = paramar;
    n = bool;
    k = parambk;
    l = parambk1;
    o = bool;
  }
  
  public final String a(Object paramObject)
  {
    if (paramObject == null)
    {
      boolean bool1 = n;
      if (bool1) {}
      for (localObject1 = "null";; localObject1 = "") {
        return (String)localObject1;
      }
    }
    Object localObject1 = paramObject.getClass();
    localObject2 = new java/io/StringWriter;
    ((StringWriter)localObject2).<init>();
    if (paramObject == null) {}
    for (localObject1 = as.h();; localObject1 = ((aw)localObject3).b(paramObject, (Type)localObject1))
    {
      try
      {
        boolean bool2 = o;
        if (bool2)
        {
          String str = ")]}'\n";
          ((Appendable)localObject2).append(str);
        }
        if (localObject1 == null)
        {
          boolean bool3 = n;
          if (bool3)
          {
            localObject3 = "null";
            ((Appendable)localObject2).append((CharSequence)localObject3);
          }
        }
        localObject3 = m;
        boolean bool4 = n;
        ((ar)localObject3).a((ao)localObject1, (Appendable)localObject2, bool4);
        localObject1 = ((StringWriter)localObject2).toString();
      }
      catch (IOException localIOException)
      {
        Object localObject3;
        ae localae;
        bh localbh;
        Object localObject4;
        boolean bool5;
        localObject2 = new java/lang/RuntimeException;
        ((RuntimeException)localObject2).<init>(localIOException);
        throw ((Throwable)localObject2);
      }
      localObject3 = new aw;
      localae = g;
      localbh = new bh;
      localObject4 = i;
      localbh.<init>(localae, (ag)localObject4);
      bool5 = n;
      localObject4 = k;
      ((aw)localObject3).<init>(localbh, bool5, (bk)localObject4);
    }
  }
  
  public final String toString()
  {
    Object localObject1 = new java/lang/StringBuilder;
    String str = "{";
    ((StringBuilder)localObject1).<init>(str);
    str = "serializeNulls:";
    localObject1 = ((StringBuilder)localObject1).append(str);
    boolean bool = n;
    localObject1 = ((StringBuilder)localObject1).append(bool);
    Object localObject2 = ",serializers:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = k;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = ",deserializers:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = l;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = ",instanceCreators:";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject2 = j;
    localObject1 = ((StringBuilder)localObject1).append(localObject2);
    localObject2 = "}";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    return (String)localObject1;
  }
}

/* Location:
 * Qualified Name:     ai
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */