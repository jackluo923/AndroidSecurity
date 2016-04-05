import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class bb<K, V>
  extends LinkedHashMap<K, V>
  implements z<K, V>
{
  private final int a;
  
  bb(int paramInt)
  {
    super(paramInt, f, bool);
    a = paramInt;
  }
  
  public final V a(K paramK)
  {
    Object localObject = get(paramK);
    return (V)localObject;
  }
  
  public final void a(K paramK, V paramV)
  {
    put(paramK, paramV);
  }
  
  public final void clear()
  {
    super.clear();
  }
  
  protected final boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    int i = size();
    int k = a;
    if (i > k) {}
    int j;
    for (i = 1;; j = 0) {
      return i;
    }
  }
  
  public final int size()
  {
    int i = super.size();
    return i;
  }
}

/* Location:
 * Qualified Name:     bb
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */