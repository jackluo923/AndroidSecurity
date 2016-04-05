package com.google.kagegamesgson;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

final class ModifierBasedExclusionStrategy
  implements ExclusionStrategy
{
  private final Collection modifiers;
  
  public ModifierBasedExclusionStrategy(int[] paramArrayOfInt)
  {
    Object localObject = new java/util/HashSet;
    ((HashSet)localObject).<init>();
    modifiers = ((Collection)localObject);
    if (paramArrayOfInt != null)
    {
      int[] arrayOfInt = paramArrayOfInt;
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        int k = arrayOfInt[i];
        localObject = modifiers;
        Integer localInteger = Integer.valueOf(k);
        ((Collection)localObject).add(localInteger);
        i += 1;
      }
    }
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    boolean bool = false;
    return bool;
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Collection localCollection = modifiers;
    Iterator localIterator = localCollection.iterator();
    do
    {
      bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      this = localIterator.next();
      this = (Integer)this;
      int i = intValue();
      bool = paramFieldAttributes.hasModifier(i);
    } while (!bool);
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.ModifierBasedExclusionStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */