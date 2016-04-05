package com.inmobi.monetization;

class a$a
  implements Runnable
{
  a$a(a parama, IMErrorCode paramIMErrorCode) {}
  
  public void run()
  {
    if (IMNative.d(b.a) != null) {
      IMNative.d(b.a).onNativeRequestFailed(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */