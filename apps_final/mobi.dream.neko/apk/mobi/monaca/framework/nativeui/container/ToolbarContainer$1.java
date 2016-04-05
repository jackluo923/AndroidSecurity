package mobi.monaca.framework.nativeui.container;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.component.view.ContainerShadowView;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONObject;

class ToolbarContainer$1
  implements Animation.AnimationListener
{
  ToolbarContainer$1(ToolbarContainer paramToolbarContainer) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    int j = 0;
    paramAnimation = this$0.view;
    if (ToolbarContainer.access$000(this$0).optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true))
    {
      i = 0;
      paramAnimation.setVisibility(i);
      this$0.animation = null;
      paramAnimation = ToolbarContainer.access$200(this$0);
      if (!ToolbarContainer.access$100(this$0).optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true)) {
        break label86;
      }
    }
    label86:
    for (int i = j;; i = 8)
    {
      paramAnimation.setVisibility(i);
      return;
      i = 4;
      break;
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.ToolbarContainer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */