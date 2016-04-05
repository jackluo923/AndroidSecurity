package com.millennialmedia.android;

import android.content.Context;
import java.lang.ref.WeakReference;

class HandShake$2
  implements Runnable
{
  HandShake$2(HandShake paramHandShake) {}
  
  public void run()
  {
    Context localContext2 = (Context)HandShake.access$000(this$0).get();
    Context localContext1 = localContext2;
    if (localContext2 == null) {
      localContext1 = (Context)HandShake.access$100(this$0).get();
    }
    if (localContext1 != null) {
      HandShake.sharedHandShake(localContext1);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HandShake.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */