package mobi.monaca.framework.nativeui.component;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.View;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.nativeui.ComponentEventer;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIEventer;
import mobi.monaca.framework.nativeui.UIGravity;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.container.TabbarContainer;
import mobi.monaca.framework.nativeui.container.ToolbarContainer;
import mobi.monaca.framework.nativeui.exception.ConversionException;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.InvalidValueException;
import mobi.monaca.framework.nativeui.exception.MenuNameNotDefinedInAppMenuFileException;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.NativeUIIOException;
import mobi.monaca.framework.nativeui.exception.RequiredKeyNotFoundException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PageComponent
  extends Component
{
  private static final String[] BOTTOM_CONTAINER_VALID_VALUES = { MonacaApplication.getStringFromResource(R.string.nc_key_toolbar), MonacaApplication.getStringFromResource(R.string.nc_key_tabbar) };
  private static final String[] SCREEN_ORIENTATION_VALID_VALUES = { MonacaApplication.getStringFromResource(R.string.orientation_portrait), MonacaApplication.getStringFromResource(R.string.orientation_landscape), MonacaApplication.getStringFromResource(R.string.orientation_inherit), MonacaApplication.getStringFromResource(R.string.orientation_portrait_landscape) };
  private static final String TAG = PageComponent.class.getSimpleName();
  private static final String[] TOP_CONTAINER_VALID_VALUES;
  protected static String[] styleValidKeys;
  private static final String[] validBackgroundRepeatValues = { MonacaApplication.getStringFromResource(R.string.nc_value_repeatx), MonacaApplication.getStringFromResource(R.string.nc_value_repeaty), MonacaApplication.getStringFromResource(R.string.nc_value_repeat) };
  protected static String[] validKeys = { MonacaApplication.getStringFromResource(R.string.nc_key_top), MonacaApplication.getStringFromResource(R.string.nc_key_bottom), MonacaApplication.getStringFromResource(R.string.nc_key_event), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_menu), MonacaApplication.getStringFromResource(R.string.nc_key_id) };
  protected Component bottomComponent;
  public UIEventer eventer;
  protected ComponentEventer mBackButtonEventer;
  private LayerDrawable mLayeredBackgroundDrawable;
  private PageOrientation mScreenOrientation = PageOrientation.INHERIT;
  public String menuName;
  protected Component topComponent;
  
  static
  {
    styleValidKeys = new String[] { MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundimage), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundsize), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundrepeat), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundposition), MonacaApplication.getStringFromResource(R.string.nc_style_screenorientation) };
    TOP_CONTAINER_VALID_VALUES = new String[] { MonacaApplication.getStringFromResource(R.string.nc_key_toolbar) };
  }
  
  public PageComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    paramUIContext.setPageComponent(this);
    UIValidator.validateKey(paramUIContext, MonacaApplication.getStringFromResource(R.string.nc_valid_pagecomponent), style, styleValidKeys);
    if (getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_event)) != null) {
      eventer = new UIEventer(paramUIContext, getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_event)));
    }
    menuName = getComponentJSON().optString(MonacaApplication.getStringFromResource(R.string.nc_key_menu));
    if (!TextUtils.isEmpty(menuName))
    {
      paramUIContext = (MonacaApplication)paramUIContext.getPageActivity().getApplication();
      if (MonacaApplication.findMenuRepresentation(menuName) == null) {
        throw new MenuNameNotDefinedInAppMenuFileException(getComponentName(), menuName);
      }
    }
    style();
    buildChildren();
  }
  
  private void buildChildren()
    throws NativeUIException, JSONException
  {
    Object localObject = getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_top));
    String str;
    if (localObject != null)
    {
      str = ((JSONObject)localObject).optString(MonacaApplication.getStringFromResource(R.string.nc_key_container));
      if (TextUtils.isEmpty(str)) {
        break label157;
      }
      if (str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_key_toolbar))) {
        topComponent = new ToolbarContainer(uiContext, (JSONObject)localObject, true);
      }
    }
    else
    {
      localObject = getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_bottom));
      if (localObject != null)
      {
        str = ((JSONObject)localObject).optString(MonacaApplication.getStringFromResource(R.string.nc_key_container));
        if (TextUtils.isEmpty(str)) {
          break label240;
        }
        if (!str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_key_toolbar))) {
          break label177;
        }
        bottomComponent = new ToolbarContainer(uiContext, (JSONObject)localObject, false);
      }
      return;
    }
    throw new InvalidValueException(MonacaApplication.getStringFromResource(R.string.exception_pagetop), MonacaApplication.getStringFromResource(R.string.nc_key_container), str, TOP_CONTAINER_VALID_VALUES);
    label157:
    throw new RequiredKeyNotFoundException(MonacaApplication.getStringFromResource(R.string.nc_key_top), MonacaApplication.getStringFromResource(R.string.nc_key_container));
    label177:
    if (str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_key_tabbar)))
    {
      bottomComponent = new TabbarContainer(uiContext, (JSONObject)localObject);
      return;
    }
    localObject = new InvalidValueException(MonacaApplication.getStringFromResource(R.string.exception_pagebottom), MonacaApplication.getStringFromResource(R.string.nc_key_container), str, BOTTOM_CONTAINER_VALID_VALUES);
    UIValidator.reportException(uiContext, (NativeUIException)localObject);
    return;
    label240:
    localObject = new RequiredKeyNotFoundException(MonacaApplication.getStringFromResource(R.string.nc_key_top), MonacaApplication.getStringFromResource(R.string.nc_key_container));
    UIValidator.reportException(uiContext, (NativeUIException)localObject);
  }
  
  private Drawable getTopDrawable(ArrayList<Drawable> paramArrayList)
  {
    return (Drawable)paramArrayList.get(paramArrayList.size() - 1);
  }
  
  private void processBackgroundPosition(JSONObject paramJSONObject, BitmapDrawable paramBitmapDrawable, boolean paramBoolean)
  {
    if (paramBoolean) {
      return;
    }
    MonacaApplication.getStringFromResource(R.string.nc_key_center);
    MonacaApplication.getStringFromResource(R.string.nc_key_center);
    Object localObject1 = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundposition)).trim();
    paramJSONObject = Integer.valueOf(17);
    Integer localInteger = Integer.valueOf(17);
    Object localObject2 = paramJSONObject;
    Object localObject3 = localInteger;
    if (!((String)localObject1).equalsIgnoreCase(""))
    {
      MonacaApplication.getStringFromResource(R.string.nc_key_center);
      localObject3 = MonacaApplication.getStringFromResource(R.string.nc_key_center);
      if (!((String)localObject1).contains(MonacaApplication.getStringFromResource(R.string.space))) {
        break label273;
      }
      localObject1 = ((String)localObject1).split(MonacaApplication.getStringFromResource(R.string.space));
      localObject2 = localObject1[0];
    }
    for (localObject1 = localObject1[1];; localObject1 = localObject3)
    {
      if (UIGravity.hasHorizontalGravity((String)localObject2))
      {
        localObject3 = UIGravity.getHorizontalGravity((String)localObject2);
        paramJSONObject = (JSONObject)localObject3;
        if (localObject3 == null)
        {
          paramJSONObject = new InvalidValueException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundposition), (String)localObject2, UIGravity.HORIZONTAL_POSITIONS);
          UIValidator.reportException(uiContext, paramJSONObject);
          paramJSONObject = (JSONObject)localObject3;
        }
      }
      localObject2 = paramJSONObject;
      localObject3 = localInteger;
      if (UIGravity.hasVerticalGravity((String)localObject1))
      {
        localInteger = Integer.valueOf(UIGravity.getVerticalGravity((String)localObject1));
        localObject2 = paramJSONObject;
        localObject3 = localInteger;
        if (localInteger == null)
        {
          localObject1 = new InvalidValueException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundposition), (String)localObject1, UIGravity.VERTICAL_POSITIONS);
          UIValidator.reportException(uiContext, (NativeUIException)localObject1);
          localObject3 = localInteger;
          localObject2 = paramJSONObject;
        }
      }
      paramBitmapDrawable.setGravity(((Integer)localObject2).intValue() | ((Integer)localObject3).intValue());
      return;
      label273:
      localObject2 = localObject1;
    }
  }
  
  private void processPageStyleBackgroundColor(JSONObject paramJSONObject, ArrayList<Drawable> paramArrayList)
  {
    paramJSONObject = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor)).trim();
    int j = -1;
    int i = j;
    if ((paramJSONObject.equalsIgnoreCase("")) || (paramJSONObject.startsWith(MonacaApplication.getStringFromResource(R.string.sharp)))) {}
    for (;;)
    {
      try
      {
        i = Color.parseColor(paramJSONObject);
        paramArrayList.add(new ColorDrawable(i));
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localNumberFormatException.printStackTrace();
        paramJSONObject = new ConversionException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), paramJSONObject, MonacaApplication.getStringFromResource(R.string.nc_color));
        UIValidator.reportException(uiContext, paramJSONObject);
        i = j;
        continue;
      }
      paramJSONObject = new ConversionException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), paramJSONObject, MonacaApplication.getStringFromResource(R.string.nc_color));
      UIValidator.reportException(uiContext, paramJSONObject);
      i = j;
    }
  }
  
  private void processPageStyleBackgroundImage(JSONObject paramJSONObject, ArrayList<Drawable> paramArrayList)
  {
    String str = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundimage)).trim();
    boolean bool = false;
    if (!str.equalsIgnoreCase(""))
    {
      Bitmap localBitmap;
      float f1;
      float f3;
      float f4;
      float f2;
      Object localObject2;
      Object localObject1;
      for (;;)
      {
        BitmapDrawable localBitmapDrawable;
        try
        {
          localBitmap = uiContext.readScaledBitmap(str);
          localBitmapDrawable = new BitmapDrawable(uiContext.getResources(), localBitmap);
          paramArrayList.add(localBitmapDrawable);
          f1 = localBitmap.getWidth();
          f3 = localBitmap.getHeight();
          f4 = uiContext.getDisplayMetrics().widthPixels;
          f2 = uiContext.getDisplayMetrics().heightPixels;
          localObject2 = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundsize)).trim();
          localObject1 = localObject2;
          if (((String)localObject2).equalsIgnoreCase("")) {
            localObject1 = MonacaApplication.getStringFromResource(R.string.nc_background_auto);
          }
          if (((String)localObject1).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_background_cover)))
          {
            localBitmapDrawable.setGravity(119);
            bool = true;
            processBackgroundPosition(paramJSONObject, (BitmapDrawable)getTopDrawable(paramArrayList), bool);
            return;
          }
          if (!((String)localObject1).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_background_contain))) {
            break label317;
          }
          f1 = f4 / f1;
          f2 /= f3;
          if (f1 < f2)
          {
            localObject1 = UIUtil.resizeBitmap(localBitmap, (int)FloatMath.ceil(f3 * f1));
            localObject1 = new BitmapDrawable(uiContext.getResources(), (Bitmap)localObject1);
            paramArrayList.remove(paramArrayList.size() - 1);
            paramArrayList.add(localObject1);
            continue;
          }
          f1 = f2;
        }
        catch (IOException paramJSONObject)
        {
          paramJSONObject.printStackTrace();
          paramJSONObject = new NativeUIIOException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundimage), str, paramJSONObject.getMessage());
          UIValidator.reportException(uiContext, paramJSONObject);
          return;
        }
        continue;
        label317:
        if (!((String)localObject1).equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_background_auto))) {
          break;
        }
        localBitmapDrawable.setGravity(0);
      }
      int j = 0;
      int i = 0;
      if (((String)localObject1).trim().contains(MonacaApplication.getStringFromResource(R.string.comma)))
      {
        localObject2 = paramJSONObject.optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundsize));
        if (localObject2 != null)
        {
          localObject1 = ((JSONArray)localObject2).optString(0);
          if (((String)localObject1).endsWith(MonacaApplication.getStringFromResource(R.string.percent)))
          {
            j = (int)(Integer.parseInt(((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.percent), "")) * f4 / 100.0F);
            label430:
            localObject2 = ((JSONArray)localObject2).optString(1);
            if (!((String)localObject2).endsWith(MonacaApplication.getStringFromResource(R.string.percent))) {
              break label607;
            }
            i = (int)(Integer.parseInt(((String)localObject2).replace(MonacaApplication.getStringFromResource(R.string.percent), "")) * f2 / 100.0F);
          }
        }
        for (;;)
        {
          localObject1 = UIUtil.resizeBitmap(localBitmap, j, i);
          localObject1 = new BitmapDrawable(uiContext.getResources(), (Bitmap)localObject1);
          paramArrayList.remove(paramArrayList.size() - 1);
          paramArrayList.add(localObject1);
          break;
          if (((String)localObject1).endsWith(MonacaApplication.getStringFromResource(R.string.px)))
          {
            localObject1 = ((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.px), "");
            j = Integer.parseInt((String)localObject1);
            break label430;
          }
          localObject1 = ((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.dip), "");
          i = Integer.parseInt((String)localObject1);
          j = UIUtil.dip2px(uiContext, i);
          break label430;
          label607:
          if (((String)localObject1).endsWith(MonacaApplication.getStringFromResource(R.string.px)))
          {
            i = Integer.parseInt(((String)localObject2).replace(MonacaApplication.getStringFromResource(R.string.px), ""));
          }
          else
          {
            ((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.dip), "");
            Integer.parseInt((String)localObject1);
            i = UIUtil.dip2px(uiContext, j);
            continue;
            localObject1 = new ConversionException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundsize), (String)localObject1, MonacaApplication.getStringFromResource(R.string.nc_size));
            UIValidator.reportException(uiContext, (NativeUIException)localObject1);
          }
        }
      }
      if (((String)localObject1).endsWith(MonacaApplication.getStringFromResource(R.string.percent))) {
        j = (int)(Integer.parseInt(((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.percent), "")) * f4 / 100.0F);
      }
      for (;;)
      {
        f1 = f3 / f1;
        i = (int)(j * f1);
        break;
        if (((String)localObject1).endsWith(MonacaApplication.getStringFromResource(R.string.px)))
        {
          j = Integer.parseInt(((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.px), ""));
        }
        else
        {
          i = Integer.parseInt(((String)localObject1).replace(MonacaApplication.getStringFromResource(R.string.dip), ""));
          j = UIUtil.dip2px(uiContext, i);
        }
      }
    }
  }
  
  private void processPageStyleBackgroundRepeat(ArrayList<Drawable> paramArrayList)
  {
    String str1 = style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundrepeat));
    String str2 = style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundimage));
    if ((str1.equalsIgnoreCase("")) || (str2.equalsIgnoreCase("")) || (!(getTopDrawable(paramArrayList) instanceof BitmapDrawable))) {
      return;
    }
    paramArrayList = (BitmapDrawable)getTopDrawable(paramArrayList);
    if (str1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_value_repeatx)))
    {
      paramArrayList.setTileModeX(Shader.TileMode.REPEAT);
      return;
    }
    if (str1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_value_repeaty)))
    {
      paramArrayList.setTileModeY(Shader.TileMode.REPEAT);
      return;
    }
    if (str1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_value_repeat)))
    {
      paramArrayList.setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
      return;
    }
    if (str1.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.nc_value_norepeat)))
    {
      paramArrayList.setTileModeXY(null, null);
      return;
    }
    paramArrayList = new InvalidValueException(MonacaApplication.getStringFromResource(R.string.exception_message_pagesstyle), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundrepeat), str1, validBackgroundRepeatValues);
    UIValidator.reportException(uiContext, paramArrayList);
  }
  
  private void processScreenOrientation()
    throws InvalidValueException
  {
    String str = style.optString(MonacaApplication.getStringFromResource(R.string.nc_key_screenOrientation)).trim();
    if (TextUtils.isEmpty(str)) {
      return;
    }
    if (str.contains(MonacaApplication.getStringFromResource(R.string.comma)))
    {
      if ((str.contains(MonacaApplication.getStringFromResource(R.string.orientation_portrait))) && (str.contains(MonacaApplication.getStringFromResource(R.string.orientation_landscape))))
      {
        mScreenOrientation = PageOrientation.SENSOR;
        return;
      }
      raiseScreenOrietationInvalidValueException(str);
      return;
    }
    if (str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.orientation_portrait)))
    {
      mScreenOrientation = PageOrientation.PORTRAIT;
      return;
    }
    if (str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.orientation_landscape)))
    {
      mScreenOrientation = PageOrientation.LANDSCAPE;
      return;
    }
    if (str.equalsIgnoreCase(MonacaApplication.getStringFromResource(R.string.orientation_inherit)))
    {
      mScreenOrientation = PageOrientation.INHERIT;
      return;
    }
    raiseScreenOrietationInvalidValueException(str);
  }
  
  private void raiseScreenOrietationInvalidValueException(String paramString)
    throws InvalidValueException
  {
    throw new InvalidValueException(getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_key_screenOrientation), paramString, SCREEN_ORIENTATION_VALID_VALUES);
  }
  
  private void style()
    throws InvalidValueException
  {
    ArrayList localArrayList = new ArrayList();
    processScreenOrientation();
    processPageStyleBackgroundColor(style, localArrayList);
    processPageStyleBackgroundImage(style, localArrayList);
    processPageStyleBackgroundRepeat(localArrayList);
    mLayeredBackgroundDrawable = new LayerDrawable((Drawable[])localArrayList.toArray(new Drawable[localArrayList.size()]));
  }
  
  protected void addIDtoComponentIDsMap()
    throws DuplicateIDException
  {
    uiContext.getComponentIDsMap().clear();
    super.addIDtoComponentIDsMap();
  }
  
  public ComponentEventer getBackButtonEventer()
  {
    return mBackButtonEventer;
  }
  
  public Drawable getBackgroundDrawable()
  {
    return mLayeredBackgroundDrawable;
  }
  
  public Component getBottomComponent()
  {
    return bottomComponent;
  }
  
  public Map<String, Component> getComponentIDsMap()
  {
    return uiContext.getComponentIDsMap();
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_page);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.page();
  }
  
  public PageOrientation getScreenOrientation()
  {
    return mScreenOrientation;
  }
  
  public Component getTopComponent()
  {
    return topComponent;
  }
  
  public String[] getValidKeys()
  {
    return validKeys;
  }
  
  public View getView()
  {
    return null;
  }
  
  public void setBackButtonEventer(ComponentEventer paramComponentEventer)
  {
    mBackButtonEventer = paramComponentEventer;
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws InvalidValueException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
    uiContext.getPageActivity().applyScreenOrientation(mScreenOrientation);
    uiContext.getPageActivity().setupBackground(mLayeredBackgroundDrawable);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.PageComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */