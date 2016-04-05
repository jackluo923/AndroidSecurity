package jp.innovationplus.ipp.core;

public abstract interface IPPQueryCallback<T>
{
  public abstract void ippDidError(int paramInt);
  
  public abstract void ippDidFinishLoading(T paramT);
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.core.IPPQueryCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */