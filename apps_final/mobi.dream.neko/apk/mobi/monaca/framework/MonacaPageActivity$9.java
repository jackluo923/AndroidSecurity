package mobi.monaca.framework;

import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.transition.TransitionParams;
import mobi.monaca.framework.util.BenchmarkTimer;

class MonacaPageActivity$9
  implements Runnable
{
  MonacaPageActivity$9(MonacaPageActivity paramMonacaPageActivity, String paramString, TransitionParams paramTransitionParams) {}
  
  public void run()
  {
    BenchmarkTimer.mark(this$0.getString(R.string.bench_pushpage_async_run));
    this$0.pushPageWithIntent(val$url, val$params);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */