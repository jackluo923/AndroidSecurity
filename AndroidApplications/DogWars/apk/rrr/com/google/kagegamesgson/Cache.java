package com.google.kagegamesgson;

abstract interface Cache<K, V>
{
  public abstract void addElement(K paramK, V paramV);
  
  public abstract void clear();
  
  public abstract V getElement(K paramK);
  
  public abstract V removeElement(K paramK);
  
  public abstract int size();
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.Cache
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */