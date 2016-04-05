package mobi.monaca.framework.nativeui.menu;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MenuRepresentationBuilder
{
  private static final String TAG = MenuRepresentationBuilder.class.getSimpleName();
  protected Context context;
  
  public MenuRepresentationBuilder(Context paramContext)
  {
    context = paramContext;
  }
  
  public Map<String, MenuRepresentation> build(Context paramContext, JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    paramContext = getMenuRepresentationBuilder(paramContext);
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = String.valueOf(localIterator.next());
      localHashMap.put(str, paramContext.buildMenu(paramJSONObject.optJSONArray(str)));
    }
    return localHashMap;
  }
  
  public Map<String, MenuRepresentation> buildFromAssets(Context paramContext, String paramString)
  {
    paramString = getStringFromAssets(paramContext, paramString);
    if (paramString.trim().equals("")) {
      return build(paramContext, new JSONObject());
    }
    try
    {
      paramString = build(paramContext, new JSONObject(paramString));
      return paramString;
    }
    catch (JSONException paramString) {}
    return build(paramContext, new JSONObject());
  }
  
  protected MenuRepresentation buildMenu(JSONArray paramJSONArray)
  {
    JSONArray localJSONArray = paramJSONArray;
    if (paramJSONArray == null) {
      localJSONArray = new JSONArray();
    }
    paramJSONArray = new ArrayList();
    int i = 0;
    while (i < localJSONArray.length())
    {
      paramJSONArray.add(buildMenuItem(localJSONArray.optJSONObject(i)));
      i += 1;
    }
    return new MenuRepresentation(paramJSONArray);
  }
  
  protected MenuItemRepresentation buildMenuItem(JSONObject paramJSONObject)
  {
    MenuItemRepresentation localMenuItemRepresentation = new MenuItemRepresentation(paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_menu_name), ""));
    localMenuItemRepresentation.setAction(paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_menu_action), ""));
    localMenuItemRepresentation.setIconImagePath(getWWWPath() + paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_style_image), ""));
    return localMenuItemRepresentation;
  }
  
  protected MenuRepresentationBuilder getMenuRepresentationBuilder(Context paramContext)
  {
    return new MenuRepresentationBuilder(paramContext);
  }
  
  /* Error */
  protected String getStringFromAssets(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: invokestatic 176	mobi/monaca/framework/bootloader/LocalFileBootloader:openAsset	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   5: astore_2
    //   6: new 178	java/io/InputStreamReader
    //   9: dup
    //   10: aload_2
    //   11: invokespecial 181	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   14: astore_3
    //   15: new 183	java/io/StringWriter
    //   18: dup
    //   19: invokespecial 184	java/io/StringWriter:<init>	()V
    //   22: astore_1
    //   23: sipush 1024
    //   26: newarray <illegal type>
    //   28: astore 4
    //   30: aload_3
    //   31: aload 4
    //   33: invokevirtual 188	java/io/InputStreamReader:read	([C)I
    //   36: istore 5
    //   38: iload 5
    //   40: iconst_m1
    //   41: if_icmpeq +38 -> 79
    //   44: aload_1
    //   45: aload 4
    //   47: iconst_0
    //   48: iload 5
    //   50: invokevirtual 194	java/io/Writer:write	([CII)V
    //   53: goto -23 -> 30
    //   56: astore 4
    //   58: aload_3
    //   59: invokevirtual 197	java/io/InputStreamReader:close	()V
    //   62: aload_2
    //   63: ifnull +7 -> 70
    //   66: aload_2
    //   67: invokevirtual 200	java/io/InputStream:close	()V
    //   70: aload_1
    //   71: invokevirtual 201	java/lang/Object:toString	()Ljava/lang/String;
    //   74: areturn
    //   75: astore_1
    //   76: ldc 83
    //   78: areturn
    //   79: aload_3
    //   80: invokevirtual 197	java/io/InputStreamReader:close	()V
    //   83: aload_2
    //   84: ifnull -14 -> 70
    //   87: aload_2
    //   88: invokevirtual 200	java/io/InputStream:close	()V
    //   91: goto -21 -> 70
    //   94: astore_2
    //   95: goto -25 -> 70
    //   98: astore_1
    //   99: aload_3
    //   100: invokevirtual 197	java/io/InputStreamReader:close	()V
    //   103: aload_2
    //   104: ifnull +7 -> 111
    //   107: aload_2
    //   108: invokevirtual 200	java/io/InputStream:close	()V
    //   111: aload_1
    //   112: athrow
    //   113: astore_2
    //   114: goto -3 -> 111
    //   117: astore_2
    //   118: goto -48 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	121	0	this	MenuRepresentationBuilder
    //   0	121	1	paramContext	Context
    //   0	121	2	paramString	String
    //   14	86	3	localInputStreamReader	java.io.InputStreamReader
    //   28	18	4	arrayOfChar	char[]
    //   56	1	4	localIOException	java.io.IOException
    //   36	13	5	i	int
    // Exception table:
    //   from	to	target	type
    //   30	38	56	java/io/IOException
    //   44	53	56	java/io/IOException
    //   0	6	75	java/io/IOException
    //   79	83	94	java/lang/Exception
    //   87	91	94	java/lang/Exception
    //   30	38	98	finally
    //   44	53	98	finally
    //   99	103	113	java/lang/Exception
    //   107	111	113	java/lang/Exception
    //   58	62	117	java/lang/Exception
    //   66	70	117	java/lang/Exception
  }
  
  protected String getWWWPath()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.menu.MenuRepresentationBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */