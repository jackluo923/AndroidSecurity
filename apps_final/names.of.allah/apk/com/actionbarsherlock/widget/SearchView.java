package com.actionbarsherlock.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.view.r;
import android.support.v4.widget.a;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView.OnEditorActionListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.view.CollapsibleActionView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

public class SearchView
  extends LinearLayout
  implements CollapsibleActionView
{
  private static final boolean DBG = false;
  private static final String IME_OPTION_NO_MICROPHONE = "nm";
  private static final String LOG_TAG = "SearchView";
  private Bundle mAppSearchData;
  private boolean mClearingFocus;
  private ImageView mCloseButton;
  private int mCollapsedImeOptions;
  private View mDropDownAnchor;
  private boolean mExpandedInActionView;
  private boolean mIconified;
  private boolean mIconifiedByDefault;
  private int mMaxWidth;
  private CharSequence mOldQueryText;
  private final View.OnClickListener mOnClickListener = new SearchView.7(this);
  private SearchView.OnCloseListener mOnCloseListener;
  private final TextView.OnEditorActionListener mOnEditorActionListener = new SearchView.9(this);
  private final AdapterView.OnItemClickListener mOnItemClickListener = new SearchView.10(this);
  private final AdapterView.OnItemSelectedListener mOnItemSelectedListener = new SearchView.11(this);
  private SearchView.OnQueryTextListener mOnQueryChangeListener;
  private View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
  private View.OnClickListener mOnSearchClickListener;
  private SearchView.OnSuggestionListener mOnSuggestionListener;
  private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache = new WeakHashMap();
  private CharSequence mQueryHint;
  private boolean mQueryRefinement;
  private SearchView.SearchAutoComplete mQueryTextView;
  private Runnable mReleaseCursorRunnable = new SearchView.3(this);
  private View mSearchButton;
  private View mSearchEditFrame;
  private ImageView mSearchHintIcon;
  private View mSearchPlate;
  private SearchableInfo mSearchable;
  private Runnable mShowImeRunnable = new SearchView.1(this);
  private View mSubmitArea;
  private View mSubmitButton;
  private boolean mSubmitButtonEnabled;
  private a mSuggestionsAdapter;
  View.OnKeyListener mTextKeyListener = new SearchView.8(this);
  private TextWatcher mTextWatcher = new SearchView.12(this);
  private Runnable mUpdateDrawableStateRunnable = new SearchView.2(this);
  private CharSequence mUserQuery;
  private final Intent mVoiceAppSearchIntent;
  private View mVoiceButton;
  private boolean mVoiceButtonEnabled;
  private final Intent mVoiceWebSearchIntent;
  
  public SearchView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SearchView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (Build.VERSION.SDK_INT < 8) {
      throw new IllegalStateException("SearchView is API 8+ only.");
    }
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(R.layout.abs__search_view, this, true);
    mSearchButton = findViewById(R.id.abs__search_button);
    mQueryTextView = ((SearchView.SearchAutoComplete)findViewById(R.id.abs__search_src_text));
    mQueryTextView.setSearchView(this);
    mSearchEditFrame = findViewById(R.id.abs__search_edit_frame);
    mSearchPlate = findViewById(R.id.abs__search_plate);
    mSubmitArea = findViewById(R.id.abs__submit_area);
    mSubmitButton = findViewById(R.id.abs__search_go_btn);
    mCloseButton = ((ImageView)findViewById(R.id.abs__search_close_btn));
    mVoiceButton = findViewById(R.id.abs__search_voice_btn);
    mSearchHintIcon = ((ImageView)findViewById(R.id.abs__search_mag_icon));
    mSearchButton.setOnClickListener(mOnClickListener);
    mCloseButton.setOnClickListener(mOnClickListener);
    mSubmitButton.setOnClickListener(mOnClickListener);
    mVoiceButton.setOnClickListener(mOnClickListener);
    mQueryTextView.setOnClickListener(mOnClickListener);
    mQueryTextView.addTextChangedListener(mTextWatcher);
    mQueryTextView.setOnEditorActionListener(mOnEditorActionListener);
    mQueryTextView.setOnItemClickListener(mOnItemClickListener);
    mQueryTextView.setOnItemSelectedListener(mOnItemSelectedListener);
    mQueryTextView.setOnKeyListener(mTextKeyListener);
    mQueryTextView.setOnFocusChangeListener(new SearchView.4(this));
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockSearchView, 0, 0);
    setIconifiedByDefault(localTypedArray.getBoolean(3, true));
    int i = localTypedArray.getDimensionPixelSize(0, -1);
    if (i != -1) {
      setMaxWidth(i);
    }
    CharSequence localCharSequence = localTypedArray.getText(4);
    if (!TextUtils.isEmpty(localCharSequence)) {
      setQueryHint(localCharSequence);
    }
    i = localTypedArray.getInt(2, -1);
    if (i != -1) {
      setImeOptions(i);
    }
    i = localTypedArray.getInt(1, -1);
    if (i != -1) {
      setInputType(i);
    }
    localTypedArray.recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockView, 0, 0);
    boolean bool = paramContext.getBoolean(0, true);
    paramContext.recycle();
    setFocusable(bool);
    mVoiceWebSearchIntent = new Intent("android.speech.action.WEB_SEARCH");
    mVoiceWebSearchIntent.addFlags(268435456);
    mVoiceWebSearchIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    mVoiceAppSearchIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    mVoiceAppSearchIntent.addFlags(268435456);
    mDropDownAnchor = findViewById(mQueryTextView.getDropDownAnchor());
    if (mDropDownAnchor != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label659;
      }
      mDropDownAnchor.addOnLayoutChangeListener(new SearchView.5(this));
    }
    for (;;)
    {
      updateViewsVisibility(mIconifiedByDefault);
      updateQueryHint();
      return;
      label659:
      mDropDownAnchor.getViewTreeObserver().addOnGlobalLayoutListener(new SearchView.6(this));
    }
  }
  
  private void adjustDropDownSizeAndPosition()
  {
    Object localObject;
    int j;
    Rect localRect;
    if (mDropDownAnchor.getWidth() > 1)
    {
      localObject = getContext().getResources();
      j = mSearchPlate.getPaddingLeft();
      localRect = new Rect();
      if (!mIconifiedByDefault) {
        break label130;
      }
      i = ((Resources)localObject).getDimensionPixelSize(R.dimen.abs__dropdownitem_icon_width);
    }
    label130:
    for (int i = ((Resources)localObject).getDimensionPixelSize(R.dimen.abs__dropdownitem_text_padding_left) + i;; i = 0)
    {
      mQueryTextView.getDropDownBackground().getPadding(localRect);
      mQueryTextView.setDropDownHorizontalOffset(-(left + i) + j);
      localObject = mQueryTextView;
      int k = mDropDownAnchor.getWidth();
      int m = left;
      ((SearchView.SearchAutoComplete)localObject).setDropDownWidth(i + (right + (k + m)) - j);
      return;
    }
  }
  
  private Intent createIntent(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", mUserQuery);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (mAppSearchData != null) {
      paramString1.putExtra("app_data", mAppSearchData);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    paramString1.setComponent(mSearchable.getSearchActivity());
    return paramString1;
  }
  
  private Intent createIntentFromSuggestion(Cursor paramCursor, int paramInt, String paramString)
  {
    try
    {
      localObject2 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_action");
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label203;
      }
      localObject1 = mSearchable.getSuggestIntentAction();
    }
    catch (RuntimeException paramString)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject3;
        try
        {
          String str;
          paramInt = paramCursor.getPosition();
          Log.w("SearchView", "Search suggestions cursor at row " + paramInt + " returned exception.", paramString);
          return null;
        }
        catch (RuntimeException paramCursor)
        {
          paramInt = -1;
          continue;
        }
        label203:
        Object localObject2 = localObject1;
        if (localObject1 == null)
        {
          localObject2 = "android.intent.action.SEARCH";
          continue;
          label220:
          if (localObject3 == null) {
            localObject1 = null;
          }
        }
      }
    }
    localObject3 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_data");
    localObject1 = localObject3;
    if (localObject3 == null) {
      localObject1 = mSearchable.getSuggestIntentData();
    }
    localObject3 = localObject1;
    if (localObject1 != null)
    {
      str = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_data_id");
      localObject3 = localObject1;
      if (str != null)
      {
        localObject3 = (String)localObject1 + "/" + Uri.encode(str);
        break label220;
        for (;;)
        {
          localObject3 = SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_query");
          return createIntent((String)localObject2, (Uri)localObject1, SuggestionsAdapter.getColumnString(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
          localObject1 = Uri.parse((String)localObject3);
        }
      }
    }
  }
  
  private Intent createVoiceAppSearchIntent(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Object localObject3 = null;
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1073741824);
    Bundle localBundle = new Bundle();
    Intent localIntent = new Intent(paramIntent);
    paramIntent = "free_form";
    int i = 1;
    Object localObject2 = getResources();
    if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
      paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
    }
    if (paramSearchableInfo.getVoicePromptTextId() != 0) {}
    for (localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());; localObject1 = null)
    {
      if (paramSearchableInfo.getVoiceLanguageId() != 0) {}
      for (localObject2 = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());; localObject2 = null)
      {
        if (paramSearchableInfo.getVoiceMaxResults() != 0) {
          i = paramSearchableInfo.getVoiceMaxResults();
        }
        localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", paramIntent);
        localIntent.putExtra("android.speech.extra.PROMPT", (String)localObject1);
        localIntent.putExtra("android.speech.extra.LANGUAGE", (String)localObject2);
        localIntent.putExtra("android.speech.extra.MAX_RESULTS", i);
        if (localComponentName == null) {}
        for (paramIntent = (Intent)localObject3;; paramIntent = localComponentName.flattenToShortString())
        {
          localIntent.putExtra("calling_package", paramIntent);
          localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
          localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
          return localIntent;
        }
      }
    }
  }
  
  private Intent createVoiceWebSearchIntent(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {}
    for (paramIntent = null;; paramIntent = paramIntent.flattenToShortString())
    {
      localIntent.putExtra("calling_package", paramIntent);
      return localIntent;
    }
  }
  
  private void dismissSuggestions()
  {
    mQueryTextView.dismissDropDown();
  }
  
  private static void ensureImeVisible(AutoCompleteTextView paramAutoCompleteTextView, boolean paramBoolean)
  {
    try
    {
      Method localMethod = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[] { Boolean.TYPE });
      localMethod.setAccessible(true);
      localMethod.invoke(paramAutoCompleteTextView, new Object[] { Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception paramAutoCompleteTextView) {}
  }
  
  private void forceSuggestionQuery()
  {
    try
    {
      Method localMethod1 = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
      Method localMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
      localMethod1.setAccessible(true);
      localMethod2.setAccessible(true);
      localMethod1.invoke(mQueryTextView, new Object[0]);
      localMethod2.invoke(mQueryTextView, new Object[0]);
      return;
    }
    catch (Exception localException) {}
  }
  
  private CharSequence getDecoratedHint(CharSequence paramCharSequence)
  {
    if (!mIconifiedByDefault) {
      return paramCharSequence;
    }
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.append(paramCharSequence);
    paramCharSequence = getContext().getResources().getDrawable(getSearchIconId());
    int i = (int)(mQueryTextView.getTextSize() * 1.25D);
    paramCharSequence.setBounds(0, 0, i, i);
    localSpannableStringBuilder.setSpan(new ImageSpan(paramCharSequence), 1, 2, 33);
    return localSpannableStringBuilder;
  }
  
  private int getPreferredWidth()
  {
    return getContext().getResources().getDimensionPixelSize(R.dimen.abs__search_view_preferred_width);
  }
  
  private int getSearchIconId()
  {
    TypedValue localTypedValue = new TypedValue();
    getContext().getTheme().resolveAttribute(R.attr.searchViewSearchIcon, localTypedValue, true);
    return resourceId;
  }
  
  private boolean hasVoiceSearch()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Intent localIntent;
    if (mSearchable != null)
    {
      bool1 = bool2;
      if (mSearchable.getVoiceSearchEnabled())
      {
        localIntent = null;
        if (!mSearchable.getVoiceSearchLaunchWebSearch()) {
          break label69;
        }
        localIntent = mVoiceWebSearchIntent;
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (localIntent != null)
      {
        bool1 = bool2;
        if (getContext().getPackageManager().resolveActivity(localIntent, 65536) != null) {
          bool1 = true;
        }
      }
      return bool1;
      label69:
      if (mSearchable.getVoiceSearchLaunchRecognizer()) {
        localIntent = mVoiceAppSearchIntent;
      }
    }
  }
  
  static boolean isLandscapeMode(Context paramContext)
  {
    return getResourcesgetConfigurationorientation == 2;
  }
  
  private boolean isSubmitAreaEnabled()
  {
    return ((mSubmitButtonEnabled) || (mVoiceButtonEnabled)) && (!isIconified());
  }
  
  private void launchIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }
  
  private void launchQuerySearch(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = createIntent("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  private boolean launchSuggestion(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = mSuggestionsAdapter.getCursor();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      launchIntent(createIntentFromSuggestion(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private void onCloseClicked()
  {
    if (TextUtils.isEmpty(mQueryTextView.getText()))
    {
      if ((mIconifiedByDefault) && ((mOnCloseListener == null) || (!mOnCloseListener.onClose())))
      {
        clearFocus();
        updateViewsVisibility(true);
      }
      return;
    }
    mQueryTextView.setText("");
    mQueryTextView.requestFocus();
    setImeVisibility(true);
  }
  
  private boolean onItemClicked(int paramInt1, int paramInt2, String paramString)
  {
    boolean bool = false;
    if ((mOnSuggestionListener == null) || (!mOnSuggestionListener.onSuggestionClick(paramInt1)))
    {
      launchSuggestion(paramInt1, 0, null);
      setImeVisibility(false);
      mQueryTextView.dismissDropDown();
      bool = true;
    }
    return bool;
  }
  
  private boolean onItemSelected(int paramInt)
  {
    if ((mOnSuggestionListener == null) || (!mOnSuggestionListener.onSuggestionSelect(paramInt)))
    {
      rewriteQueryFromSuggestion(paramInt);
      return true;
    }
    return false;
  }
  
  private void onSearchClicked()
  {
    updateViewsVisibility(false);
    mQueryTextView.requestFocus();
    setImeVisibility(true);
    if (mOnSearchClickListener != null) {
      mOnSearchClickListener.onClick(this);
    }
  }
  
  private void onSubmitQuery()
  {
    Editable localEditable = mQueryTextView.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((mOnQueryChangeListener == null) || (!mOnQueryChangeListener.onQueryTextSubmit(localEditable.toString()))))
    {
      if (mSearchable != null)
      {
        launchQuerySearch(0, null, localEditable.toString());
        setImeVisibility(false);
      }
      mQueryTextView.dismissDropDown();
    }
  }
  
  private boolean onSuggestionsKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (mSearchable == null) {}
    do
    {
      do
      {
        return false;
      } while ((mSuggestionsAdapter == null) || (paramKeyEvent.getAction() != 0) || (!r.b(paramKeyEvent)));
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return onItemClicked(mQueryTextView.getListSelection(), 0, null);
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {}
        for (paramInt = 0;; paramInt = mQueryTextView.length())
        {
          mQueryTextView.setSelection(paramInt);
          mQueryTextView.setListSelection(0);
          mQueryTextView.clearListSelection();
          ensureImeVisible(mQueryTextView, true);
          return true;
        }
      }
    } while ((paramInt != 19) || (mQueryTextView.getListSelection() != 0));
    return false;
  }
  
  private void onTextChanged(CharSequence paramCharSequence)
  {
    boolean bool2 = true;
    Editable localEditable = mQueryTextView.getText();
    mUserQuery = localEditable;
    if (!TextUtils.isEmpty(localEditable))
    {
      bool1 = true;
      updateSubmitButton(bool1);
      if (bool1) {
        break label100;
      }
    }
    label100:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      updateVoiceButton(bool1);
      updateCloseButton();
      updateSubmitArea();
      if ((mOnQueryChangeListener != null) && (!TextUtils.equals(paramCharSequence, mOldQueryText))) {
        mOnQueryChangeListener.onQueryTextChange(paramCharSequence.toString());
      }
      mOldQueryText = paramCharSequence.toString();
      return;
      bool1 = false;
      break;
    }
  }
  
  private void onVoiceClicked()
  {
    if (mSearchable == null) {}
    do
    {
      return;
      Object localObject = mSearchable;
      try
      {
        if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
        {
          localObject = createVoiceWebSearchIntent(mVoiceWebSearchIntent, (SearchableInfo)localObject);
          getContext().startActivity((Intent)localObject);
          return;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.w("SearchView", "Could not find voice search activity");
        return;
      }
    } while (!localActivityNotFoundException.getVoiceSearchLaunchRecognizer());
    Intent localIntent = createVoiceAppSearchIntent(mVoiceAppSearchIntent, localActivityNotFoundException);
    getContext().startActivity(localIntent);
  }
  
  private void postUpdateFocusedState()
  {
    post(mUpdateDrawableStateRunnable);
  }
  
  private void rewriteQueryFromSuggestion(int paramInt)
  {
    Editable localEditable = mQueryTextView.getText();
    Object localObject = mSuggestionsAdapter.getCursor();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = mSuggestionsAdapter.convertToString((Cursor)localObject);
      if (localObject != null)
      {
        setQuery((CharSequence)localObject);
        return;
      }
      setQuery(localEditable);
      return;
    }
    setQuery(localEditable);
  }
  
  private void setImeVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {
      post(mShowImeRunnable);
    }
    InputMethodManager localInputMethodManager;
    do
    {
      return;
      removeCallbacks(mShowImeRunnable);
      localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    } while (localInputMethodManager == null);
    localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
  }
  
  private void setQuery(CharSequence paramCharSequence)
  {
    setText(mQueryTextView, paramCharSequence, true);
    SearchView.SearchAutoComplete localSearchAutoComplete = mQueryTextView;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 0;; i = paramCharSequence.length())
    {
      localSearchAutoComplete.setSelection(i);
      return;
    }
  }
  
  private static void setText(AutoCompleteTextView paramAutoCompleteTextView, CharSequence paramCharSequence, boolean paramBoolean)
  {
    try
    {
      Method localMethod = AutoCompleteTextView.class.getMethod("setText", new Class[] { CharSequence.class, Boolean.TYPE });
      localMethod.setAccessible(true);
      localMethod.invoke(paramAutoCompleteTextView, new Object[] { paramCharSequence, Boolean.valueOf(paramBoolean) });
      return;
    }
    catch (Exception localException)
    {
      paramAutoCompleteTextView.setText(paramCharSequence);
    }
  }
  
  private static void showSoftInputUnchecked(View paramView, InputMethodManager paramInputMethodManager, int paramInt)
  {
    try
    {
      Method localMethod = paramInputMethodManager.getClass().getMethod("showSoftInputUnchecked", new Class[] { Integer.TYPE, ResultReceiver.class });
      localMethod.setAccessible(true);
      localMethod.invoke(paramInputMethodManager, new Object[] { Integer.valueOf(paramInt), null });
      return;
    }
    catch (Exception localException)
    {
      paramInputMethodManager.showSoftInput(paramView, paramInt);
    }
  }
  
  private void updateCloseButton()
  {
    int m = 1;
    int k = 0;
    int i;
    int j;
    label47:
    label61:
    Drawable localDrawable;
    if (!TextUtils.isEmpty(mQueryTextView.getText()))
    {
      i = 1;
      j = m;
      if (i == 0)
      {
        if ((!mIconifiedByDefault) || (mExpandedInActionView)) {
          break label95;
        }
        j = m;
      }
      localObject = mCloseButton;
      if (j == 0) {
        break label101;
      }
      j = k;
      ((ImageView)localObject).setVisibility(j);
      localDrawable = mCloseButton.getDrawable();
      if (i == 0) {
        break label108;
      }
    }
    label95:
    label101:
    label108:
    for (Object localObject = ENABLED_STATE_SET;; localObject = EMPTY_STATE_SET)
    {
      localDrawable.setState((int[])localObject);
      return;
      i = 0;
      break;
      j = 0;
      break label47;
      j = 8;
      break label61;
    }
  }
  
  private void updateFocusedState()
  {
    boolean bool = mQueryTextView.hasFocus();
    Drawable localDrawable = mSearchPlate.getBackground();
    if (bool)
    {
      arrayOfInt = FOCUSED_STATE_SET;
      localDrawable.setState(arrayOfInt);
      localDrawable = mSubmitArea.getBackground();
      if (!bool) {
        break label64;
      }
    }
    label64:
    for (int[] arrayOfInt = FOCUSED_STATE_SET;; arrayOfInt = EMPTY_STATE_SET)
    {
      localDrawable.setState(arrayOfInt);
      invalidate();
      return;
      arrayOfInt = EMPTY_STATE_SET;
      break;
    }
  }
  
  private void updateQueryHint()
  {
    if (mQueryHint != null) {
      mQueryTextView.setHint(getDecoratedHint(mQueryHint));
    }
    String str;
    do
    {
      return;
      if (mSearchable == null) {
        break;
      }
      str = null;
      int i = mSearchable.getHintId();
      if (i != 0) {
        str = getContext().getString(i);
      }
    } while (str == null);
    mQueryTextView.setHint(getDecoratedHint(str));
    return;
    mQueryTextView.setHint(getDecoratedHint(""));
  }
  
  private void updateSearchAutoComplete()
  {
    int j = 1;
    mQueryTextView.setThreshold(mSearchable.getSuggestThreshold());
    mQueryTextView.setImeOptions(mSearchable.getImeOptions());
    int k = mSearchable.getInputType();
    int i = k;
    if ((k & 0xF) == 1)
    {
      k &= 0xFFFEFFFF;
      i = k;
      if (mSearchable.getSuggestAuthority() != null) {
        i = k | 0x10000 | 0x80000;
      }
    }
    mQueryTextView.setInputType(i);
    if (mSuggestionsAdapter != null) {
      mSuggestionsAdapter.changeCursor(null);
    }
    if (mSearchable.getSuggestAuthority() != null)
    {
      mSuggestionsAdapter = new SuggestionsAdapter(getContext(), this, mSearchable, mOutsideDrawablesCache);
      mQueryTextView.setAdapter(mSuggestionsAdapter);
      SuggestionsAdapter localSuggestionsAdapter = (SuggestionsAdapter)mSuggestionsAdapter;
      i = j;
      if (mQueryRefinement) {
        i = 2;
      }
      localSuggestionsAdapter.setQueryRefinement(i);
    }
  }
  
  private void updateSubmitArea()
  {
    int j = 8;
    int i = j;
    if (isSubmitAreaEnabled()) {
      if (mSubmitButton.getVisibility() != 0)
      {
        i = j;
        if (mVoiceButton.getVisibility() != 0) {}
      }
      else
      {
        i = 0;
      }
    }
    mSubmitArea.setVisibility(i);
  }
  
  private void updateSubmitButton(boolean paramBoolean)
  {
    int j = 8;
    int i = j;
    if (mSubmitButtonEnabled)
    {
      i = j;
      if (isSubmitAreaEnabled())
      {
        i = j;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i = j;
            if (mVoiceButtonEnabled) {}
          }
          else
          {
            i = 0;
          }
        }
      }
    }
    mSubmitButton.setVisibility(i);
  }
  
  private void updateViewsVisibility(boolean paramBoolean)
  {
    boolean bool2 = true;
    int j = 8;
    mIconified = paramBoolean;
    int i;
    boolean bool1;
    if (paramBoolean)
    {
      i = 0;
      if (TextUtils.isEmpty(mQueryTextView.getText())) {
        break label113;
      }
      bool1 = true;
      label34:
      mSearchButton.setVisibility(i);
      updateSubmitButton(bool1);
      Object localObject = mSearchEditFrame;
      if (!paramBoolean) {
        break label119;
      }
      i = 8;
      label60:
      ((View)localObject).setVisibility(i);
      localObject = mSearchHintIcon;
      if (!mIconifiedByDefault) {
        break label124;
      }
      i = j;
      label80:
      ((ImageView)localObject).setVisibility(i);
      updateCloseButton();
      if (bool1) {
        break label129;
      }
    }
    label113:
    label119:
    label124:
    label129:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      updateVoiceButton(paramBoolean);
      updateSubmitArea();
      return;
      i = 8;
      break;
      bool1 = false;
      break label34;
      i = 0;
      break label60;
      i = 0;
      break label80;
    }
  }
  
  private void updateVoiceButton(boolean paramBoolean)
  {
    int i;
    if ((mVoiceButtonEnabled) && (!isIconified()) && (paramBoolean))
    {
      i = 0;
      mSubmitButton.setVisibility(8);
    }
    for (;;)
    {
      mVoiceButton.setVisibility(i);
      return;
      i = 8;
    }
  }
  
  public void clearFocus()
  {
    mClearingFocus = true;
    setImeVisibility(false);
    super.clearFocus();
    mQueryTextView.clearFocus();
    mClearingFocus = false;
  }
  
  public int getImeOptions()
  {
    return mQueryTextView.getImeOptions();
  }
  
  public int getInputType()
  {
    return mQueryTextView.getInputType();
  }
  
  public int getMaxWidth()
  {
    return mMaxWidth;
  }
  
  public CharSequence getQuery()
  {
    return mQueryTextView.getText();
  }
  
  public CharSequence getQueryHint()
  {
    Object localObject2 = null;
    Object localObject1;
    if (mQueryHint != null) {
      localObject1 = mQueryHint;
    }
    int i;
    do
    {
      do
      {
        return (CharSequence)localObject1;
        localObject1 = localObject2;
      } while (mSearchable == null);
      i = mSearchable.getHintId();
      localObject1 = localObject2;
    } while (i == 0);
    return getContext().getString(i);
  }
  
  public a getSuggestionsAdapter()
  {
    return mSuggestionsAdapter;
  }
  
  public boolean isIconfiedByDefault()
  {
    return mIconifiedByDefault;
  }
  
  public boolean isIconified()
  {
    return mIconified;
  }
  
  public boolean isQueryRefinementEnabled()
  {
    return mQueryRefinement;
  }
  
  public boolean isSubmitButtonEnabled()
  {
    return mSubmitButtonEnabled;
  }
  
  public void onActionViewCollapsed()
  {
    clearFocus();
    updateViewsVisibility(true);
    mQueryTextView.setImeOptions(mCollapsedImeOptions);
    mExpandedInActionView = false;
  }
  
  public void onActionViewExpanded()
  {
    if (mExpandedInActionView) {
      return;
    }
    mExpandedInActionView = true;
    mCollapsedImeOptions = mQueryTextView.getImeOptions();
    mQueryTextView.setImeOptions(mCollapsedImeOptions | 0x2000000);
    mQueryTextView.setText("");
    setIconified(false);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(mUpdateDrawableStateRunnable);
    post(mReleaseCursorRunnable);
    super.onDetachedFromWindow();
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SearchView.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(SearchView.class.getName());
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (mSearchable == null) {
      return false;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (isIconified())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    switch (j)
    {
    default: 
      paramInt1 = i;
    }
    for (;;)
    {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      return;
      if (mMaxWidth > 0)
      {
        paramInt1 = Math.min(mMaxWidth, i);
      }
      else
      {
        paramInt1 = Math.min(getPreferredWidth(), i);
        continue;
        paramInt1 = i;
        if (mMaxWidth > 0)
        {
          paramInt1 = Math.min(mMaxWidth, i);
          continue;
          if (mMaxWidth > 0) {
            paramInt1 = mMaxWidth;
          } else {
            paramInt1 = getPreferredWidth();
          }
        }
      }
    }
  }
  
  void onQueryRefine(CharSequence paramCharSequence)
  {
    setQuery(paramCharSequence);
  }
  
  void onTextFocusChanged()
  {
    updateViewsVisibility(isIconified());
    postUpdateFocusedState();
    if (mQueryTextView.hasFocus()) {
      forceSuggestionQuery();
    }
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    postUpdateFocusedState();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (mClearingFocus) {}
    while (!isFocusable()) {
      return false;
    }
    if (!isIconified())
    {
      boolean bool = mQueryTextView.requestFocus(paramInt, paramRect);
      if (bool) {
        updateViewsVisibility(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    mAppSearchData = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      onCloseClicked();
      return;
    }
    onSearchClicked();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (mIconifiedByDefault == paramBoolean) {
      return;
    }
    mIconifiedByDefault = paramBoolean;
    updateViewsVisibility(paramBoolean);
    updateQueryHint();
  }
  
  public void setImeOptions(int paramInt)
  {
    mQueryTextView.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    mQueryTextView.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    mMaxWidth = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(SearchView.OnCloseListener paramOnCloseListener)
  {
    mOnCloseListener = paramOnCloseListener;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    mOnQueryTextFocusChangeListener = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(SearchView.OnQueryTextListener paramOnQueryTextListener)
  {
    mOnQueryChangeListener = paramOnQueryTextListener;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    mOnSearchClickListener = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(SearchView.OnSuggestionListener paramOnSuggestionListener)
  {
    mOnSuggestionListener = paramOnSuggestionListener;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean)
  {
    mQueryTextView.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      mQueryTextView.setSelection(mQueryTextView.length());
      mUserQuery = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      onSubmitQuery();
    }
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    mQueryHint = paramCharSequence;
    updateQueryHint();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    mQueryRefinement = paramBoolean;
    SuggestionsAdapter localSuggestionsAdapter;
    if ((mSuggestionsAdapter instanceof SuggestionsAdapter))
    {
      localSuggestionsAdapter = (SuggestionsAdapter)mSuggestionsAdapter;
      if (!paramBoolean) {
        break label35;
      }
    }
    label35:
    for (int i = 2;; i = 1)
    {
      localSuggestionsAdapter.setQueryRefinement(i);
      return;
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    mSearchable = paramSearchableInfo;
    if (mSearchable != null)
    {
      updateSearchAutoComplete();
      updateQueryHint();
    }
    mVoiceButtonEnabled = hasVoiceSearch();
    if (mVoiceButtonEnabled) {
      mQueryTextView.setPrivateImeOptions("nm");
    }
    updateViewsVisibility(isIconified());
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    mSubmitButtonEnabled = paramBoolean;
    updateViewsVisibility(isIconified());
  }
  
  public void setSuggestionsAdapter(a parama)
  {
    mSuggestionsAdapter = parama;
    mQueryTextView.setAdapter(mSuggestionsAdapter);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.SearchView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */