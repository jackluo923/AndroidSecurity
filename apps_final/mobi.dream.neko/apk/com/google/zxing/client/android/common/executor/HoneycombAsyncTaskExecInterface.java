package com.google.zxing.client.android.common.executor;

import android.annotation.TargetApi;
import android.os.AsyncTask;

@TargetApi(11)
public final class HoneycombAsyncTaskExecInterface
  implements AsyncTaskExecInterface
{
  public <T> void execute(AsyncTask<T, ?, ?> paramAsyncTask, T... paramVarArgs)
  {
    paramAsyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.common.executor.HoneycombAsyncTaskExecInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */