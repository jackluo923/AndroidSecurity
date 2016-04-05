package org.codehaus.jackson.map.deser.impl;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;

public final class BeanPropertyMap
{
  private final Bucket[] _buckets;
  private final int _hashMask;
  private final int _size;
  
  public BeanPropertyMap(Collection<SettableBeanProperty> paramCollection)
  {
    _size = paramCollection.size();
    int i = findSize(_size);
    _hashMask = (i - 1);
    Bucket[] arrayOfBucket = new Bucket[i];
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      SettableBeanProperty localSettableBeanProperty = (SettableBeanProperty)paramCollection.next();
      String str = localSettableBeanProperty.getName();
      i = str.hashCode() & _hashMask;
      arrayOfBucket[i] = new Bucket(arrayOfBucket[i], str, localSettableBeanProperty);
    }
    _buckets = arrayOfBucket;
  }
  
  private SettableBeanProperty _findWithEquals(String paramString, int paramInt)
  {
    for (Bucket localBucket = _buckets[paramInt]; localBucket != null; localBucket = next) {
      if (paramString.equals(key)) {
        return value;
      }
    }
    return null;
  }
  
  private static final int findSize(int paramInt)
  {
    if (paramInt <= 32) {
      paramInt += paramInt;
    }
    int i;
    for (;;)
    {
      i = 2;
      while (i < paramInt) {
        i += i;
      }
      paramInt += (paramInt >> 2);
    }
    return i;
  }
  
  public Iterator<SettableBeanProperty> allProperties()
  {
    return new IteratorImpl(_buckets);
  }
  
  public void assignIndexes()
  {
    int i = 0;
    Bucket[] arrayOfBucket = _buckets;
    int k = arrayOfBucket.length;
    int j = 0;
    while (j < k)
    {
      Bucket localBucket = arrayOfBucket[j];
      while (localBucket != null)
      {
        value.assignIndex(i);
        localBucket = next;
        i += 1;
      }
      j += 1;
    }
  }
  
  public SettableBeanProperty find(String paramString)
  {
    int i = paramString.hashCode() & _hashMask;
    Bucket localBucket2 = _buckets[i];
    if (localBucket2 == null) {
      return null;
    }
    Bucket localBucket1 = localBucket2;
    if (key == paramString) {
      return value;
    }
    do
    {
      localBucket2 = next;
      if (localBucket2 == null) {
        break;
      }
      localBucket1 = localBucket2;
    } while (key != paramString);
    return value;
    return _findWithEquals(paramString, i);
  }
  
  public void remove(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = paramSettableBeanProperty.getName();
    int j = str.hashCode() & _buckets.length - 1;
    int i = 0;
    Bucket localBucket2 = _buckets[j];
    Bucket localBucket1 = null;
    if (localBucket2 != null)
    {
      if ((i == 0) && (key.equals(str))) {
        i = 1;
      }
      for (;;)
      {
        localBucket2 = next;
        break;
        localBucket1 = new Bucket(localBucket1, key, value);
      }
    }
    if (i == 0) {
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't remove");
    }
    _buckets[j] = localBucket1;
  }
  
  public void replace(SettableBeanProperty paramSettableBeanProperty)
  {
    String str = paramSettableBeanProperty.getName();
    int j = str.hashCode() & _buckets.length - 1;
    int i = 0;
    Bucket localBucket2 = _buckets[j];
    Bucket localBucket1 = null;
    if (localBucket2 != null)
    {
      if ((i == 0) && (key.equals(str))) {
        i = 1;
      }
      for (;;)
      {
        localBucket2 = next;
        break;
        localBucket1 = new Bucket(localBucket1, key, value);
      }
    }
    if (i == 0) {
      throw new NoSuchElementException("No entry '" + paramSettableBeanProperty + "' found, can't replace");
    }
    _buckets[j] = new Bucket(localBucket1, str, paramSettableBeanProperty);
  }
  
  public int size()
  {
    return _size;
  }
  
  private static final class Bucket
  {
    public final String key;
    public final Bucket next;
    public final SettableBeanProperty value;
    
    public Bucket(Bucket paramBucket, String paramString, SettableBeanProperty paramSettableBeanProperty)
    {
      next = paramBucket;
      key = paramString;
      value = paramSettableBeanProperty;
    }
  }
  
  private static final class IteratorImpl
    implements Iterator<SettableBeanProperty>
  {
    private final BeanPropertyMap.Bucket[] _buckets;
    private BeanPropertyMap.Bucket _currentBucket;
    private int _nextBucketIndex;
    
    public IteratorImpl(BeanPropertyMap.Bucket[] paramArrayOfBucket)
    {
      _buckets = paramArrayOfBucket;
      int k = _buckets.length;
      int i = 0;
      int j;
      if (i < k)
      {
        paramArrayOfBucket = _buckets;
        j = i + 1;
        paramArrayOfBucket = paramArrayOfBucket[i];
        if (paramArrayOfBucket != null) {
          _currentBucket = paramArrayOfBucket;
        }
      }
      for (;;)
      {
        _nextBucketIndex = j;
        return;
        i = j;
        break;
        j = i;
      }
    }
    
    public boolean hasNext()
    {
      return _currentBucket != null;
    }
    
    public SettableBeanProperty next()
    {
      BeanPropertyMap.Bucket localBucket = _currentBucket;
      if (localBucket == null) {
        throw new NoSuchElementException();
      }
      int i;
      for (Object localObject = next; (localObject == null) && (_nextBucketIndex < _buckets.length); localObject = localObject[i])
      {
        localObject = _buckets;
        i = _nextBucketIndex;
        _nextBucketIndex = (i + 1);
      }
      _currentBucket = ((BeanPropertyMap.Bucket)localObject);
      return value;
    }
    
    public void remove()
    {
      throw new UnsupportedOperationException();
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.BeanPropertyMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */