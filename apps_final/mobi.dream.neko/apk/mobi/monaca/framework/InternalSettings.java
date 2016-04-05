package mobi.monaca.framework;

import android.os.Bundle;
import mobi.monaca.framework.psedo.R.string;

public class InternalSettings
{
  private static final String TAG = InternalSettings.class.getSimpleName();
  public final String DISABLE_UI_CONTAINER_BORDER = MonacaApplication.getStringFromResource(R.string.disable_border);
  public final String FORCE_DISABLE_WEBVIEW_GPU = MonacaApplication.getStringFromResource(R.string.disable_ha);
  public final boolean disableUIContainerBorder;
  public final boolean forceDisableWebviewGPU;
  
  public InternalSettings(Bundle paramBundle)
  {
    if (paramBundle == null)
    {
      disableUIContainerBorder = false;
      forceDisableWebviewGPU = false;
      return;
    }
    if (paramBundle.containsKey(DISABLE_UI_CONTAINER_BORDER)) {}
    for (boolean bool1 = paramBundle.getBoolean(DISABLE_UI_CONTAINER_BORDER);; bool1 = false)
    {
      disableUIContainerBorder = bool1;
      bool1 = bool2;
      if (paramBundle.containsKey(FORCE_DISABLE_WEBVIEW_GPU)) {
        bool1 = paramBundle.getBoolean(FORCE_DISABLE_WEBVIEW_GPU);
      }
      forceDisableWebviewGPU = bool1;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.InternalSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */