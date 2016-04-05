import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class at
  extends ao
{
  private final Map a;
  
  public at()
  {
    LinkedHashMap localLinkedHashMap = new java/util/LinkedHashMap;
    localLinkedHashMap.<init>();
    a = localLinkedHashMap;
  }
  
  protected final void a(Appendable paramAppendable, ad paramad)
    throws IOException
  {
    int i = 123;
    paramAppendable.append(i);
    i = 1;
    Object localObject2 = a;
    localObject2 = ((Map)localObject2).entrySet();
    localObject2 = ((Set)localObject2).iterator();
    boolean bool = ((Iterator)localObject2).hasNext();
    if (bool)
    {
      this = ((Iterator)localObject2).next();
      this = (Map.Entry)this;
      if (i != 0) {
        i = 0;
      }
      Object localObject1;
      char c2;
      for (bool = i;; c2 = localObject1)
      {
        i = 34;
        paramAppendable.append(i);
        localObject1 = getKey();
        localObject1 = (CharSequence)localObject1;
        paramAppendable.append((CharSequence)localObject1);
        localObject1 = "\":";
        paramAppendable.append((CharSequence)localObject1);
        this = getValue();
        this = (ao)this;
        a(paramAppendable, paramad);
        localObject1 = bool;
        break;
        c2 = ',';
        paramAppendable.append(c2);
      }
    }
    char c1 = '}';
    paramAppendable.append(c1);
  }
  
  public final void a(String paramString, ao paramao)
  {
    Object localObject;
    if (paramString != null)
    {
      String str = "";
      localObject = paramString.trim();
      boolean bool = str.equals(localObject);
      if (!bool)
      {
        bool = true;
        bm.a(bool);
        if (paramao != null) {
          break label61;
        }
      }
    }
    label61:
    ao localao;
    for (as localas = as.h();; localao = paramao)
    {
      localObject = a;
      ((Map)localObject).put(paramString, localas);
      return;
      int i = 0;
      break;
    }
  }
  
  public final void a(String paramString, Number paramNumber)
  {
    Object localObject;
    if (paramNumber == null) {
      localObject = as.h();
    }
    for (;;)
    {
      a(paramString, (ao)localObject);
      return;
      localObject = new au;
      ((au)localObject).<init>(paramNumber);
    }
  }
  
  public final Set<Map.Entry<String, ao>> h()
  {
    Object localObject = a;
    localObject = ((Map)localObject).entrySet();
    return (Set<Map.Entry<String, ao>>)localObject;
  }
}

/* Location:
 * Qualified Name:     at
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */