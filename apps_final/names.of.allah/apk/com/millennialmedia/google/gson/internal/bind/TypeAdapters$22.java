package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.sql.Timestamp;
import java.util.Date;

final class TypeAdapters$22
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() != Timestamp.class) {
      return null;
    }
    return new TypeAdapters.22.1(this, paramGson.getAdapter(Date.class));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.TypeAdapters.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */