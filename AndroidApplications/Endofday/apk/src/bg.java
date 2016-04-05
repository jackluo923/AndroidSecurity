import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Type;

final class bg
{
  private final ae a;
  private final bi b;
  
  bg(bi parambi, ae paramae)
  {
    bm.a(paramae);
    b = parambi;
    a = paramae;
  }
  
  public final void a(bg.a parama)
  {
    boolean bool6 = true;
    int k = 0;
    Object localObject1 = new br;
    Object localObject4 = b;
    localObject4 = a;
    ((br)localObject1).<init>((Type)localObject4);
    localObject4 = a;
    Object localObject6 = ((br)localObject1).b();
    boolean bool2 = ((ae)localObject4).a((Class)localObject6);
    if (bool2) {}
    Object localObject5;
    do
    {
      boolean bool3;
      do
      {
        return;
        bi localbi = b;
        bool3 = parama.c(localbi);
      } while (bool3);
      localObject5 = b;
      localObject5 = ((bi)localObject5).a();
      if (localObject5 == null) {
        localObject5 = null;
      }
    } while (localObject5 == null);
    localObject6 = b;
    ((bi)localObject6).a(localObject5);
    localObject6 = b;
    parama.a((bi)localObject6);
    label244:
    label250:
    label502:
    label522:
    for (;;)
    {
      try
      {
        boolean bool4 = ((br)localObject1).c();
        if (bool4)
        {
          localObject1 = b;
          localObject1 = a;
          parama.a(localObject5, (Type)localObject1);
          localObject1 = b;
          parama.b((bi)localObject1);
          break;
        }
        localObject1 = ((br)localObject1).a();
        localObject7 = Object.class;
        if (localObject1 != localObject7) {
          break label250;
        }
        localObject1 = localObject5.getClass();
        localObject7 = Object.class;
        if (localObject1 != localObject7)
        {
          localObject7 = String.class;
          if (localObject1 != localObject7)
          {
            localObject1 = bn.a((Class)localObject1);
            bool1 = ((Class)localObject1).isPrimitive();
            if (!bool1) {
              break label244;
            }
          }
        }
        boolean bool1 = bool6;
        if (!bool1) {
          break label250;
        }
        parama.a(localObject5);
        continue;
        localObject2 = k;
      }
      finally
      {
        localObject5 = b;
        parama.b((bi)localObject5);
      }
      continue;
      parama.a();
      Object localObject3 = b;
      localObject3 = ((bi)localObject3).b();
      Object localObject7 = new br;
      localObject3 = a;
      ((br)localObject7).<init>((Type)localObject3);
      for (localObject3 = ((br)localObject7).b();; localObject3 = ((Class)localObject3).getSuperclass())
      {
        if (localObject3 == null) {
          break label522;
        }
        localObject7 = Object.class;
        boolean bool5 = localObject3.equals(localObject7);
        if (bool5) {
          break;
        }
        bool5 = ((Class)localObject3).isSynthetic();
        if (!bool5)
        {
          Field[] arrayOfField = ((Class)localObject3).getDeclaredFields();
          bool6 = true;
          AccessibleObject.setAccessible(arrayOfField, bool6);
          int i = arrayOfField.length;
          int j = k;
          if (j < i)
          {
            Object localObject8 = arrayOfField[j];
            af localaf = new af;
            localaf.<init>((Class)localObject3, (Field)localObject8);
            ae localae1 = a;
            boolean bool8 = localae1.a(localaf);
            Object localObject9;
            if (!bool8)
            {
              ae localae2 = a;
              Class localClass = localaf.c();
              boolean bool9 = localae2.a(localClass);
              if (!bool9)
              {
                localObject9 = b;
                localObject9 = a;
                localObject8 = bu.a((Field)localObject8, (Type)localObject9);
                localObject9 = ((br)localObject8).a();
                boolean bool10 = parama.c(localaf, (Type)localObject9, localObject5);
                if (!bool10)
                {
                  boolean bool7 = ((br)localObject8).c();
                  if (!bool7) {
                    break label502;
                  }
                  parama.a(localaf, (Type)localObject9, localObject5);
                }
              }
            }
            for (;;)
            {
              j += 1;
              break;
              parama.b(localaf, (Type)localObject9, localObject5);
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bg
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */