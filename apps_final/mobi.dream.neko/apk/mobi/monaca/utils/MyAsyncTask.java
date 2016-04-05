package mobi.monaca.utils;

import android.os.AsyncTask.Status;
import android.os.Handler;

public abstract class MyAsyncTask<A, B, C>
{
  protected Thread backgroundThread = null;
  private AsyncTask.Status currentStatus = AsyncTask.Status.PENDING;
  final Handler handler = new Handler();
  protected boolean isExecuted = false;
  private boolean mIsCancelled = false;
  
  public void cancel(boolean paramBoolean)
  {
    if ((paramBoolean) && (backgroundThread != null)) {
      backgroundThread.interrupt();
    }
    mIsCancelled = true;
  }
  
  protected abstract C doInBackground(A... paramVarArgs);
  
  public void execute(final A... paramVarArgs)
  {
    if (isExecuted) {
      throw new RuntimeException("This task is already executed.");
    }
    onPreExecute();
    isExecuted = true;
    currentStatus = AsyncTask.Status.RUNNING;
    backgroundThread = new Thread(new Runnable()
    {
      public void run()
      {
        final Object localObject = doInBackground(paramVarArgs);
        handler.post(new Runnable()
        {
          public void run()
          {
            onPostExecute(localObject);
            MyAsyncTask.access$002(MyAsyncTask.this, AsyncTask.Status.FINISHED);
          }
        });
      }
    });
    backgroundThread.start();
  }
  
  public AsyncTask.Status getStatus()
  {
    return currentStatus;
  }
  
  public boolean isCancelled()
  {
    return mIsCancelled;
  }
  
  public boolean isExecuted()
  {
    return isExecuted;
  }
  
  protected void onPostExecute(C paramC) {}
  
  protected void onPreExecute() {}
  
  protected void onProgressUpdate(B... paramVarArgs) {}
  
  protected void publishProgress(final B... paramVarArgs)
  {
    handler.post(new Runnable()
    {
      public void run()
      {
        onProgressUpdate(paramVarArgs);
      }
    });
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.MyAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */