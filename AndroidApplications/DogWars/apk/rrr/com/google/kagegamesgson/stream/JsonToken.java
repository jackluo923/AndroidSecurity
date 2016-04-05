package com.google.kagegamesgson.stream;

public enum JsonToken
{
  private static final JsonToken[] $VALUES;
  
  static
  {
    int i3 = 4;
    int i2 = 3;
    int i1 = 2;
    int n = 1;
    int m = 0;
    JsonToken localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    Object localObject = "BEGIN_ARRAY";
    localJsonToken1.<init>((String)localObject, m);
    BEGIN_ARRAY = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "END_ARRAY";
    localJsonToken1.<init>((String)localObject, n);
    END_ARRAY = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "BEGIN_OBJECT";
    localJsonToken1.<init>((String)localObject, i1);
    BEGIN_OBJECT = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "END_OBJECT";
    localJsonToken1.<init>((String)localObject, i2);
    END_OBJECT = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "NAME";
    localJsonToken1.<init>((String)localObject, i3);
    NAME = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "STRING";
    int k = 5;
    localJsonToken1.<init>((String)localObject, k);
    STRING = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "NUMBER";
    k = 6;
    localJsonToken1.<init>((String)localObject, k);
    NUMBER = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "BOOLEAN";
    k = 7;
    localJsonToken1.<init>((String)localObject, k);
    BOOLEAN = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "NULL";
    k = 8;
    localJsonToken1.<init>((String)localObject, k);
    NULL = localJsonToken1;
    localJsonToken1 = new com/google/kagegamesgson/stream/JsonToken;
    localObject = "END_DOCUMENT";
    k = 9;
    localJsonToken1.<init>((String)localObject, k);
    END_DOCUMENT = localJsonToken1;
    int i = 10;
    JsonToken[] arrayOfJsonToken = new JsonToken[i];
    localObject = BEGIN_ARRAY;
    arrayOfJsonToken[m] = localObject;
    localObject = END_ARRAY;
    arrayOfJsonToken[n] = localObject;
    localObject = BEGIN_OBJECT;
    arrayOfJsonToken[i1] = localObject;
    localObject = END_OBJECT;
    arrayOfJsonToken[i2] = localObject;
    localObject = NAME;
    arrayOfJsonToken[i3] = localObject;
    int j = 5;
    JsonToken localJsonToken2 = STRING;
    arrayOfJsonToken[j] = localJsonToken2;
    j = 6;
    localJsonToken2 = NUMBER;
    arrayOfJsonToken[j] = localJsonToken2;
    j = 7;
    localJsonToken2 = BOOLEAN;
    arrayOfJsonToken[j] = localJsonToken2;
    j = 8;
    localJsonToken2 = NULL;
    arrayOfJsonToken[j] = localJsonToken2;
    j = 9;
    localJsonToken2 = END_DOCUMENT;
    arrayOfJsonToken[j] = localJsonToken2;
    $VALUES = arrayOfJsonToken;
  }
  
  private JsonToken() {}
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.JsonToken
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */