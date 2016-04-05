package com.millennialmedia.android;

import com.millennialmedia.google.gson.annotations.SerializedName;

class DTOAdViewLayout
{
  int height;
  int width;
  @SerializedName("x")
  int xWindowPosition;
  @SerializedName("y")
  int yWindowPosition;
  
  DTOAdViewLayout(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    xWindowPosition = paramInt1;
    yWindowPosition = paramInt2;
    width = paramInt3;
    height = paramInt4;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.DTOAdViewLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */