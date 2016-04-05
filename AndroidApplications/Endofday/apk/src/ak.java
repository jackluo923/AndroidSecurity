import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ak
  extends ao
  implements Iterable<ao>
{
  private final List a;
  
  public ak()
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    a = localArrayList;
  }
  
  public final void a(ao paramao)
  {
    if (paramao == null) {}
    for (Object localObject = as.h();; localObject = paramao)
    {
      List localList = a;
      localList.add(localObject);
      return;
    }
  }
  
  protected final void a(Appendable paramAppendable, ad paramad)
    throws IOException
  {
    char c1 = '[';
    paramAppendable.append(c1);
    c1 = '\001';
    Object localObject = a;
    localObject = ((List)localObject).iterator();
    boolean bool = ((Iterator)localObject).hasNext();
    if (bool)
    {
      this = ((Iterator)localObject).next();
      this = (ao)this;
      if (c1 != 0) {
        c1 = '\000';
      }
      for (;;)
      {
        a(paramAppendable, paramad);
        break;
        char c2 = ',';
        paramAppendable.append(c2);
      }
    }
    c1 = ']';
    paramAppendable.append(c1);
  }
  
  public final Iterator<ao> iterator()
  {
    Object localObject = a;
    localObject = ((List)localObject).iterator();
    return (Iterator<ao>)localObject;
  }
}

/* Location:
 * Qualified Name:     ak
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */