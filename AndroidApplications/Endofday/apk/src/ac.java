import java.util.Collection;
import java.util.Iterator;

final class ac
  implements ae
{
  private final Collection a;
  
  public ac(Collection<ae> paramCollection)
  {
    bm.a(paramCollection);
    a = paramCollection;
  }
  
  public final boolean a(af paramaf)
  {
    Object localObject = a;
    localObject = ((Collection)localObject).iterator();
    boolean bool2;
    do
    {
      bool2 = ((Iterator)localObject).hasNext();
      if (!bool2) {
        break;
      }
      this = ((Iterator)localObject).next();
      this = (ae)this;
      bool2 = a(paramaf);
    } while (!bool2);
    for (boolean bool1 = true;; bool1 = false) {
      return bool1;
    }
  }
  
  public final boolean a(Class<?> paramClass)
  {
    Object localObject = a;
    localObject = ((Collection)localObject).iterator();
    boolean bool2;
    do
    {
      bool2 = ((Iterator)localObject).hasNext();
      if (!bool2) {
        break;
      }
      this = ((Iterator)localObject).next();
      this = (ae)this;
      bool2 = a(paramClass);
    } while (!bool2);
    for (boolean bool1 = true;; bool1 = false) {
      return bool1;
    }
  }
}

/* Location:
 * Qualified Name:     ac
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */