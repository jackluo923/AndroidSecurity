package com.google.zxing.client.android.common.executor;

import android.os.AsyncTask;

public abstract interface AsyncTaskExecInterface
{
  public abstract <T> void execute(AsyncTask<T, ?, ?> paramAsyncTask, T... paramVarArgs);
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.common.executor.AsyncTaskExecInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */