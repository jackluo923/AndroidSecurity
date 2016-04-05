package com.google.kagegamesgson.stream;

class JsonWriter$1
{
  static final int[] $SwitchMap$com$google$gson$stream$JsonScope;
  
  static
  {
    JsonScope[] arrayOfJsonScope = JsonScope.values();
    int i = arrayOfJsonScope.length;
    int[] arrayOfInt = new int[i];
    $SwitchMap$com$google$gson$stream$JsonScope = arrayOfInt;
    for (;;)
    {
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        JsonScope localJsonScope1 = JsonScope.EMPTY_DOCUMENT;
        int j = localJsonScope1.ordinal();
        i2 = 1;
        arrayOfInt[j] = i2;
      }
      catch (NoSuchFieldError localNoSuchFieldError5)
      {
        int i2;
        JsonScope localJsonScope2;
        int k;
        JsonScope localJsonScope3;
        int m;
        JsonScope localJsonScope4;
        int n;
        JsonScope localJsonScope5;
        int i1;
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope2 = JsonScope.EMPTY_ARRAY;
        k = localJsonScope2.ordinal();
        i2 = 2;
        arrayOfInt[k] = i2;
      }
      catch (NoSuchFieldError localNoSuchFieldError4)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope3 = JsonScope.NONEMPTY_ARRAY;
        m = localJsonScope3.ordinal();
        i2 = 3;
        arrayOfInt[m] = i2;
      }
      catch (NoSuchFieldError localNoSuchFieldError3)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope4 = JsonScope.DANGLING_NAME;
        n = localJsonScope4.ordinal();
        i2 = 4;
        arrayOfInt[n] = i2;
      }
      catch (NoSuchFieldError localNoSuchFieldError2)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope5 = JsonScope.NONEMPTY_DOCUMENT;
        i1 = localJsonScope5.ordinal();
        i2 = 5;
        arrayOfInt[i1] = i2;
        return;
      }
      catch (NoSuchFieldError localNoSuchFieldError1) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.JsonWriter.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */