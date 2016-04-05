package mobi.monaca.framework.nativeui.component;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.ComponentEventer;
import mobi.monaca.framework.nativeui.DefaultStyleJSON;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIContext.OnRotateListener;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UIValidator;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.psedo.R.drawable;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

public class SearchBoxComponent
  extends ToolbarComponent
  implements UIContext.OnRotateListener
{
  protected static final String[] SEARCH_BOX_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_key_component), MonacaApplication.getStringFromResource(R.string.nc_key_style), MonacaApplication.getStringFromResource(R.string.nc_key_iosstyle), MonacaApplication.getStringFromResource(R.string.nc_key_androidstyle), MonacaApplication.getStringFromResource(R.string.nc_key_id), MonacaApplication.getStringFromResource(R.string.nc_key_event) };
  protected static final String[] STYLE_VALID_KEYS = { MonacaApplication.getStringFromResource(R.string.nc_style_visibility), MonacaApplication.getStringFromResource(R.string.nc_style_disable), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_style_placeholder), MonacaApplication.getStringFromResource(R.string.nc_style_focus), MonacaApplication.getStringFromResource(R.string.nc_style_value) };
  protected Button clearButton;
  protected ComponentEventer eventer;
  protected FrameLayout layout;
  protected EditText searchEditText;
  
  public SearchBoxComponent(UIContext paramUIContext, JSONObject paramJSONObject)
    throws NativeUIException, JSONException
  {
    super(paramUIContext, paramJSONObject);
    UIValidator.validateKey(paramUIContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), style, STYLE_VALID_KEYS);
    buildEventer();
    initView();
    style();
    try
    {
      paramJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_style_focus), false);
      paramUIContext.addOnRotateListener(this);
      return;
    }
    catch (JSONException paramUIContext)
    {
      throw new RuntimeException(paramUIContext);
    }
  }
  
  private void buildEventer()
    throws NativeUIException, JSONException
  {
    eventer = new ComponentEventer(uiContext, getComponentJSON().optJSONObject(MonacaApplication.getStringFromResource(R.string.nc_key_event)));
  }
  
  protected void finalize()
    throws Throwable
  {
    super.finalize();
  }
  
  public String getComponentName()
  {
    return MonacaApplication.getStringFromResource(R.string.nc_name_searchbox);
  }
  
  public JSONObject getDefaultStyle()
  {
    return DefaultStyleJSON.searchBox();
  }
  
  public JSONObject getStyle()
  {
    try
    {
      style.put(MonacaApplication.getStringFromResource(R.string.nc_style_value), searchEditText.getText().toString());
      return style;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  public String[] getValidKeys()
  {
    return SEARCH_BOX_VALID_KEYS;
  }
  
  public View getView()
  {
    return layout;
  }
  
  protected void initView()
  {
    layout = new FrameLayout(uiContext);
    searchEditText = new EditText(uiContext);
    searchEditText.setOnKeyListener(new View.OnKeyListener()
    {
      public boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousKeyEvent.getAction() == 1) && (paramAnonymousInt == 66))
        {
          paramAnonymousView = ((SpannableStringBuilder)searchEditText.getText()).toString();
          eventer.onSearch(searchEditText, paramAnonymousView);
          return true;
        }
        return false;
      }
    });
    searchEditText.setInputType(1);
    searchEditText.setImeOptions(3);
    searchEditText.setBackgroundResource(R.drawable.monaca_searchbox_bg);
    searchEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        try
        {
          style.put("focus", paramAnonymousBoolean);
          return;
        }
        catch (JSONException paramAnonymousView) {}
      }
    });
    searchEditText.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        paramAnonymousEditable = clearButton;
        if (searchEditText.getText().toString().equals("")) {}
        for (int i = 8;; i = 0)
        {
          paramAnonymousEditable.setVisibility(i);
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    layout.addView(searchEditText);
    clearButton = new Button(uiContext);
    clearButton.setBackgroundResource(R.drawable.monaca_search_clear);
    clearButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        searchEditText.setText("");
        searchEditText.requestFocus();
        uiContext.showSoftInput(searchEditText);
      }
    });
    Object localObject = uiContext.getResources().getDrawable(R.drawable.monaca_search_clear);
    localObject = new FrameLayout.LayoutParams(((Drawable)localObject).getMinimumWidth(), ((Drawable)localObject).getMinimumHeight(), 21);
    layout.addView(clearButton, (ViewGroup.LayoutParams)localObject);
  }
  
  public void onRotate(int paramInt)
  {
    updateWidthForOrientation(paramInt);
  }
  
  protected void style()
    throws NativeUIException
  {
    searchEditText.setText(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_value), ""));
    searchEditText.setHint(style.optString(MonacaApplication.getStringFromResource(R.string.nc_style_placeholder), ""));
    EditText localEditText = searchEditText;
    int i;
    if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_visibility), true))
    {
      i = 0;
      localEditText.setVisibility(i);
      localEditText = searchEditText;
      if (style.optBoolean(MonacaApplication.getStringFromResource(R.string.nc_style_disable), false)) {
        break label409;
      }
    }
    label409:
    for (boolean bool = true;; bool = false)
    {
      localEditText.setEnabled(bool);
      i = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_textcolor), MonacaApplication.getStringFromResource(R.string.nc_default_black), style);
      searchEditText.setTextColor(i);
      i = UIUtil.buildOpacity(UIValidator.parseAndValidateFloat(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_opacity), MonacaApplication.getStringFromResource(R.string.nc_float_one), style, 0.0F, 1.0F));
      searchEditText.setTextColor(searchEditText.getTextColors().withAlpha(i));
      searchEditText.setTextSize(0, uiContext.getFontSizeFromDip(14));
      searchEditText.setWidth(UIUtil.dip2px(uiContext, 65));
      if (style.has(MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor)))
      {
        int j = UIValidator.parseAndValidateColor(uiContext, getComponentName() + MonacaApplication.getStringFromResource(R.string.nc_parse_style), MonacaApplication.getStringFromResource(R.string.nc_style_backgroundcolor), MonacaApplication.getStringFromResource(R.string.nc_default_white), style);
        searchEditText.getBackground().setColorFilter(j, PorterDuff.Mode.MULTIPLY);
      }
      searchEditText.getBackground().setAlpha(i);
      clearButton.getBackground().setAlpha(i);
      searchEditText.setHintTextColor(searchEditText.getHintTextColors().withAlpha(i));
      updateWidthForOrientation(uiContext.getUIOrientation());
      return;
      i = 4;
      break;
    }
  }
  
  public void updateStyle(JSONObject paramJSONObject)
    throws NativeUIException
  {
    UIUtil.updateJSONObject(style, paramJSONObject);
    style();
  }
  
  protected void updateWidthForOrientation(int paramInt)
  {
    if (paramInt == 2) {
      searchEditText.setWidth(UIUtil.dip2px(uiContext, 136));
    }
    for (;;)
    {
      searchEditText.invalidate();
      return;
      if (paramInt == 1) {
        searchEditText.setWidth(UIUtil.dip2px(uiContext, 80));
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SearchBoxComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */