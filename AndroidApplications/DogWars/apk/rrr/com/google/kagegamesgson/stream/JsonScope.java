package com.google.kagegamesgson.stream;

 enum JsonScope
{
  private static final JsonScope[] $VALUES;
  
  static
  {
    int i3 = 4;
    int i2 = 3;
    int i1 = 2;
    int n = 1;
    int m = 0;
    JsonScope localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    Object localObject = "EMPTY_ARRAY";
    localJsonScope1.<init>((String)localObject, m);
    EMPTY_ARRAY = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "NONEMPTY_ARRAY";
    localJsonScope1.<init>((String)localObject, n);
    NONEMPTY_ARRAY = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "EMPTY_OBJECT";
    localJsonScope1.<init>((String)localObject, i1);
    EMPTY_OBJECT = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "DANGLING_NAME";
    localJsonScope1.<init>((String)localObject, i2);
    DANGLING_NAME = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "NONEMPTY_OBJECT";
    localJsonScope1.<init>((String)localObject, i3);
    NONEMPTY_OBJECT = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "EMPTY_DOCUMENT";
    int k = 5;
    localJsonScope1.<init>((String)localObject, k);
    EMPTY_DOCUMENT = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "NONEMPTY_DOCUMENT";
    k = 6;
    localJsonScope1.<init>((String)localObject, k);
    NONEMPTY_DOCUMENT = localJsonScope1;
    localJsonScope1 = new com/google/kagegamesgson/stream/JsonScope;
    localObject = "CLOSED";
    k = 7;
    localJsonScope1.<init>((String)localObject, k);
    CLOSED = localJsonScope1;
    int i = 8;
    JsonScope[] arrayOfJsonScope = new JsonScope[i];
    localObject = EMPTY_ARRAY;
    arrayOfJsonScope[m] = localObject;
    localObject = NONEMPTY_ARRAY;
    arrayOfJsonScope[n] = localObject;
    localObject = EMPTY_OBJECT;
    arrayOfJsonScope[i1] = localObject;
    localObject = DANGLING_NAME;
    arrayOfJsonScope[i2] = localObject;
    localObject = NONEMPTY_OBJECT;
    arrayOfJsonScope[i3] = localObject;
    int j = 5;
    JsonScope localJsonScope2 = EMPTY_DOCUMENT;
    arrayOfJsonScope[j] = localJsonScope2;
    j = 6;
    localJsonScope2 = NONEMPTY_DOCUMENT;
    arrayOfJsonScope[j] = localJsonScope2;
    j = 7;
    localJsonScope2 = CLOSED;
    arrayOfJsonScope[j] = localJsonScope2;
    $VALUES = arrayOfJsonScope;
  }
  
  private JsonScope() {}
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.JsonScope
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */