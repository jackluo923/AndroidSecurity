package org.codehaus.jackson.sym;

import java.util.Arrays;
import org.codehaus.jackson.util.InternCache;

public final class CharsToNameCanonicalizer
{
  protected static final int DEFAULT_TABLE_SIZE = 64;
  public static final int HASH_MULT = 33;
  static final int MAX_COLL_CHAIN_FOR_REUSE = 63;
  static final int MAX_COLL_CHAIN_LENGTH = 255;
  static final int MAX_ENTRIES_FOR_REUSE = 12000;
  protected static final int MAX_TABLE_SIZE = 65536;
  static final CharsToNameCanonicalizer sBootstrapSymbolTable = new CharsToNameCanonicalizer();
  protected Bucket[] _buckets;
  protected final boolean _canonicalize;
  protected boolean _dirty;
  private final int _hashSeed;
  protected int _indexMask;
  protected final boolean _intern;
  protected int _longestCollisionList;
  protected CharsToNameCanonicalizer _parent;
  protected int _size;
  protected int _sizeThreshold;
  protected String[] _symbols;
  
  private CharsToNameCanonicalizer()
  {
    _canonicalize = true;
    _intern = true;
    _dirty = true;
    _hashSeed = 0;
    _longestCollisionList = 0;
    initTables(64);
  }
  
  private CharsToNameCanonicalizer(CharsToNameCanonicalizer paramCharsToNameCanonicalizer, boolean paramBoolean1, boolean paramBoolean2, String[] paramArrayOfString, Bucket[] paramArrayOfBucket, int paramInt1, int paramInt2, int paramInt3)
  {
    _parent = paramCharsToNameCanonicalizer;
    _canonicalize = paramBoolean1;
    _intern = paramBoolean2;
    _symbols = paramArrayOfString;
    _buckets = paramArrayOfBucket;
    _size = paramInt1;
    _hashSeed = paramInt2;
    paramInt1 = paramArrayOfString.length;
    _sizeThreshold = _thresholdSize(paramInt1);
    _indexMask = (paramInt1 - 1);
    _longestCollisionList = paramInt3;
    _dirty = false;
  }
  
  private static final int _thresholdSize(int paramInt)
  {
    return paramInt - (paramInt >> 2);
  }
  
  private void copyArrays()
  {
    Object localObject = _symbols;
    int i = localObject.length;
    _symbols = new String[i];
    System.arraycopy(localObject, 0, _symbols, 0, i);
    localObject = _buckets;
    i = localObject.length;
    _buckets = new Bucket[i];
    System.arraycopy(localObject, 0, _buckets, 0, i);
  }
  
  public static CharsToNameCanonicalizer createRoot()
  {
    long l = System.currentTimeMillis();
    return createRoot((int)l + ((int)l >>> 32) | 0x1);
  }
  
  protected static CharsToNameCanonicalizer createRoot(int paramInt)
  {
    return sBootstrapSymbolTable.makeOrphan(paramInt);
  }
  
  private void initTables(int paramInt)
  {
    _symbols = new String[paramInt];
    _buckets = new Bucket[paramInt >> 1];
    _indexMask = (paramInt - 1);
    _size = 0;
    _longestCollisionList = 0;
    _sizeThreshold = _thresholdSize(paramInt);
  }
  
  private CharsToNameCanonicalizer makeOrphan(int paramInt)
  {
    return new CharsToNameCanonicalizer(null, true, true, _symbols, _buckets, _size, paramInt, _longestCollisionList);
  }
  
  private void mergeChild(CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    if ((paramCharsToNameCanonicalizer.size() > 12000) || (_longestCollisionList > 63)) {
      try
      {
        initTables(64);
        _dirty = false;
        return;
      }
      finally {}
    }
    if (paramCharsToNameCanonicalizer.size() > size()) {
      try
      {
        _symbols = _symbols;
        _buckets = _buckets;
        _size = _size;
        _sizeThreshold = _sizeThreshold;
        _indexMask = _indexMask;
        _longestCollisionList = _longestCollisionList;
        _dirty = false;
        return;
      }
      finally {}
    }
  }
  
  private void rehash()
  {
    int i1 = _symbols.length;
    int i = i1 + i1;
    if (i > 65536)
    {
      _size = 0;
      Arrays.fill(_symbols, null);
      Arrays.fill(_buckets, null);
      _dirty = true;
    }
    int k;
    label184:
    do
    {
      return;
      Object localObject1 = _symbols;
      Bucket[] arrayOfBucket = _buckets;
      _symbols = new String[i];
      _buckets = new Bucket[i >> 1];
      _indexMask = (i - 1);
      _sizeThreshold = _thresholdSize(i);
      int j = 0;
      i = 0;
      k = 0;
      Object localObject2;
      if (k < i1)
      {
        localObject2 = localObject1[k];
        m = j;
        int n = i;
        if (localObject2 != null)
        {
          m = j + 1;
          j = _hashToIndex(calcHash((String)localObject2));
          if (_symbols[j] != null) {
            break label184;
          }
          _symbols[j] = localObject2;
        }
        for (n = i;; n = Math.max(i, ((Bucket)localObject2).length()))
        {
          k += 1;
          j = m;
          i = n;
          break;
          j >>= 1;
          localObject2 = new Bucket((String)localObject2, _buckets[j]);
          _buckets[j] = localObject2;
        }
      }
      k = 0;
      int m = i;
      i = k;
      k = j;
      while (i < i1 >> 1)
      {
        localObject1 = arrayOfBucket[i];
        j = m;
        if (localObject1 != null)
        {
          k += 1;
          localObject2 = ((Bucket)localObject1).getSymbol();
          m = _hashToIndex(calcHash((String)localObject2));
          if (_symbols[m] == null) {
            _symbols[m] = localObject2;
          }
          for (;;)
          {
            localObject1 = ((Bucket)localObject1).getNext();
            break;
            m >>= 1;
            localObject2 = new Bucket((String)localObject2, _buckets[m]);
            _buckets[m] = localObject2;
            j = Math.max(j, ((Bucket)localObject2).length());
          }
        }
        i += 1;
        m = j;
      }
      _longestCollisionList = m;
    } while (k == _size);
    throw new Error("Internal error on SymbolTable.rehash(): had " + _size + " entries; now have " + k + ".");
  }
  
  public final int _hashToIndex(int paramInt)
  {
    return _indexMask & paramInt + (paramInt >>> 15);
  }
  
  public int bucketCount()
  {
    return _symbols.length;
  }
  
  public int calcHash(String paramString)
  {
    int k = paramString.length();
    int i = _hashSeed;
    int j = 0;
    while (j < k)
    {
      i = i * 33 + paramString.charAt(j);
      j += 1;
    }
    j = i;
    if (i == 0) {
      j = 1;
    }
    return j;
  }
  
  public int calcHash(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    paramInt1 = _hashSeed;
    int i = 0;
    while (i < paramInt2)
    {
      paramInt1 = paramInt1 * 33 + paramArrayOfChar[i];
      i += 1;
    }
    paramInt2 = paramInt1;
    if (paramInt1 == 0) {
      paramInt2 = 1;
    }
    return paramInt2;
  }
  
  public int collisionCount()
  {
    int j = 0;
    Bucket[] arrayOfBucket = _buckets;
    int m = arrayOfBucket.length;
    int i = 0;
    while (i < m)
    {
      Bucket localBucket = arrayOfBucket[i];
      int k = j;
      if (localBucket != null) {
        k = j + localBucket.length();
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public String findSymbol(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject;
    if (paramInt2 < 1) {
      localObject = "";
    }
    int j;
    label64:
    label80:
    String str;
    do
    {
      return (String)localObject;
      if (!_canonicalize) {
        return new String(paramArrayOfChar, paramInt1, paramInt2);
      }
      j = _hashToIndex(paramInt3);
      localObject = _symbols[j];
      if (localObject == null) {
        break;
      }
      if (((String)localObject).length() == paramInt2)
      {
        paramInt3 = 0;
        if (((String)localObject).charAt(paramInt3) == paramArrayOfChar[(paramInt1 + paramInt3)]) {
          break label202;
        }
        if (paramInt3 == paramInt2) {
          break label223;
        }
      }
      localObject = _buckets[(j >> 1)];
      if (localObject == null) {
        break;
      }
      str = ((Bucket)localObject).find(paramArrayOfChar, paramInt1, paramInt2);
      localObject = str;
    } while (str != null);
    if (!_dirty)
    {
      copyArrays();
      _dirty = true;
      paramInt3 = j;
      label141:
      localObject = new String(paramArrayOfChar, paramInt1, paramInt2);
      paramArrayOfChar = (char[])localObject;
      if (_intern) {
        paramArrayOfChar = InternCache.instance.intern((String)localObject);
      }
      _size += 1;
      if (_symbols[paramInt3] != null) {
        break label260;
      }
      _symbols[paramInt3] = paramArrayOfChar;
    }
    for (;;)
    {
      return paramArrayOfChar;
      label202:
      int i = paramInt3 + 1;
      paramInt3 = i;
      if (i < paramInt2) {
        break label64;
      }
      paramInt3 = i;
      break label80;
      label223:
      break;
      paramInt3 = j;
      if (_size < _sizeThreshold) {
        break label141;
      }
      rehash();
      paramInt3 = _hashToIndex(calcHash(paramArrayOfChar, paramInt1, paramInt2));
      break label141;
      label260:
      paramInt1 = paramInt3 >> 1;
      localObject = new Bucket(paramArrayOfChar, _buckets[paramInt1]);
      _buckets[paramInt1] = localObject;
      _longestCollisionList = Math.max(((Bucket)localObject).length(), _longestCollisionList);
      if (_longestCollisionList > 255) {
        reportTooManyCollisions(255);
      }
    }
  }
  
  public int hashSeed()
  {
    return _hashSeed;
  }
  
  /* Error */
  public CharsToNameCanonicalizer makeChild(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 64	org/codehaus/jackson/sym/CharsToNameCanonicalizer:_symbols	[Ljava/lang/String;
    //   8: astore_3
    //   9: aload_0
    //   10: getfield 66	org/codehaus/jackson/sym/CharsToNameCanonicalizer:_buckets	[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;
    //   13: astore 4
    //   15: aload_0
    //   16: getfield 68	org/codehaus/jackson/sym/CharsToNameCanonicalizer:_size	I
    //   19: istore 5
    //   21: aload_0
    //   22: getfield 53	org/codehaus/jackson/sym/CharsToNameCanonicalizer:_hashSeed	I
    //   25: istore 6
    //   27: aload_0
    //   28: getfield 55	org/codehaus/jackson/sym/CharsToNameCanonicalizer:_longestCollisionList	I
    //   31: istore 7
    //   33: aload_0
    //   34: monitorexit
    //   35: new 2	org/codehaus/jackson/sym/CharsToNameCanonicalizer
    //   38: dup
    //   39: aload_0
    //   40: iload_1
    //   41: iload_2
    //   42: aload_3
    //   43: aload 4
    //   45: iload 5
    //   47: iload 6
    //   49: iload 7
    //   51: invokespecial 99	org/codehaus/jackson/sym/CharsToNameCanonicalizer:<init>	(Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;ZZ[Ljava/lang/String;[Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer$Bucket;III)V
    //   54: astore_3
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_3
    //   58: areturn
    //   59: astore_3
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_3
    //   63: athrow
    //   64: astore_3
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_3
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	CharsToNameCanonicalizer
    //   0	69	1	paramBoolean1	boolean
    //   0	69	2	paramBoolean2	boolean
    //   8	50	3	localObject1	Object
    //   59	4	3	localObject2	Object
    //   64	4	3	localObject3	Object
    //   13	31	4	arrayOfBucket	Bucket[]
    //   19	27	5	i	int
    //   25	23	6	j	int
    //   31	19	7	k	int
    // Exception table:
    //   from	to	target	type
    //   4	35	59	finally
    //   60	62	59	finally
    //   2	4	64	finally
    //   35	55	64	finally
    //   62	64	64	finally
  }
  
  public int maxCollisionLength()
  {
    return _longestCollisionList;
  }
  
  public boolean maybeDirty()
  {
    return _dirty;
  }
  
  public void release()
  {
    if (!maybeDirty()) {}
    while (_parent == null) {
      return;
    }
    _parent.mergeChild(this);
    _dirty = false;
  }
  
  protected void reportTooManyCollisions(int paramInt)
  {
    throw new IllegalStateException("Longest collision chain in symbol table (of size " + _size + ") now exceeds maximum, " + paramInt + " -- suspect a DoS attack based on hash collisions");
  }
  
  public int size()
  {
    return _size;
  }
  
  static final class Bucket
  {
    private final int _length;
    private final Bucket _next;
    private final String _symbol;
    
    public Bucket(String paramString, Bucket paramBucket)
    {
      _symbol = paramString;
      _next = paramBucket;
      if (paramBucket == null) {}
      for (int i = 1;; i = _length + 1)
      {
        _length = i;
        return;
      }
    }
    
    public String find(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      String str = _symbol;
      for (Bucket localBucket = _next;; localBucket = localBucket.getNext())
      {
        if (str.length() == paramInt2)
        {
          int i = 0;
          if (str.charAt(i) != paramArrayOfChar[(paramInt1 + i)]) {}
          for (;;)
          {
            if (i != paramInt2) {
              break label72;
            }
            return str;
            int j = i + 1;
            i = j;
            if (j < paramInt2) {
              break;
            }
            i = j;
          }
        }
        label72:
        if (localBucket == null) {
          return null;
        }
        str = localBucket.getSymbol();
      }
    }
    
    public Bucket getNext()
    {
      return _next;
    }
    
    public String getSymbol()
    {
      return _symbol;
    }
    
    public int length()
    {
      return _length;
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.CharsToNameCanonicalizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */