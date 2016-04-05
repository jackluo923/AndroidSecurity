package org.codehaus.jackson.smile;

public enum SmileParser$Feature
{
  REQUIRE_HEADER(true);
  
  final boolean _defaultState;
  final int _mask;
  
  private SmileParser$Feature(boolean paramBoolean)
  {
    _defaultState = paramBoolean;
    _mask = (1 << ordinal());
  }
  
  public static int collectDefaults()
  {
    int j = 0;
    Feature[] arrayOfFeature = values();
    int m = arrayOfFeature.length;
    int i = 0;
    while (i < m)
    {
      Feature localFeature = arrayOfFeature[i];
      int k = j;
      if (localFeature.enabledByDefault()) {
        k = j | localFeature.getMask();
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public boolean enabledByDefault()
  {
    return _defaultState;
  }
  
  public int getMask()
  {
    return _mask;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileParser.Feature
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */