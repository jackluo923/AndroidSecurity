package mobi.monaca.framework.nativeui.container;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.util.ArrayList;
import java.util.List;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.component.BackButtonComponent;
import mobi.monaca.framework.nativeui.component.ButtonComponent;
import mobi.monaca.framework.nativeui.component.LabelComponent;
import mobi.monaca.framework.nativeui.component.SearchBoxComponent;
import mobi.monaca.framework.nativeui.component.SegmentComponent;
import mobi.monaca.framework.nativeui.component.ToolbarComponent;
import mobi.monaca.framework.nativeui.component.view.ContainerShadowView;
import mobi.monaca.framework.nativeui.exception.DuplicateIDException;
import mobi.monaca.framework.nativeui.exception.InvalidValueException;
import mobi.monaca.framework.nativeui.exception.KeyNotValidException;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.exception.NativeUIIOException;
import mobi.monaca.framework.nativeui.exception.RequiredKeyNotFoundException;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ToolbarContainer
  extends Container
{
  protected static String[] leftValidComponents = { MonacaApplication.getStringFromResource(R.string.nc_name_value_backbutton), MonacaApplication.getStringFromResource(R.string.nc_name_value_button), MonacaApplication.getStringFromResource(R.string.nc_name_value_searchbox), MonacaApplication.getStringFromResource(R.string.nc_name_value_label), MonacaApplication.getStringFromResource(R.string.nc_name_value_segment) };
  protected static String[] styleValidKeys;
  protected static String[] toolbarValidKeys = { MonacaApplication.getStringFromResource(R.string.nc_key_container), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_left), MonacaApplication.getStringFromResource(R.string.nc_key_center), MonacaApplication.getStringFromResource(R.string.nc_key_right) };
  protected static String[] validComponents = { MonacaApplication.getStringFromResource(R.string.nc_name_value_button), MonacaApplication.getStringFromResource(R.string.nc_name_value_searchbox), MonacaApplication.getStringFromResource(R.string.nc_name_value_label), MonacaApplication.getStringFromResource(R.string.nc_name_value_segment) };
  protected AlphaAnimation animation = null;
  private ContainerShadowView shadowView;
  protected ToolbarContainerView view;
  
  static
  {
    styleValidKeys = new String[] { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_disable), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_shadowopacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.key_title), MonacaApplication.getStringFromResource(R.string.nc_style_subtitle), MonacaApplication.getStringFromResource(R.string.nc_style_titlecolor), MonacaApplication.getStringFromResource(R.string.nc_style_subtitlecolor), MonacaApplication.getStringFromResource(R.string.nc_style_titlefontscale), MonacaApplication.getStringFromResource(R.string.nc_style_subtitlefontscale), MonacaApplication.getStringFromResource(R.string.nc_style_titleimage), MonacaApplication.getStringFromResource(R.string.nc_style_iosbarstyle) };
  }
  
  public ToolbarContainer(UIContext paramUIContext, JSONObject paramJSONObject, boolean paramBoolean)
    throws KeyNotValidException, DuplicateIDException, NativeUIIOException, NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    UIValidator.validateKey(paramUIContext, MonacaApplication.getStringFromResource(R.string.nc_valid_toolbar), style, styleValidKeys);
    view = new ToolbarContainerView(paramUIContext, paramBoolean);
    shadowView = new ContainerShadowView(paramUIContext, paramBoolean);
    buildChildren();
    style();
  }
  
  private void buildChildren()
    throws NativeUIException, JSONException
  {
    JSONArray localJSONArray = getComponentJSON().optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_key_left));
    if (localJSONArray != null)
    {
      localObject1 = buildComponents(MonacaApplication.getStringFromResource(R.string.nc_key_left), localJSONArray);
      view.setLeftView((List)localObject1);
    }
    Object localObject1 = getComponentJSON().optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_key_right));
    if (localObject1 != null)
    {
      localObject2 = buildComponents(MonacaApplication.getStringFromResource(R.string.nc_key_right), (JSONArray)localObject1);
      view.setRightView((List)localObject2);
    }
    Object localObject2 = getComponentJSON().optJSONArray(MonacaApplication.getStringFromResource(R.string.nc_key_center));
    if (localObject2 != null)
    {
      localObject2 = buildComponents(MonacaApplication.getStringFromResource(R.string.nc_key_center), (JSONArray)localObject2);
      boolean bool2 = false;
      boolean bool1;
      if (((localJSONArray != null) || (localObject1 != null)) && ((localJSONArray != null) || (((JSONArray)localObject1).length() != 0)) && ((localJSONArray.length() != 0) || (localObject1 != null)))
      {
        bool1 = bool2;
        if (localJSONArray.length() == 0)
        {
          bool1 = bool2;
          if (((JSONArray)localObject1).length() != 0) {}
        }
      }
      else
      {
        bool1 = true;
      }
      view.setCenterView((List)localObject2, bool1);
    }
  }
  
  private ToolbarComponent buildComponent(String paramString, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    String str = paramJSONObject.optString(MonacaApplication.getStringFromResource(R.string.nc_key_component));
    if (str == null) {
      throw new RequiredKeyNotFoundException(getComponentName() + paramString, MonacaApplication.getStringFromResource(R.string.nc_key_component));
    }
    if (str.equals(MonacaApplication.getStringFromResource(R.string.nc_name_value_backbutton)))
    {
      if (paramString != MonacaApplication.getStringFromResource(R.string.nc_key_left)) {
        throw new InvalidValueException(MonacaApplication.getStringFromResource(R.string.nc_name_toolbar), MonacaApplication.getStringFromResource(R.string.nc_key_component), str, validComponents);
      }
      return new BackButtonComponent(uiContext, paramJSONObject);
    }
    if (str.equals(MonacaApplication.getStringFromResource(R.string.nc_name_value_button))) {
      return new ButtonComponent(uiContext, paramJSONObject);
    }
    if (str.equals(MonacaApplication.getStringFromResource(R.string.nc_name_value_searchbox))) {
      return new SearchBoxComponent(uiContext, paramJSONObject);
    }
    if (str.equals(MonacaApplication.getStringFromResource(R.string.nc_name_value_label))) {
      return new LabelComponent(uiContext, paramJSONObject);
    }
    if (str.equals(MonacaApplication.getStringFromResource(R.string.nc_name_value_segment))) {
      return new SegmentComponent(uiContext, paramJSONObject);
    }
    throw new InvalidValueException(MonacaApplication.getStringFromResource(R.string.nc_name_toolbar), MonacaApplication.getStringFromResource(R.string.nc_key_component), str, leftValidComponents);
  }
  
  private ArrayList<ToolbarComponent> buildComponents(String paramString, JSONArray paramJSONArray)
    throws NativeUIException, JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      localArrayList.add(buildComponent(paramString, paramJSONArray.optJSONObject(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
    if ((view != null) && (view.getContentView() != null)) {
      view.getContentView().setBackgroundDrawable(null);
    }
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_toolbar);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.toolbar();
  }
  
  public View getShadowView()
  {
    return shadowView;
  }
  
  public String[] getValidKeys()
  {
    return toolbarValidKeys;
  }
  
  public View getView()
  {
    return view;
  }
  
  public boolean isTransparent()
  {
    return style.optDouble(MonacaApplication.getStringFromResource(R.string.nc_style_opacity), 1.0D) <= 0.999D;
  }
  
  /* Error */
  protected void style()
    throws NativeUIException
  {
    // Byte code:
    //   0: getstatic 321	mobi/monaca/framework/psedo/R$string:nc_float_one	I
    //   3: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   6: astore 6
    //   8: aload_0
    //   9: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   12: getstatic 67	mobi/monaca/framework/psedo/R$string:nc_style_opacity	I
    //   15: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   18: invokevirtual 325	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   21: ifeq +18 -> 39
    //   24: aload_0
    //   25: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   28: getstatic 67	mobi/monaca/framework/psedo/R$string:nc_style_opacity	I
    //   31: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   34: invokevirtual 212	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   37: astore 6
    //   39: aload 6
    //   41: invokestatic 331	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   44: fstore 5
    //   46: fload 5
    //   48: f2d
    //   49: dconst_0
    //   50: dcmpg
    //   51: iflt +11 -> 62
    //   54: fload 5
    //   56: f2d
    //   57: dconst_1
    //   58: dcmpl
    //   59: ifle +101 -> 160
    //   62: new 333	mobi/monaca/framework/nativeui/exception/ValueNotInRangeException
    //   65: dup
    //   66: new 216	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   73: aload_0
    //   74: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   77: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: getstatic 38	mobi/monaca/framework/psedo/R$string:nc_key_style	I
    //   83: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   86: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: getstatic 67	mobi/monaca/framework/psedo/R$string:nc_style_opacity	I
    //   95: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   98: aload 6
    //   100: getstatic 336	mobi/monaca/framework/psedo/R$string:nc_valid_opacity_range	I
    //   103: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   106: invokespecial 339	mobi/monaca/framework/nativeui/exception/ValueNotInRangeException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   109: athrow
    //   110: astore 7
    //   112: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   115: dup
    //   116: new 216	java/lang/StringBuilder
    //   119: dup
    //   120: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   123: aload_0
    //   124: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   127: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   133: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   136: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: getstatic 67	mobi/monaca/framework/psedo/R$string:nc_style_opacity	I
    //   145: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   148: aload 6
    //   150: getstatic 347	mobi/monaca/framework/psedo/R$string:nc_float	I
    //   153: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   156: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   159: athrow
    //   160: aload_0
    //   161: invokevirtual 350	mobi/monaca/framework/nativeui/container/ToolbarContainer:isTransparent	()Z
    //   164: ifeq +582 -> 746
    //   167: aload_0
    //   168: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   171: invokevirtual 353	mobi/monaca/framework/nativeui/container/ToolbarContainerView:getVisibility	()I
    //   174: istore 10
    //   176: aload_0
    //   177: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   180: getstatic 61	mobi/monaca/framework/psedo/R$string:nc_style_visibility	I
    //   183: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   186: iconst_1
    //   187: invokevirtual 357	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   190: ifeq +536 -> 726
    //   193: iconst_0
    //   194: istore 9
    //   196: iload 10
    //   198: iload 9
    //   200: if_icmpeq +546 -> 746
    //   203: aload_0
    //   204: getfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   207: ifnull +3 -> 210
    //   210: aload_0
    //   211: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   214: getstatic 61	mobi/monaca/framework/psedo/R$string:nc_style_visibility	I
    //   217: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   220: iconst_1
    //   221: invokevirtual 357	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   224: ifeq +508 -> 732
    //   227: new 359	android/view/animation/AlphaAnimation
    //   230: dup
    //   231: fconst_0
    //   232: fconst_1
    //   233: invokespecial 362	android/view/animation/AlphaAnimation:<init>	(FF)V
    //   236: astore 6
    //   238: aload_0
    //   239: aload 6
    //   241: putfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   244: aload_0
    //   245: getfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   248: new 6	mobi/monaca/framework/nativeui/container/ToolbarContainer$1
    //   251: dup
    //   252: aload_0
    //   253: invokespecial 365	mobi/monaca/framework/nativeui/container/ToolbarContainer$1:<init>	(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)V
    //   256: invokevirtual 369	android/view/animation/AlphaAnimation:setAnimationListener	(Landroid/view/animation/Animation$AnimationListener;)V
    //   259: aload_0
    //   260: getfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   263: new 371	android/view/animation/LinearInterpolator
    //   266: dup
    //   267: invokespecial 372	android/view/animation/LinearInterpolator:<init>	()V
    //   270: invokevirtual 376	android/view/animation/AlphaAnimation:setInterpolator	(Landroid/view/animation/Interpolator;)V
    //   273: aload_0
    //   274: getfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   277: ldc2_w 377
    //   280: invokevirtual 382	android/view/animation/AlphaAnimation:setDuration	(J)V
    //   283: invokestatic 387	java/lang/System:gc	()V
    //   286: aload_0
    //   287: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   290: aload_0
    //   291: getfield 136	mobi/monaca/framework/nativeui/container/ToolbarContainer:animation	Landroid/view/animation/AlphaAnimation;
    //   294: invokevirtual 391	mobi/monaca/framework/nativeui/container/ToolbarContainerView:startAnimation	(Landroid/view/animation/Animation;)V
    //   297: aload_0
    //   298: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   301: getstatic 82	mobi/monaca/framework/psedo/R$string:nc_style_titlecolor	I
    //   304: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   307: getstatic 394	mobi/monaca/framework/psedo/R$string:nc_default_white	I
    //   310: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   313: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   316: astore 6
    //   318: aload_0
    //   319: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   322: aload 6
    //   324: invokevirtual 401	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setTitleColor	(Ljava/lang/String;)V
    //   327: aload_0
    //   328: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   331: getstatic 85	mobi/monaca/framework/psedo/R$string:nc_style_subtitlecolor	I
    //   334: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   337: getstatic 394	mobi/monaca/framework/psedo/R$string:nc_default_white	I
    //   340: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   343: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   346: astore 6
    //   348: aload_0
    //   349: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   352: aload 6
    //   354: invokevirtual 404	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setSubtitleColor	(Ljava/lang/String;)V
    //   357: aload_0
    //   358: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   361: getstatic 88	mobi/monaca/framework/psedo/R$string:nc_style_titlefontscale	I
    //   364: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   367: ldc_w 406
    //   370: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   373: astore 6
    //   375: aload_0
    //   376: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   379: aload 6
    //   381: invokevirtual 409	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setTitleFontScale	(Ljava/lang/String;)V
    //   384: aload_0
    //   385: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   388: getstatic 91	mobi/monaca/framework/psedo/R$string:nc_style_subtitlefontscale	I
    //   391: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   394: ldc_w 406
    //   397: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   400: astore 6
    //   402: aload_0
    //   403: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   406: aload 6
    //   408: invokevirtual 412	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setSubitleFontScale	(Ljava/lang/String;)V
    //   411: aload_0
    //   412: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   415: getstatic 94	mobi/monaca/framework/psedo/R$string:nc_style_titleimage	I
    //   418: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   421: ldc_w 406
    //   424: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   427: astore 7
    //   429: aload 7
    //   431: ldc_w 406
    //   434: invokevirtual 236	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   437: ifeq +592 -> 1029
    //   440: aconst_null
    //   441: astore 6
    //   443: aload_0
    //   444: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   447: aload_0
    //   448: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   451: getstatic 76	mobi/monaca/framework/psedo/R$string:key_title	I
    //   454: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   457: invokevirtual 212	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   460: aload_0
    //   461: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   464: getstatic 79	mobi/monaca/framework/psedo/R$string:nc_style_subtitle	I
    //   467: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   470: invokevirtual 212	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   473: aload 6
    //   475: invokevirtual 416	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setTitleSubtitle	(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    //   478: aload_0
    //   479: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   482: getstatic 73	mobi/monaca/framework/psedo/R$string:nc_style_backgroundcolor	I
    //   485: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   488: getstatic 419	mobi/monaca/framework/psedo/R$string:nc_default_black	I
    //   491: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   494: invokevirtual 397	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   497: astore 6
    //   499: new 421	android/graphics/PorterDuffColorFilter
    //   502: dup
    //   503: aload 6
    //   505: invokestatic 427	mobi/monaca/framework/nativeui/UIUtil:buildColor	(Ljava/lang/String;)I
    //   508: getstatic 433	android/graphics/PorterDuff$Mode:SCREEN	Landroid/graphics/PorterDuff$Mode;
    //   511: invokespecial 436	android/graphics/PorterDuffColorFilter:<init>	(ILandroid/graphics/PorterDuff$Mode;)V
    //   514: astore 7
    //   516: new 438	mobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable
    //   519: dup
    //   520: aload_0
    //   521: getfield 250	mobi/monaca/framework/nativeui/container/ToolbarContainer:uiContext	Lmobi/monaca/framework/nativeui/UIContext;
    //   524: invokespecial 441	mobi/monaca/framework/nativeui/component/ToolbarBackgroundDrawable:<init>	(Landroid/content/Context;)V
    //   527: astore 8
    //   529: aload 8
    //   531: aload 7
    //   533: invokevirtual 447	android/graphics/drawable/Drawable:setColorFilter	(Landroid/graphics/ColorFilter;)V
    //   536: aload 8
    //   538: aload_0
    //   539: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   542: getstatic 67	mobi/monaca/framework/psedo/R$string:nc_style_opacity	I
    //   545: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   548: dconst_1
    //   549: invokevirtual 310	org/json/JSONObject:optDouble	(Ljava/lang/String;D)D
    //   552: invokestatic 451	mobi/monaca/framework/nativeui/UIUtil:buildOpacity	(D)I
    //   555: invokevirtual 455	android/graphics/drawable/Drawable:setAlpha	(I)V
    //   558: aload_0
    //   559: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   562: invokevirtual 288	mobi/monaca/framework/nativeui/container/ToolbarContainerView:getContentView	()Landroid/view/View;
    //   565: aload 8
    //   567: invokevirtual 294	android/view/View:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   570: getstatic 458	mobi/monaca/framework/psedo/R$string:nc_default_shadow_opacity	I
    //   573: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   576: astore 6
    //   578: aload_0
    //   579: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   582: getstatic 70	mobi/monaca/framework/psedo/R$string:nc_style_shadowopacity	I
    //   585: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   588: invokevirtual 325	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   591: ifeq +18 -> 609
    //   594: aload_0
    //   595: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   598: getstatic 70	mobi/monaca/framework/psedo/R$string:nc_style_shadowopacity	I
    //   601: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   604: invokevirtual 212	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   607: astore 6
    //   609: aload 6
    //   611: invokestatic 331	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   614: f2d
    //   615: dstore_1
    //   616: dload_1
    //   617: dconst_0
    //   618: dcmpg
    //   619: iflt +9 -> 628
    //   622: dload_1
    //   623: dconst_1
    //   624: dcmpl
    //   625: ifle +517 -> 1142
    //   628: new 333	mobi/monaca/framework/nativeui/exception/ValueNotInRangeException
    //   631: dup
    //   632: new 216	java/lang/StringBuilder
    //   635: dup
    //   636: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   639: aload_0
    //   640: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   643: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   649: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   652: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   655: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   658: getstatic 70	mobi/monaca/framework/psedo/R$string:nc_style_shadowopacity	I
    //   661: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   664: aload 6
    //   666: getstatic 336	mobi/monaca/framework/psedo/R$string:nc_valid_opacity_range	I
    //   669: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   672: invokespecial 339	mobi/monaca/framework/nativeui/exception/ValueNotInRangeException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   675: athrow
    //   676: astore 7
    //   678: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   681: dup
    //   682: new 216	java/lang/StringBuilder
    //   685: dup
    //   686: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   689: aload_0
    //   690: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   693: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   699: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   702: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   705: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   708: getstatic 70	mobi/monaca/framework/psedo/R$string:nc_style_shadowopacity	I
    //   711: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   714: aload 6
    //   716: getstatic 347	mobi/monaca/framework/psedo/R$string:nc_float	I
    //   719: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   722: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   725: athrow
    //   726: iconst_4
    //   727: istore 9
    //   729: goto -533 -> 196
    //   732: new 359	android/view/animation/AlphaAnimation
    //   735: dup
    //   736: fconst_1
    //   737: fconst_0
    //   738: invokespecial 362	android/view/animation/AlphaAnimation:<init>	(FF)V
    //   741: astore 6
    //   743: goto -505 -> 238
    //   746: aload_0
    //   747: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   750: astore 6
    //   752: aload_0
    //   753: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   756: getstatic 61	mobi/monaca/framework/psedo/R$string:nc_style_visibility	I
    //   759: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   762: iconst_1
    //   763: invokevirtual 357	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   766: ifeq +49 -> 815
    //   769: iconst_0
    //   770: istore 9
    //   772: aload 6
    //   774: iload 9
    //   776: invokevirtual 461	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setVisibility	(I)V
    //   779: aload_0
    //   780: getfield 161	mobi/monaca/framework/nativeui/container/ToolbarContainer:shadowView	Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;
    //   783: astore 6
    //   785: aload_0
    //   786: getfield 143	mobi/monaca/framework/nativeui/container/ToolbarContainer:style	Lorg/json/JSONObject;
    //   789: getstatic 61	mobi/monaca/framework/psedo/R$string:nc_style_visibility	I
    //   792: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   795: iconst_1
    //   796: invokevirtual 357	org/json/JSONObject:optBoolean	(Ljava/lang/String;Z)Z
    //   799: ifeq +23 -> 822
    //   802: iconst_0
    //   803: istore 9
    //   805: aload 6
    //   807: iload 9
    //   809: invokevirtual 462	mobi/monaca/framework/nativeui/component/view/ContainerShadowView:setVisibility	(I)V
    //   812: goto -515 -> 297
    //   815: bipush 8
    //   817: istore 9
    //   819: goto -47 -> 772
    //   822: bipush 8
    //   824: istore 9
    //   826: goto -21 -> 805
    //   829: astore 7
    //   831: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   834: dup
    //   835: new 216	java/lang/StringBuilder
    //   838: dup
    //   839: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   842: aload_0
    //   843: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   846: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   849: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   852: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   855: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   858: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   861: getstatic 82	mobi/monaca/framework/psedo/R$string:nc_style_titlecolor	I
    //   864: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   867: aload 6
    //   869: getstatic 465	mobi/monaca/framework/psedo/R$string:nc_color	I
    //   872: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   875: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   878: athrow
    //   879: astore 7
    //   881: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   884: dup
    //   885: new 216	java/lang/StringBuilder
    //   888: dup
    //   889: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   892: aload_0
    //   893: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   896: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   902: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   905: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   908: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   911: getstatic 85	mobi/monaca/framework/psedo/R$string:nc_style_subtitlecolor	I
    //   914: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   917: aload 6
    //   919: getstatic 465	mobi/monaca/framework/psedo/R$string:nc_color	I
    //   922: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   925: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   928: athrow
    //   929: astore 7
    //   931: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   934: dup
    //   935: new 216	java/lang/StringBuilder
    //   938: dup
    //   939: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   942: aload_0
    //   943: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   946: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   949: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   952: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   955: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   958: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   961: getstatic 88	mobi/monaca/framework/psedo/R$string:nc_style_titlefontscale	I
    //   964: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   967: aload 6
    //   969: getstatic 347	mobi/monaca/framework/psedo/R$string:nc_float	I
    //   972: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   975: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   978: athrow
    //   979: astore 7
    //   981: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   984: dup
    //   985: new 216	java/lang/StringBuilder
    //   988: dup
    //   989: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   992: aload_0
    //   993: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   996: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   999: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   1002: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1005: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1008: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1011: getstatic 91	mobi/monaca/framework/psedo/R$string:nc_style_subtitlefontscale	I
    //   1014: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1017: aload 6
    //   1019: getstatic 347	mobi/monaca/framework/psedo/R$string:nc_float	I
    //   1022: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1025: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1028: athrow
    //   1029: aload_0
    //   1030: getfield 250	mobi/monaca/framework/nativeui/container/ToolbarContainer:uiContext	Lmobi/monaca/framework/nativeui/UIContext;
    //   1033: aload 7
    //   1035: invokevirtual 471	mobi/monaca/framework/nativeui/UIContext:readScaledBitmap	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   1038: astore 6
    //   1040: goto -597 -> 443
    //   1043: astore 6
    //   1045: new 127	mobi/monaca/framework/nativeui/exception/NativeUIIOException
    //   1048: dup
    //   1049: new 216	java/lang/StringBuilder
    //   1052: dup
    //   1053: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   1056: aload_0
    //   1057: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   1060: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1063: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   1066: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1069: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1072: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1075: getstatic 94	mobi/monaca/framework/psedo/R$string:nc_style_titleimage	I
    //   1078: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1081: aload 7
    //   1083: aload 6
    //   1085: invokevirtual 474	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1088: invokespecial 475	mobi/monaca/framework/nativeui/exception/NativeUIIOException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1091: athrow
    //   1092: astore 7
    //   1094: new 341	mobi/monaca/framework/nativeui/exception/ConversionException
    //   1097: dup
    //   1098: new 216	java/lang/StringBuilder
    //   1101: dup
    //   1102: invokespecial 218	java/lang/StringBuilder:<init>	()V
    //   1105: aload_0
    //   1106: invokevirtual 222	mobi/monaca/framework/nativeui/container/ToolbarContainer:getComponentName	()Ljava/lang/String;
    //   1109: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1112: getstatic 344	mobi/monaca/framework/psedo/R$string:nc_parse_style	I
    //   1115: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1118: invokevirtual 226	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1121: invokevirtual 229	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1124: getstatic 73	mobi/monaca/framework/psedo/R$string:nc_style_backgroundcolor	I
    //   1127: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1130: aload 6
    //   1132: getstatic 465	mobi/monaca/framework/psedo/R$string:nc_color	I
    //   1135: invokestatic 35	mobi/monaca/framework/MonacaApplication:getStringFromResource	(I)Ljava/lang/String;
    //   1138: invokespecial 348	mobi/monaca/framework/nativeui/exception/ConversionException:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1141: athrow
    //   1142: fload 5
    //   1144: f2d
    //   1145: dstore_3
    //   1146: aload_0
    //   1147: getfield 161	mobi/monaca/framework/nativeui/container/ToolbarContainer:shadowView	Lmobi/monaca/framework/nativeui/component/view/ContainerShadowView;
    //   1150: invokevirtual 479	mobi/monaca/framework/nativeui/component/view/ContainerShadowView:getBackground	()Landroid/graphics/drawable/Drawable;
    //   1153: dload_3
    //   1154: dload_1
    //   1155: dmul
    //   1156: invokestatic 451	mobi/monaca/framework/nativeui/UIUtil:buildOpacity	(D)I
    //   1159: invokevirtual 455	android/graphics/drawable/Drawable:setAlpha	(I)V
    //   1162: aload_0
    //   1163: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   1166: aconst_null
    //   1167: invokevirtual 480	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setBackgroundDrawable	(Landroid/graphics/drawable/Drawable;)V
    //   1170: aload_0
    //   1171: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   1174: iconst_0
    //   1175: invokevirtual 483	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setBackgroundColor	(I)V
    //   1178: aload_0
    //   1179: getfield 156	mobi/monaca/framework/nativeui/container/ToolbarContainer:view	Lmobi/monaca/framework/nativeui/container/ToolbarContainerView;
    //   1182: new 8	mobi/monaca/framework/nativeui/container/ToolbarContainer$2
    //   1185: dup
    //   1186: aload_0
    //   1187: invokespecial 484	mobi/monaca/framework/nativeui/container/ToolbarContainer$2:<init>	(Lmobi/monaca/framework/nativeui/container/ToolbarContainer;)V
    //   1190: invokevirtual 488	mobi/monaca/framework/nativeui/container/ToolbarContainerView:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1193: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1194	0	this	ToolbarContainer
    //   615	540	1	d1	double
    //   1145	9	3	d2	double
    //   44	1099	5	f	float
    //   6	1033	6	localObject1	Object
    //   1043	88	6	localIOException	java.io.IOException
    //   110	1	7	localNumberFormatException1	NumberFormatException
    //   427	105	7	localObject2	Object
    //   676	1	7	localNumberFormatException2	NumberFormatException
    //   829	1	7	localIllegalArgumentException1	IllegalArgumentException
    //   879	1	7	localIllegalArgumentException2	IllegalArgumentException
    //   929	1	7	localNumberFormatException3	NumberFormatException
    //   979	103	7	localNumberFormatException4	NumberFormatException
    //   1092	1	7	localIllegalArgumentException3	IllegalArgumentException
    //   527	39	8	localToolbarBackgroundDrawable	mobi.monaca.framework.nativeui.component.ToolbarBackgroundDrawable
    //   194	631	9	i	int
    //   174	27	10	j	int
    // Exception table:
    //   from	to	target	type
    //   39	46	110	java/lang/NumberFormatException
    //   62	110	110	java/lang/NumberFormatException
    //   609	616	676	java/lang/NumberFormatException
    //   628	676	676	java/lang/NumberFormatException
    //   1146	1162	676	java/lang/NumberFormatException
    //   318	327	829	java/lang/IllegalArgumentException
    //   348	357	879	java/lang/IllegalArgumentException
    //   375	384	929	java/lang/NumberFormatException
    //   402	411	979	java/lang/NumberFormatException
    //   429	440	1043	java/io/IOException
    //   443	478	1043	java/io/IOException
    //   1029	1040	1043	java/io/IOException
    //   499	570	1092	java/lang/IllegalArgumentException
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.container.ToolbarContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */