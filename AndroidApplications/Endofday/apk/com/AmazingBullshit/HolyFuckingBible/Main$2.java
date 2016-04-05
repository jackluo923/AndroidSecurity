package com.AmazingBullshit.HolyFuckingBible;

import android.view.View;
import android.view.View.OnClickListener;
import com.SoundboardEngine.SoundManager;

class Main$2
  implements View.OnClickListener
{
  final Main this$0;
  
  Main$2(Main paramMain, int paramInt) {}
  
  public void onClick(View paramView)
  {
    Object localObject = this$0;
    localObject = Main.access$0((Main)localObject);
    int i = val$soundId;
    ((SoundManager)localObject).playSound(i);
  }
}

/* Location:
 * Qualified Name:     com.AmazingBullshit.HolyFuckingBible.Main.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */