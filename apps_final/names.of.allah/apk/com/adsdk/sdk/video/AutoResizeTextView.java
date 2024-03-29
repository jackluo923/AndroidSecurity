package com.adsdk.sdk.video;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class AutoResizeTextView
  extends TextView
{
  public static final float MIN_TEXT_SIZE = 20.0F;
  private static final String mEllipsis = "...";
  private static final Canvas sTextResizeCanvas = new Canvas();
  private boolean mAddEllipsis = true;
  private float mMaxTextSize = 0.0F;
  private float mMinTextSize = 20.0F;
  private boolean mNeedsResize = false;
  private float mSpacingAdd = 0.0F;
  private float mSpacingMult = 1.0F;
  private AutoResizeTextView.OnTextResizeListener mTextResizeListener;
  private float mTextSize = getTextSize();
  
  public AutoResizeTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int getTextHeight(CharSequence paramCharSequence, TextPaint paramTextPaint, int paramInt, float paramFloat)
  {
    paramTextPaint.setTextSize(paramFloat);
    paramCharSequence = new StaticLayout(paramCharSequence, paramTextPaint, paramInt, Layout.Alignment.ALIGN_NORMAL, mSpacingMult, mSpacingAdd, true);
    paramCharSequence.draw(sTextResizeCanvas);
    return paramCharSequence.getHeight();
  }
  
  public boolean getAddEllipsis()
  {
    return mAddEllipsis;
  }
  
  public float getMaxTextSize()
  {
    return mMaxTextSize;
  }
  
  public float getMinTextSize()
  {
    return mMinTextSize;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramBoolean) || (mNeedsResize)) {
      resizeText(paramInt3 - paramInt1 - getCompoundPaddingLeft() - getCompoundPaddingRight(), paramInt4 - paramInt2 - getCompoundPaddingBottom() - getCompoundPaddingTop());
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      mNeedsResize = true;
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    mNeedsResize = true;
    resetTextSize();
  }
  
  public void resetTextSize()
  {
    super.setTextSize(0, mTextSize);
    mMaxTextSize = mTextSize;
  }
  
  public void resizeText()
  {
    int i = getHeight();
    int j = getPaddingBottom();
    int k = getPaddingTop();
    resizeText(getWidth() - getPaddingLeft() - getPaddingRight(), i - j - k);
  }
  
  public void resizeText(int paramInt1, int paramInt2)
  {
    CharSequence localCharSequence = getText();
    if ((localCharSequence == null) || (localCharSequence.length() == 0) || (paramInt2 <= 0) || (paramInt1 <= 0) || (mTextSize == 0.0F)) {
      return;
    }
    TextPaint localTextPaint = getPaint();
    float f3 = localTextPaint.getTextSize();
    float f1;
    if (mMaxTextSize > 0.0F) {
      f1 = Math.min(mTextSize, mMaxTextSize);
    }
    StaticLayout localStaticLayout;
    int j;
    for (int i = getTextHeight(localCharSequence, localTextPaint, paramInt1, f1);; i = getTextHeight(localCharSequence, localTextPaint, paramInt1, f1))
    {
      if ((i <= paramInt2) || (f1 <= mMinTextSize))
      {
        if ((mAddEllipsis) && (f1 == mMinTextSize) && (i > paramInt2))
        {
          localStaticLayout = new StaticLayout(localCharSequence, localTextPaint, paramInt1, Layout.Alignment.ALIGN_NORMAL, mSpacingMult, mSpacingAdd, false);
          localStaticLayout.draw(sTextResizeCanvas);
          if (localStaticLayout.getLineCount() > 0)
          {
            j = localStaticLayout.getLineForVertical(paramInt2) - 1;
            if (j >= 0) {
              break label263;
            }
            setText("");
          }
        }
        localTextPaint.setTextSize(f1);
        setLineSpacing(mSpacingAdd, mSpacingMult);
        if (mTextResizeListener != null) {
          mTextResizeListener.onTextResize(this, f3, f1);
        }
        mNeedsResize = false;
        return;
        f1 = mTextSize;
        break;
      }
      f1 = Math.max(f1 - 2.0F, mMinTextSize);
    }
    label263:
    i = localStaticLayout.getLineStart(j);
    paramInt2 = localStaticLayout.getLineEnd(j);
    float f2 = localStaticLayout.getLineWidth(j);
    float f4 = localTextPaint.measureText("...");
    for (;;)
    {
      if (paramInt1 >= f2 + f4)
      {
        setText(localCharSequence.subSequence(0, paramInt2) + "...");
        break;
      }
      paramInt2 -= 1;
      f2 = localTextPaint.measureText(localCharSequence.subSequence(i, paramInt2 + 1).toString());
    }
  }
  
  public void setAddEllipsis(boolean paramBoolean)
  {
    mAddEllipsis = paramBoolean;
  }
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    super.setLineSpacing(paramFloat1, paramFloat2);
    mSpacingMult = paramFloat2;
    mSpacingAdd = paramFloat1;
  }
  
  public void setMaxTextSize(float paramFloat)
  {
    mMaxTextSize = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setMinTextSize(float paramFloat)
  {
    mMinTextSize = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setOnResizeListener(AutoResizeTextView.OnTextResizeListener paramOnTextResizeListener)
  {
    mTextResizeListener = paramOnTextResizeListener;
  }
  
  public void setTextSize(float paramFloat)
  {
    super.setTextSize(paramFloat);
    mTextSize = getTextSize();
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    super.setTextSize(paramInt, paramFloat);
    mTextSize = getTextSize();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.AutoResizeTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */