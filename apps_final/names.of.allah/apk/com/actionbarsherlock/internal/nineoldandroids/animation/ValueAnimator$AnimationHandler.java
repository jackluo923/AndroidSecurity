package com.actionbarsherlock.internal.nineoldandroids.animation;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

class ValueAnimator$AnimationHandler
  extends Handler
{
  public void handleMessage(Message paramMessage)
  {
    ArrayList localArrayList1 = (ArrayList)ValueAnimator.access$000().get();
    ArrayList localArrayList2 = (ArrayList)ValueAnimator.access$100().get();
    int i;
    switch (what)
    {
    default: 
      return;
    case 0: 
      paramMessage = (ArrayList)ValueAnimator.access$200().get();
      if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0)) {
        i = 0;
      }
      break;
    }
    for (;;)
    {
      int j = i;
      Object localObject;
      int k;
      ValueAnimator localValueAnimator;
      if (paramMessage.size() > 0)
      {
        localObject = (ArrayList)paramMessage.clone();
        paramMessage.clear();
        k = ((ArrayList)localObject).size();
        j = 0;
        if (j < k)
        {
          localValueAnimator = (ValueAnimator)((ArrayList)localObject).get(j);
          if (ValueAnimator.access$300(localValueAnimator) == 0L) {
            ValueAnimator.access$400(localValueAnimator);
          }
          for (;;)
          {
            j += 1;
            break;
            localArrayList2.add(localValueAnimator);
          }
          j = 1;
        }
      }
      else
      {
        long l = AnimationUtils.currentAnimationTimeMillis();
        localObject = (ArrayList)ValueAnimator.access$500().get();
        paramMessage = (ArrayList)ValueAnimator.access$600().get();
        k = localArrayList2.size();
        i = 0;
        while (i < k)
        {
          localValueAnimator = (ValueAnimator)localArrayList2.get(i);
          if (ValueAnimator.access$700(localValueAnimator, l)) {
            ((ArrayList)localObject).add(localValueAnimator);
          }
          i += 1;
        }
        k = ((ArrayList)localObject).size();
        if (k > 0)
        {
          i = 0;
          while (i < k)
          {
            localValueAnimator = (ValueAnimator)((ArrayList)localObject).get(i);
            ValueAnimator.access$400(localValueAnimator);
            ValueAnimator.access$802(localValueAnimator, true);
            localArrayList2.remove(localValueAnimator);
            i += 1;
          }
          ((ArrayList)localObject).clear();
        }
        k = localArrayList1.size();
        i = 0;
        while (i < k)
        {
          localObject = (ValueAnimator)localArrayList1.get(i);
          if (((ValueAnimator)localObject).animationFrame(l)) {
            paramMessage.add(localObject);
          }
          if (localArrayList1.size() == k)
          {
            i += 1;
          }
          else
          {
            k -= 1;
            paramMessage.remove(localObject);
          }
        }
        if (paramMessage.size() > 0)
        {
          i = 0;
          while (i < paramMessage.size())
          {
            ValueAnimator.access$900((ValueAnimator)paramMessage.get(i));
            i += 1;
          }
          paramMessage.clear();
        }
        if ((j == 0) || ((localArrayList1.isEmpty()) && (localArrayList2.isEmpty()))) {
          break;
        }
        sendEmptyMessageDelayed(1, Math.max(0L, ValueAnimator.access$1000() - (AnimationUtils.currentAnimationTimeMillis() - l)));
        return;
        i = 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.animation.ValueAnimator.AnimationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */