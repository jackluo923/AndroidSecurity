package mobi.monaca.utils;

import android.os.AsyncTask.Status;
import android.os.Handler;

class MyAsyncTask$1
  implements Runnable
{
  MyAsyncTask$1(MyAsyncTask paramMyAsyncTask, Object[] paramArrayOfObject) {}
  
  public void run()
  {
    final Object localObject = this$0.doInBackground(val$a);
    this$0.handler.post(new Runnable()
    {
      public void run()
      {
        this$0.onPostExecute(localObject);
        MyAsyncTask.access$002(this$0, AsyncTask.Status.FINISHED);
      }
    });
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.MyAsyncTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */