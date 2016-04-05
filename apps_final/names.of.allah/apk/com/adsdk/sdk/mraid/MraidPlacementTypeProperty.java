package com.adsdk.sdk.mraid;

class MraidPlacementTypeProperty
  extends MraidProperty
{
  private final MraidView.PlacementType mPlacementType;
  
  MraidPlacementTypeProperty(MraidView.PlacementType paramPlacementType)
  {
    mPlacementType = paramPlacementType;
  }
  
  public static MraidPlacementTypeProperty createWithType(MraidView.PlacementType paramPlacementType)
  {
    return new MraidPlacementTypeProperty(paramPlacementType);
  }
  
  public String toJsonPair()
  {
    return "placementType: '" + mPlacementType.toString().toLowerCase() + "'";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidPlacementTypeProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */