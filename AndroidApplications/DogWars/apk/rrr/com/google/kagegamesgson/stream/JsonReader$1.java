package com.google.kagegamesgson.stream;

class JsonReader$1
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
        i5 = 1;
        arrayOfInt[j] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError8)
      {
        int i5;
        JsonScope localJsonScope2;
        int k;
        JsonScope localJsonScope3;
        int m;
        JsonScope localJsonScope4;
        int n;
        JsonScope localJsonScope5;
        int i1;
        JsonScope localJsonScope6;
        int i2;
        JsonScope localJsonScope7;
        int i3;
        JsonScope localJsonScope8;
        int i4;
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope2 = JsonScope.EMPTY_ARRAY;
        k = localJsonScope2.ordinal();
        i5 = 2;
        arrayOfInt[k] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError7)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope3 = JsonScope.NONEMPTY_ARRAY;
        m = localJsonScope3.ordinal();
        i5 = 3;
        arrayOfInt[m] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError6)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope4 = JsonScope.EMPTY_OBJECT;
        n = localJsonScope4.ordinal();
        i5 = 4;
        arrayOfInt[n] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError5)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope5 = JsonScope.DANGLING_NAME;
        i1 = localJsonScope5.ordinal();
        i5 = 5;
        arrayOfInt[i1] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError4)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope6 = JsonScope.NONEMPTY_OBJECT;
        i2 = localJsonScope6.ordinal();
        i5 = 6;
        arrayOfInt[i2] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError3)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope7 = JsonScope.NONEMPTY_DOCUMENT;
        i3 = localJsonScope7.ordinal();
        i5 = 7;
        arrayOfInt[i3] = i5;
      }
      catch (NoSuchFieldError localNoSuchFieldError2)
      {
        continue;
      }
      try
      {
        arrayOfInt = $SwitchMap$com$google$gson$stream$JsonScope;
        localJsonScope8 = JsonScope.CLOSED;
        i4 = localJsonScope8.ordinal();
        i5 = 8;
        arrayOfInt[i4] = i5;
        return;
      }
      catch (NoSuchFieldError localNoSuchFieldError1) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.JsonReader.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */