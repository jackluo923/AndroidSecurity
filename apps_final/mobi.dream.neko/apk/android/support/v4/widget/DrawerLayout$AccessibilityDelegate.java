package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

class DrawerLayout$AccessibilityDelegate
  extends AccessibilityDelegateCompat
{
  private final Rect mTmpRect = new Rect();
  
  DrawerLayout$AccessibilityDelegate(DrawerLayout paramDrawerLayout) {}
  
  private void addChildrenForAccessibility(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat, ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if (filter(localView)) {}
      for (;;)
      {
        i += 1;
        break;
        switch (ViewCompat.getImportantForAccessibility(localView))
        {
        case 4: 
        case 3: 
        default: 
          break;
        case 0: 
          ViewCompat.setImportantForAccessibility(localView, 1);
        case 1: 
          paramAccessibilityNodeInfoCompat.addChild(localView);
          break;
        case 2: 
          if ((localView instanceof ViewGroup)) {
            addChildrenForAccessibility(paramAccessibilityNodeInfoCompat, (ViewGroup)localView);
          }
          break;
        }
      }
    }
  }
  
  private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat1, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat2)
  {
    Rect localRect = mTmpRect;
    paramAccessibilityNodeInfoCompat2.getBoundsInParent(localRect);
    paramAccessibilityNodeInfoCompat1.setBoundsInParent(localRect);
    paramAccessibilityNodeInfoCompat2.getBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat1.setBoundsInScreen(localRect);
    paramAccessibilityNodeInfoCompat1.setVisibleToUser(paramAccessibilityNodeInfoCompat2.isVisibleToUser());
    paramAccessibilityNodeInfoCompat1.setPackageName(paramAccessibilityNodeInfoCompat2.getPackageName());
    paramAccessibilityNodeInfoCompat1.setClassName(paramAccessibilityNodeInfoCompat2.getClassName());
    paramAccessibilityNodeInfoCompat1.setContentDescription(paramAccessibilityNodeInfoCompat2.getContentDescription());
    paramAccessibilityNodeInfoCompat1.setEnabled(paramAccessibilityNodeInfoCompat2.isEnabled());
    paramAccessibilityNodeInfoCompat1.setClickable(paramAccessibilityNodeInfoCompat2.isClickable());
    paramAccessibilityNodeInfoCompat1.setFocusable(paramAccessibilityNodeInfoCompat2.isFocusable());
    paramAccessibilityNodeInfoCompat1.setFocused(paramAccessibilityNodeInfoCompat2.isFocused());
    paramAccessibilityNodeInfoCompat1.setAccessibilityFocused(paramAccessibilityNodeInfoCompat2.isAccessibilityFocused());
    paramAccessibilityNodeInfoCompat1.setSelected(paramAccessibilityNodeInfoCompat2.isSelected());
    paramAccessibilityNodeInfoCompat1.setLongClickable(paramAccessibilityNodeInfoCompat2.isLongClickable());
    paramAccessibilityNodeInfoCompat1.addAction(paramAccessibilityNodeInfoCompat2.getActions());
  }
  
  public boolean filter(View paramView)
  {
    View localView = this$0.findOpenDrawer();
    return (localView != null) && (localView != paramView);
  }
  
  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    AccessibilityNodeInfoCompat localAccessibilityNodeInfoCompat = AccessibilityNodeInfoCompat.obtain(paramAccessibilityNodeInfoCompat);
    super.onInitializeAccessibilityNodeInfo(paramView, localAccessibilityNodeInfoCompat);
    paramAccessibilityNodeInfoCompat.setSource(paramView);
    ViewParent localViewParent = ViewCompat.getParentForAccessibility(paramView);
    if ((localViewParent instanceof View)) {
      paramAccessibilityNodeInfoCompat.setParent((View)localViewParent);
    }
    copyNodeInfoNoChildren(paramAccessibilityNodeInfoCompat, localAccessibilityNodeInfoCompat);
    localAccessibilityNodeInfoCompat.recycle();
    addChildrenForAccessibility(paramAccessibilityNodeInfoCompat, (ViewGroup)paramView);
  }
  
  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!filter(paramView)) {
      return super.onRequestSendAccessibilityEvent(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.DrawerLayout.AccessibilityDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */