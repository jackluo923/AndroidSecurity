package com.google.zxing.client.android.common.executor;

import com.google.zxing.client.android.common.PlatformSupportManager;

public final class AsyncTaskExecManager
  extends PlatformSupportManager<AsyncTaskExecInterface>
{
  public AsyncTaskExecManager()
  {
    super(AsyncTaskExecInterface.class, new DefaultAsyncTaskExecInterface());
    addImplementationClass(11, "com.google.zxing.client.android.common.executor.HoneycombAsyncTaskExecInterface");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.common.executor.AsyncTaskExecManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */