package com.appyet.f;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class d
  extends FutureTask<Result>
{
  d(a parama, Callable paramCallable)
  {
    super(paramCallable);
  }
  
  protected final void done()
  {
    try
    {
      Object localObject = get();
      a.b(a, localObject);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      Log.w("AsyncTask", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      a.b(a, null);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */