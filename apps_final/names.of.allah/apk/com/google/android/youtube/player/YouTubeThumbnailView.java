package com.google.android.youtube.player;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.google.android.youtube.player.internal.ab;
import com.google.android.youtube.player.internal.b;

public final class YouTubeThumbnailView
  extends ImageView
{
  private b a;
  
  public YouTubeThumbnailView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public YouTubeThumbnailView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public YouTubeThumbnailView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final void initialize(String paramString, YouTubeThumbnailView.OnInitializedListener paramOnInitializedListener)
  {
    YouTubeThumbnailView.1 local1 = new YouTubeThumbnailView.1(this, paramOnInitializedListener);
    paramOnInitializedListener = new YouTubeThumbnailView.2(this, paramOnInitializedListener);
    a = ab.a().a(getContext(), paramString, local1, paramOnInitializedListener);
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeThumbnailView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */