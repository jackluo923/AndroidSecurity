import android.os.SystemClock;
import java.util.LinkedList;

public final class f
{
  private static long e = 0L;
  private LinkedList a;
  private long b;
  private long c;
  private LinkedList d;
  private String f;
  private boolean g;
  private boolean h;
  private String i;
  
  static
  {
    long l = 0L;
    e = l;
  }
  
  f()
  {
    g = bool;
    h = bool;
    LinkedList localLinkedList = new java/util/LinkedList;
    localLinkedList.<init>();
    a = localLinkedList;
    localLinkedList = new java/util/LinkedList;
    localLinkedList.<init>();
    d = localLinkedList;
    a();
  }
  
  final void a()
  {
    long l = 0L;
    boolean bool = false;
    LinkedList localLinkedList = a;
    localLinkedList.clear();
    b = l;
    c = l;
    localLinkedList = d;
    localLinkedList.clear();
    localLinkedList = null;
    f = localLinkedList;
    g = bool;
    h = bool;
  }
  
  final void a(String paramString)
  {
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Prior ad identifier = ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    t.d((String)localObject);
    f = paramString;
  }
  
  final void b()
  {
    Object localObject = "Ad clicked.";
    t.d((String)localObject);
    localObject = a;
    long l = SystemClock.elapsedRealtime();
    Long localLong = Long.valueOf(l);
    ((LinkedList)localObject).add(localLong);
  }
  
  public final void b(String paramString)
  {
    Object localObject = new java/lang/StringBuilder;
    ((StringBuilder)localObject).<init>();
    String str = "Prior impression ticket = ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    localObject = ((StringBuilder)localObject).toString();
    t.d((String)localObject);
    i = paramString;
  }
  
  final void c()
  {
    String str = "Ad request loaded.";
    t.d(str);
    long l = SystemClock.elapsedRealtime();
    b = l;
  }
  
  final void d()
  {
    String str = "Ad request started.";
    t.d(str);
    long l1 = SystemClock.elapsedRealtime();
    c = l1;
    l1 = e;
    long l2 = 1L;
    l1 += l2;
    e = l1;
  }
  
  final long e()
  {
    LinkedList localLinkedList1 = a;
    int j = localLinkedList1.size();
    LinkedList localLinkedList3 = d;
    int m = localLinkedList3.size();
    if (j != m) {}
    int k;
    long l2;
    for (long l1 = 4294967295L;; l2 = k)
    {
      return l1;
      LinkedList localLinkedList2 = a;
      k = localLinkedList2.size();
    }
  }
  
  final String f()
  {
    LinkedList localLinkedList1 = a;
    boolean bool = localLinkedList1.isEmpty();
    if (!bool)
    {
      LinkedList localLinkedList2 = a;
      int j = localLinkedList2.size();
      LinkedList localLinkedList4 = d;
      int i1 = localLinkedList4.size();
      if (j == i1) {
        break label44;
      }
    }
    label44:
    StringBuilder localStringBuilder;
    String str2;
    for (String str1 = null;; str2 = localStringBuilder.toString())
    {
      return str1;
      localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      int k = 0;
      int n;
      for (int i2 = k;; i2 = n)
      {
        LinkedList localLinkedList3 = a;
        int m = localLinkedList3.size();
        if (i2 >= m) {
          break;
        }
        if (i2 != 0)
        {
          localObject = ",";
          localStringBuilder.append((String)localObject);
        }
        Object localObject = d;
        localObject = ((LinkedList)localObject).get(i2);
        localObject = (Long)localObject;
        long l1 = ((Long)localObject).longValue();
        localObject = a;
        localObject = ((LinkedList)localObject).get(i2);
        localObject = (Long)localObject;
        long l2 = ((Long)localObject).longValue();
        l1 -= l2;
        localObject = Long.toString(l1);
        localStringBuilder.append((String)localObject);
        n = i2 + 1;
      }
    }
  }
  
  final String g()
  {
    LinkedList localLinkedList1 = a;
    boolean bool = localLinkedList1.isEmpty();
    if (bool) {}
    StringBuilder localStringBuilder;
    String str2;
    for (String str1 = null;; str2 = localStringBuilder.toString())
    {
      return str1;
      localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      int j = 0;
      int m;
      for (int n = j;; n = m)
      {
        LinkedList localLinkedList2 = a;
        int k = localLinkedList2.size();
        if (n >= k) {
          break;
        }
        if (n != 0)
        {
          localObject = ",";
          localStringBuilder.append((String)localObject);
        }
        Object localObject = a;
        localObject = ((LinkedList)localObject).get(n);
        localObject = (Long)localObject;
        long l1 = ((Long)localObject).longValue();
        long l2 = b;
        l1 -= l2;
        localObject = Long.toString(l1);
        localStringBuilder.append((String)localObject);
        m = n + 1;
      }
    }
  }
  
  final long h()
  {
    long l1 = b;
    long l2 = c;
    l1 -= l2;
    return l1;
  }
  
  static long i()
  {
    long l = e;
    return l;
  }
  
  final String j()
  {
    String str = f;
    return str;
  }
  
  final boolean k()
  {
    boolean bool = g;
    return bool;
  }
  
  final void l()
  {
    String str = "Interstitial network error.";
    t.d(str);
    boolean bool = true;
    g = bool;
  }
  
  final boolean m()
  {
    boolean bool = h;
    return bool;
  }
  
  final void n()
  {
    String str = "Interstitial no fill.";
    t.d(str);
    boolean bool = true;
    h = bool;
  }
  
  public final void o()
  {
    Object localObject = "Landing page dismissed.";
    t.d((String)localObject);
    localObject = d;
    long l = SystemClock.elapsedRealtime();
    Long localLong = Long.valueOf(l);
    ((LinkedList)localObject).add(localLong);
  }
  
  final String p()
  {
    String str = i;
    return str;
  }
}

/* Location:
 * Qualified Name:     f
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */