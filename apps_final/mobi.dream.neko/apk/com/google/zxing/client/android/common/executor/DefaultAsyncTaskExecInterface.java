package com.google.zxing.client.android.common.executor;

import android.os.AsyncTask;

public final class DefaultAsyncTaskExecInterface
  implements AsyncTaskExecInterface
{
  public <T> void execute(AsyncTask<T, ?, ?> paramAsyncTask, T... paramVarArgs)
  {
    paramAsyncTask.execute(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.common.executor.DefaultAsyncTaskExecInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */