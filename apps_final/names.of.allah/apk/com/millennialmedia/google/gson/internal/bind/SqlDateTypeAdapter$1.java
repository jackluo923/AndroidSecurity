package com.millennialmedia.google.gson.internal.bind;

import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.TypeAdapter;
import com.millennialmedia.google.gson.TypeAdapterFactory;
import com.millennialmedia.google.gson.reflect.TypeToken;
import java.sql.Date;

final class SqlDateTypeAdapter$1
  implements TypeAdapterFactory
{
  public final <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    if (paramTypeToken.getRawType() == Date.class) {
      return new SqlDateTypeAdapter();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.bind.SqlDateTypeAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */