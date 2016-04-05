package com.inmobi.re.container.mraidimpl;

public class ResizeDimensions
{
  int a;
  int b;
  int c;
  int d;
  
  public ResizeDimensions(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramInt4;
  }
  
  public int getHeight()
  {
    return d;
  }
  
  public int getWidth()
  {
    return c;
  }
  
  public int getX()
  {
    return a;
  }
  
  public int getY()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.ResizeDimensions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */