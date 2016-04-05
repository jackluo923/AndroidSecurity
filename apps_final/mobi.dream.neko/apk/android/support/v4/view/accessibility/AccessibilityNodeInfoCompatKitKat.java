package android.support.v4.view.accessibility;

import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityNodeInfoCompatKitKat
{
  public static int getLiveRegion(Object paramObject)
  {
    return ((AccessibilityNodeInfo)paramObject).getLiveRegion();
  }
  
  public static void setLiveRegion(Object paramObject, int paramInt)
  {
    ((AccessibilityNodeInfo)paramObject).setLiveRegion(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.accessibility.AccessibilityNodeInfoCompatKitKat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */