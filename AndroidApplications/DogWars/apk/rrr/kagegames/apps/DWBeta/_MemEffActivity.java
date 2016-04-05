package kagegames.apps.DWBeta;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;

public abstract class _MemEffActivity
  extends Activity
{
  private ViewGroup m_contentView;
  
  public _MemEffActivity()
  {
    ViewGroup localViewGroup = null;
    m_contentView = localViewGroup;
  }
  
  private void nullViewDrawable(View paramView)
  {
    Drawable localDrawable = null;
    try
    {
      paramView.setBackgroundDrawable(localDrawable);
      localObject1 = paramView;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          Object localObject1 = (ImageView)localObject1;
          Object localObject2 = localObject1;
          localDrawable = null;
          ((ImageView)localObject2).setImageDrawable(localDrawable);
          localDrawable = null;
          ((ImageView)localObject2).setBackgroundDrawable(localDrawable);
          return;
        }
        catch (Exception localException2)
        {
          continue;
        }
        localException1 = localException1;
      }
    }
  }
  
  private void nullViewDrawablesRecursive(View paramView)
  {
    Object localObject1;
    if (paramView != null) {
      localObject1 = paramView;
    }
    for (;;)
    {
      try
      {
        localObject1 = (ViewGroup)localObject1;
        localObject2 = localObject1;
        int i = ((ViewGroup)localObject2).getChildCount();
        j = 0;
        if (j < i) {
          continue;
        }
      }
      catch (Exception localException)
      {
        Object localObject2;
        int j;
        View localView;
        continue;
      }
      nullViewDrawable(paramView);
      return;
      localView = ((ViewGroup)localObject2).getChildAt(j);
      nullViewDrawablesRecursive(localView);
      j += 1;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    ViewGroup localViewGroup = m_contentView;
    nullViewDrawablesRecursive(localViewGroup);
    localViewGroup = null;
    m_contentView = localViewGroup;
    System.gc();
  }
  
  protected void onPause()
  {
    super.onPause();
    System.gc();
  }
  
  protected void onResume()
  {
    System.gc();
    super.onResume();
  }
  
  public void setContentView(int paramInt)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    ViewGroup localViewGroup = null;
    Object localObject = localLayoutInflater.inflate(paramInt, localViewGroup);
    localObject = (ViewGroup)localObject;
    setContentView((View)localObject);
  }
  
  public void setContentView(View paramView)
  {
    super.setContentView(paramView);
    paramView = (ViewGroup)paramView;
    m_contentView = paramView;
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    paramView = (ViewGroup)paramView;
    m_contentView = paramView;
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta._MemEffActivity
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */