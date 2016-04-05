package com.google.kagegamesgson;

import java.util.Collection;
import java.util.Iterator;

final class DisjunctionExclusionStrategy
  implements ExclusionStrategy
{
  private final Collection strategies;
  
  public DisjunctionExclusionStrategy(Collection<ExclusionStrategy> paramCollection)
  {
    Preconditions.checkNotNull(paramCollection);
    strategies = paramCollection;
  }
  
  public boolean shouldSkipClass(Class<?> paramClass)
  {
    Collection localCollection = strategies;
    Iterator localIterator = localCollection.iterator();
    do
    {
      bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      Object localObject = localIterator.next();
      localObject = (ExclusionStrategy)localObject;
      bool = ((ExclusionStrategy)localObject).shouldSkipClass(paramClass);
    } while (!bool);
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean shouldSkipField(FieldAttributes paramFieldAttributes)
  {
    Collection localCollection = strategies;
    Iterator localIterator = localCollection.iterator();
    do
    {
      bool = localIterator.hasNext();
      if (!bool) {
        break;
      }
      Object localObject = localIterator.next();
      localObject = (ExclusionStrategy)localObject;
      bool = ((ExclusionStrategy)localObject).shouldSkipField(paramFieldAttributes);
    } while (!bool);
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DisjunctionExclusionStrategy
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */