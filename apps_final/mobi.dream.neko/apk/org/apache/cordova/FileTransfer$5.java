package org.apache.cordova;

class FileTransfer$5
  implements Runnable
{
  FileTransfer$5(FileTransfer paramFileTransfer, FileTransfer.RequestContext paramRequestContext) {}
  
  public void run()
  {
    synchronized (val$context)
    {
      FileTransfer.access$300(val$context.currentInputStream);
      FileTransfer.access$300(val$context.currentOutputStream);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */