package com.google.android.gms.common.api;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Api<O extends Api.ApiOptions>
{
  private final Api.b<?, O> Dj;
  private final Api.c<?> Dk;
  private final ArrayList<Scope> Dl;
  
  public <C extends Api.a> Api(Api.b<C, O> paramb, Api.c<C> paramc, Scope... paramVarArgs)
  {
    Dj = paramb;
    Dk = paramc;
    Dl = new ArrayList(Arrays.asList(paramVarArgs));
  }
  
  public final Api.b<?, O> eu()
  {
    return Dj;
  }
  
  public final List<Scope> ev()
  {
    return Dl;
  }
  
  public final Api.c<?> ew()
  {
    return Dk;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */