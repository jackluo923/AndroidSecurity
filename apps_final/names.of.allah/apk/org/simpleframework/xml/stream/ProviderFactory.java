package org.simpleframework.xml.stream;

final class ProviderFactory
{
  public static Provider getInstance()
  {
    try
    {
      StreamProvider localStreamProvider = new StreamProvider();
      return localStreamProvider;
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        PullProvider localPullProvider = new PullProvider();
        return localPullProvider;
      }
      catch (Throwable localThrowable2) {}
    }
    return new DocumentProvider();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.ProviderFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */