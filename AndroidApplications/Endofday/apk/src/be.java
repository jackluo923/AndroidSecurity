import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

final class be
  implements ae
{
  private final Collection a;
  
  public be(int[] paramArrayOfInt)
  {
    HashSet localHashSet = new java/util/HashSet;
    localHashSet.<init>();
    a = localHashSet;
    if (paramArrayOfInt != null)
    {
      int i = paramArrayOfInt.length;
      int j = 0;
      while (j < i)
      {
        int k = paramArrayOfInt[j];
        Collection localCollection = a;
        Integer localInteger = Integer.valueOf(k);
        localCollection.add(localInteger);
        j += 1;
      }
    }
  }
  
  public final boolean a(af paramaf)
  {
    Object localObject = a;
    localObject = ((Collection)localObject).iterator();
    boolean bool3;
    do
    {
      boolean bool2 = ((Iterator)localObject).hasNext();
      if (!bool2) {
        break;
      }
      this = ((Iterator)localObject).next();
      this = (Integer)this;
      int i = intValue();
      bool3 = paramaf.a(i);
    } while (!bool3);
    for (boolean bool1 = true;; bool1 = false) {
      return bool1;
    }
  }
  
  public final boolean a(Class<?> paramClass)
  {
    boolean bool = false;
    return bool;
  }
}

/* Location:
 * Qualified Name:     be
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */