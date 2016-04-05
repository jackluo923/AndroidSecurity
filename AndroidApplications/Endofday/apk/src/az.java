import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class az
{
  private final ap a;
  private final boolean b;
  
  az(ap paramap, boolean paramBoolean)
  {
    a = paramap;
    b = paramBoolean;
  }
  
  public final void a(ao paramao)
    throws IOException
  {
    ap localap8 = 1;
    int i = 0;
    boolean bool1 = paramao.c();
    if (bool1)
    {
      ap localap1 = a;
      localap1.a();
      return;
    }
    boolean bool2 = paramao.a();
    Object localObject4;
    boolean bool6;
    if (bool2)
    {
      ak localak = paramao.e();
      localObject4 = a;
      ((ap)localObject4).b();
      localObject4 = localak.iterator();
      bool6 = localap8;
      label62:
      boolean bool3 = ((Iterator)localObject4).hasNext();
      if (bool3)
      {
        localObject1 = ((Iterator)localObject4).next();
        localObject1 = (ao)localObject1;
        boolean bool7 = ((ao)localObject1).c();
        if (bool7)
        {
          ap localap2 = a;
          localap2.c(bool6);
          a((ao)localObject1);
          label116:
          if (!bool6) {
            break label557;
          }
        }
      }
    }
    Iterator localIterator;
    label288:
    Object localObject3;
    label385:
    label388:
    label551:
    label557:
    for (Object localObject1 = i;; localObject3 = localIterator)
    {
      bool6 = localObject1;
      break label62;
      boolean bool8 = ((ao)localObject1).a();
      if (bool8)
      {
        localObject1 = ((ao)localObject1).e();
        ap localap3 = a;
        localap3.a(bool6);
        a((ao)localObject1);
        break label116;
      }
      boolean bool9 = ((ao)localObject1).b();
      if (bool9)
      {
        localObject1 = ((ao)localObject1).d();
        localap4 = a;
        localap4.b(bool6);
        a((ao)localObject1);
        break label116;
      }
      ap localap4 = a;
      localObject1 = ((ao)localObject1).f();
      localap4.a((au)localObject1, bool6);
      break label116;
      localObject1 = a;
      ((ap)localObject1).c();
      break;
      boolean bool4 = paramao.b();
      if (bool4)
      {
        Object localObject2 = paramao.d();
        localObject4 = a;
        ((ap)localObject4).d();
        localObject2 = ((at)localObject2).h();
        localIterator = ((Set)localObject2).iterator();
        localap4 = localap8;
        boolean bool5 = localIterator.hasNext();
        if (bool5)
        {
          localObject3 = localIterator.next();
          localObject3 = (Map.Entry)localObject3;
          localObject4 = ((Map.Entry)localObject3).getKey();
          localObject4 = (String)localObject4;
          localObject3 = ((Map.Entry)localObject3).getValue();
          localObject3 = (ao)localObject3;
          boolean bool10 = ((ao)localObject3).c();
          if (bool10)
          {
            bool10 = b;
            if (bool10)
            {
              ap localap5 = a;
              localap5.c((String)localObject4, localap4);
              localObject3 = ((ao)localObject3).g();
              a((ao)localObject3);
              localObject3 = localap8;
              if ((localObject3 == 0) || (localap4 == 0)) {
                break label551;
              }
            }
          }
        }
      }
      for (localObject3 = i;; localObject3 = localap4)
      {
        localap4 = localObject3;
        break label288;
        localObject3 = i;
        break label388;
        boolean bool11 = ((ao)localObject3).a();
        if (bool11)
        {
          localObject3 = ((ao)localObject3).e();
          ap localap6 = a;
          localap6.a((String)localObject4, localap4);
          a((ao)localObject3);
          break label385;
        }
        boolean bool12 = ((ao)localObject3).b();
        if (bool12)
        {
          localObject3 = ((ao)localObject3).d();
          localap7 = a;
          localap7.b((String)localObject4, localap4);
          a((ao)localObject3);
          break label385;
        }
        ap localap7 = a;
        localObject3 = ((ao)localObject3).f();
        localap7.a((String)localObject4, (au)localObject3, localap4);
        break label385;
        localObject3 = a;
        ((ap)localObject3).e();
        break;
        localObject3 = a;
        localObject4 = paramao.f();
        ((ap)localObject3).a((au)localObject4);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     az
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */