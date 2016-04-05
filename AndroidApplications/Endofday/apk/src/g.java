import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.AdSize;

public final class g
  extends WebView
{
  private AdActivity a;
  private AdSize b;
  
  public g(Context paramContext, AdSize paramAdSize)
  {
    super(paramContext);
    b = paramAdSize;
    WebSettings localWebSettings = getSettings();
    boolean bool = true;
    localWebSettings.setJavaScriptEnabled(bool);
    int i = 0;
    setScrollBarStyle(i);
  }
  
  public final void a()
  {
    AdActivity localAdActivity = a;
    if (localAdActivity != null)
    {
      localAdActivity = a;
      localAdActivity.finish();
    }
  }
  
  public final void a(AdActivity paramAdActivity)
  {
    a = paramAdActivity;
  }
  
  public final AdActivity b()
  {
    AdActivity localAdActivity = a;
    return localAdActivity;
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i5 = 0;
    boolean bool = isInEditMode();
    if (bool) {
      super.onMeasure(paramInt1, paramInt2);
    }
    for (;;)
    {
      return;
      AdSize localAdSize1 = b;
      if (localAdSize1 == null)
      {
        super.onMeasure(paramInt1, paramInt2);
      }
      else
      {
        int i = View.MeasureSpec.getMode(paramInt1);
        int k = View.MeasureSpec.getSize(paramInt1);
        int m = View.MeasureSpec.getMode(paramInt2);
        int n = View.MeasureSpec.getSize(paramInt2);
        Object localObject2 = getContext();
        localObject2 = ((Context)localObject2).getResources();
        localObject2 = ((Resources)localObject2).getDisplayMetrics();
        float f1 = density;
        AdSize localAdSize2 = b;
        int i2 = localAdSize2.getWidth();
        float f2 = i2;
        f2 *= f1;
        int i3 = (int)f2;
        AdSize localAdSize3 = b;
        int i4 = localAdSize3.getHeight();
        float f3 = i4;
        f1 *= f3;
        int i1 = (int)f1;
        if ((i == 0) || (m == 0))
        {
          super.onMeasure(paramInt1, paramInt2);
        }
        else if ((i3 > k) || (i1 > n))
        {
          Object localObject1 = new java/lang/StringBuilder;
          ((StringBuilder)localObject1).<init>();
          String str2 = "Not enough space to show ad! Wants: <";
          localObject1 = ((StringBuilder)localObject1).append(str2);
          localObject1 = ((StringBuilder)localObject1).append(i3);
          str2 = ", ";
          localObject1 = ((StringBuilder)localObject1).append(str2);
          localObject1 = ((StringBuilder)localObject1).append(i1);
          str2 = ">, Has: <";
          localObject1 = ((StringBuilder)localObject1).append(str2);
          localObject1 = ((StringBuilder)localObject1).append(k);
          String str1 = ", ";
          localObject1 = ((StringBuilder)localObject1).append(str1);
          localObject1 = ((StringBuilder)localObject1).append(n);
          str1 = ">";
          localObject1 = ((StringBuilder)localObject1).append(str1);
          localObject1 = ((StringBuilder)localObject1).toString();
          t.e((String)localObject1);
          int j = 8;
          setVisibility(j);
          setMeasuredDimension(i5, i5);
        }
        else
        {
          super.onMeasure(paramInt1, paramInt2);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     g
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */