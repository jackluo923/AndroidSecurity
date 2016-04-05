package android.support.v4.view.a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class p
  extends AccessibilityNodeProvider
{
  p(q paramq) {}
  
  public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    a.c();
    return null;
  }
  
  public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return a.b();
  }
  
  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */