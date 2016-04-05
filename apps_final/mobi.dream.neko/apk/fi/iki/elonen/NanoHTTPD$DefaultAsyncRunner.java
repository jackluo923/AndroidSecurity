package fi.iki.elonen;

public class NanoHTTPD$DefaultAsyncRunner
  implements NanoHTTPD.AsyncRunner
{
  private long requestCount;
  
  public void exec(Runnable paramRunnable)
  {
    requestCount += 1L;
    paramRunnable = new Thread(paramRunnable);
    paramRunnable.setDaemon(true);
    paramRunnable.setName("NanoHttpd Request Processor (#" + requestCount + ")");
    paramRunnable.start();
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.DefaultAsyncRunner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */