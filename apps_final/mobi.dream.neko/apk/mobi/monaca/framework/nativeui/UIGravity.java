package mobi.monaca.framework.nativeui;

import java.util.HashMap;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class UIGravity
{
  public static final String[] HORIZONTAL_POSITIONS = { MonacaApplication.getStringFromResource(R.string.nc_gravity_left), MonacaApplication.getStringFromResource(R.string.nc_gravity_center), MonacaApplication.getStringFromResource(R.string.nc_gravity_right) };
  public static final String[] VERTICAL_POSITIONS = { MonacaApplication.getStringFromResource(R.string.nc_gravity_top), MonacaApplication.getStringFromResource(R.string.nc_gravity_center), MonacaApplication.getStringFromResource(R.string.nc_gravity_bottom) };
  private static final int[] horizontalGravities = { 3, 1, 5 };
  private static HashMap<String, Integer> horizontalGravityMap;
  private static final int[] verticalGravities = { 48, 16, 80 };
  private static HashMap<String, Integer> verticalGravityMap;
  
  public static Integer getHorizontalGravity(String paramString)
  {
    initHorizontalMap();
    return (Integer)horizontalGravityMap.get(paramString);
  }
  
  public static int getVerticalGravity(String paramString)
  {
    initVerticalMap();
    return ((Integer)verticalGravityMap.get(paramString)).intValue();
  }
  
  public static boolean hasHorizontalGravity(String paramString)
  {
    initHorizontalMap();
    return horizontalGravityMap.containsKey(paramString);
  }
  
  public static boolean hasVerticalGravity(String paramString)
  {
    initVerticalMap();
    return verticalGravityMap.containsKey(paramString);
  }
  
  private static void initHorizontalMap()
  {
    if (horizontalGravityMap == null)
    {
      horizontalGravityMap = new HashMap();
      int i = 0;
      while (i < HORIZONTAL_POSITIONS.length)
      {
        horizontalGravityMap.put(HORIZONTAL_POSITIONS[i], Integer.valueOf(horizontalGravities[i]));
        i += 1;
      }
    }
  }
  
  private static void initVerticalMap()
  {
    if (verticalGravityMap == null)
    {
      verticalGravityMap = new HashMap();
      int i = 0;
      while (i < VERTICAL_POSITIONS.length)
      {
        verticalGravityMap.put(VERTICAL_POSITIONS[i], Integer.valueOf(verticalGravities[i]));
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.UIGravity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */