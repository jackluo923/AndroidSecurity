package mobi.monaca.framework.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.psedo.R.string;
import org.apache.cordova.CordovaWebView;

public class MonacaWebView
  extends CordovaWebView
{
  public static final String INITIALIZATION_DESCRIPTION = MonacaApplication.getStringFromResource(R.string.cordova_initmessage);
  public static final int INITIALIZATION_ERROR_CODE = -6;
  public static final String INITIALIZATION_MADIATOR;
  public static final String INITIALIZATION_REQUEST_URL = "INITIALIZATION";
  public static final String TAG = MonacaWebView.class.getSimpleName();
  protected Context context;
  private boolean notBackButton = true;
  protected MonacaPageActivity page;
  
  static
  {
    INITIALIZATION_MADIATOR = MonacaApplication.getStringFromResource(R.string.js_scheme);
  }
  
  @Deprecated
  public MonacaWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    context = paramContext;
    init();
  }
  
  @Deprecated
  public MonacaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    context = paramContext;
    init();
  }
  
  @Deprecated
  public MonacaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet, paramInt, paramBoolean);
    context = paramContext;
    init();
  }
  
  public MonacaWebView(MonacaPageActivity paramMonacaPageActivity)
  {
    super(paramMonacaPageActivity);
    page = paramMonacaPageActivity;
    context = paramMonacaPageActivity.getContext();
    init();
  }
  
  public boolean backHistory()
  {
    if (notBackButton) {
      return super.backHistory();
    }
    notBackButton = true;
    return false;
  }
  
  public void goBack()
  {
    super.goBack();
  }
  
  protected void init()
  {
    resumeTimers();
    notBackButton = true;
  }
  
  public void loadUrlIntoView(String paramString)
  {
    if (paramString.equals("INITIALIZATION"))
    {
      super.loadUrlIntoView(INITIALIZATION_MADIATOR);
      return;
    }
    super.loadUrlIntoView(paramString);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((page != null) && (paramInt == 4) && ((page.hasBackButtonEventer()) || (page.hasOnTapBackButtonAction()))) {
      return true;
    }
    if ((!canGoBack()) || (paramInt != 4)) {}
    for (boolean bool = true;; bool = false)
    {
      notBackButton = bool;
      bool = super.onKeyUp(paramInt, paramKeyEvent);
      notBackButton = true;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.view.MonacaWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */