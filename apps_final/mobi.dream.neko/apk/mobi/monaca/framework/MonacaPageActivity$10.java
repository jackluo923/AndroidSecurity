package mobi.monaca.framework;

import mobi.monaca.framework.transition.TransitionParams;
import mobi.monaca.framework.transition.TransitionParams.TransitionAnimationType;

class MonacaPageActivity$10
  implements Runnable
{
  MonacaPageActivity$10(MonacaPageActivity paramMonacaPageActivity, TransitionParams paramTransitionParams) {}
  
  public void run()
  {
    if (val$params.animationType == TransitionParams.TransitionAnimationType.POP)
    {
      this$0._popPage();
      return;
    }
    if (val$params.animationType == TransitionParams.TransitionAnimationType.DISMISS)
    {
      this$0.dismissPage();
      return;
    }
    this$0._popPage();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */