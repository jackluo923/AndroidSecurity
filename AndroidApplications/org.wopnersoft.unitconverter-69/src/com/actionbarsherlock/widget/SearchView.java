package com.actionbarsherlock.widget;

import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.view.f;
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
import android.view.KeyEvent.DispatcherState;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.CollapsibleActionView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

// compiled from: ProGuard
public class SearchView extends LinearLayout implements CollapsibleActionView {
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
    private final OnClickListener mOnClickListener;
    private OnCloseListener mOnCloseListener;
    private final OnEditorActionListener mOnEditorActionListener;
    private final OnItemClickListener mOnItemClickListener;
    private final OnItemSelectedListener mOnItemSelectedListener;
    private OnQueryTextListener mOnQueryChangeListener;
    private OnFocusChangeListener mOnQueryTextFocusChangeListener;
    private OnClickListener mOnSearchClickListener;
    private OnSuggestionListener mOnSuggestionListener;
    private final WeakHashMap mOutsideDrawablesCache;
    private CharSequence mQueryHint;
    private boolean mQueryRefinement;
    private SearchAutoComplete mQueryTextView;
    private Runnable mReleaseCursorRunnable;
    private View mSearchButton;
    private View mSearchEditFrame;
    private ImageView mSearchHintIcon;
    private View mSearchPlate;
    private SearchableInfo mSearchable;
    private Runnable mShowImeRunnable;
    private View mSubmitArea;
    private View mSubmitButton;
    private boolean mSubmitButtonEnabled;
    private a mSuggestionsAdapter;
    OnKeyListener mTextKeyListener;
    private TextWatcher mTextWatcher;
    private Runnable mUpdateDrawableStateRunnable;
    private CharSequence mUserQuery;
    private final Intent mVoiceAppSearchIntent;
    private View mVoiceButton;
    private boolean mVoiceButtonEnabled;
    private final Intent mVoiceWebSearchIntent;

    // compiled from: ProGuard
    public interface OnCloseListener {
        boolean onClose();
    }

    // compiled from: ProGuard
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    // compiled from: ProGuard
    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    // compiled from: ProGuard
    public class SearchAutoComplete extends AutoCompleteTextView {
        private SearchView mSearchView;
        private int mThreshold;

        public SearchAutoComplete(Context context) {
            super(context);
            this.mThreshold = getThreshold();
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mThreshold = getThreshold();
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mThreshold = getThreshold();
        }

        private boolean isEmpty() {
            return TextUtils.getTrimmedLength(getText()) == 0 ? true : DBG;
        }

        public boolean enoughToFilter() {
            return (this.mThreshold <= 0 || super.enoughToFilter()) ? true : DBG;
        }

        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.mSearchView.onTextFocusChanged();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                DispatcherState keyDispatcherState;
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.mSearchView.clearFocus();
                        this.mSearchView.setImeVisibility(DBG);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.mSearchView.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.isLandscapeMode(getContext())) {
                    SearchView.ensureImeVisible(this, true);
                }
            }
        }

        public void performCompletion() {
        }

        protected void replaceText(CharSequence charSequence) {
        }

        void setSearchView(SearchView searchView) {
            this.mSearchView = searchView;
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.mThreshold = i;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mShowImeRunnable = new Runnable() {
            public void run() {
                InputMethodManager inputMethodManager = (InputMethodManager) SearchView.this.getContext().getSystemService("input_method");
                if (inputMethodManager != null) {
                    SearchView.showSoftInputUnchecked(SearchView.this, inputMethodManager, 0);
                }
            }
        };
        this.mUpdateDrawableStateRunnable = new Runnable() {
            public void run() {
                SearchView.this.updateFocusedState();
            }
        };
        this.mReleaseCursorRunnable = new Runnable() {
            public void run() {
                if (SearchView.this.mSuggestionsAdapter != null && SearchView.this.mSuggestionsAdapter instanceof SuggestionsAdapter) {
                    SearchView.this.mSuggestionsAdapter.changeCursor(null);
                }
            }
        };
        this.mOutsideDrawablesCache = new WeakHashMap();
        this.mOnClickListener = new OnClickListener() {
            public void onClick(View view) {
                if (view == SearchView.this.mSearchButton) {
                    SearchView.this.onSearchClicked();
                } else if (view == SearchView.this.mCloseButton) {
                    SearchView.this.onCloseClicked();
                } else if (view == SearchView.this.mSubmitButton) {
                    SearchView.this.onSubmitQuery();
                } else if (view == SearchView.this.mVoiceButton) {
                    SearchView.this.onVoiceClicked();
                } else if (view == SearchView.this.mQueryTextView) {
                    SearchView.this.forceSuggestionQuery();
                }
            }
        };
        this.mTextKeyListener = new OnKeyListener() {
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                if (SearchView.this.mSearchable == null) {
                    return DBG;
                }
                if (SearchView.this.mQueryTextView.isPopupShowing() && SearchView.this.mQueryTextView.getListSelection() != -1) {
                    return SearchView.this.onSuggestionsKey(view, i, keyEvent);
                }
                if (SearchView.this.mQueryTextView.isEmpty() || !f.a(keyEvent)) {
                    return DBG;
                }
                if (keyEvent.getAction() == 1 && i == 66) {
                    view.cancelLongPress();
                    SearchView.this.launchQuerySearch(0, null, SearchView.this.mQueryTextView.getText().toString());
                    return true;
                } else {
                    keyEvent.getAction();
                    return DBG;
                }
            }
        };
        this.mOnEditorActionListener = new OnEditorActionListener() {
            public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                SearchView.this.onSubmitQuery();
                return true;
            }
        };
        this.mOnItemClickListener = new OnItemClickListener() {
            public void onItemClick(AdapterView adapterView, View view, int i, long j) {
                SearchView.this.onItemClicked(i, 0, null);
            }
        };
        this.mOnItemSelectedListener = new OnItemSelectedListener() {
            public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
                SearchView.this.onItemSelected(i);
            }

            public void onNothingSelected(AdapterView adapterView) {
            }
        };
        this.mTextWatcher = new TextWatcher() {
            public void afterTextChanged(Editable editable) {
            }

            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                SearchView.this.onTextChanged(charSequence);
            }
        };
        if (VERSION.SDK_INT < 8) {
            throw new IllegalStateException("SearchView is API 8+ only.");
        }
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.abs__search_view, this, true);
        this.mSearchButton = findViewById(R.id.abs__search_button);
        this.mQueryTextView = (SearchAutoComplete) findViewById(R.id.abs__search_src_text);
        this.mQueryTextView.setSearchView(this);
        this.mSearchEditFrame = findViewById(R.id.abs__search_edit_frame);
        this.mSearchPlate = findViewById(R.id.abs__search_plate);
        this.mSubmitArea = findViewById(R.id.abs__submit_area);
        this.mSubmitButton = findViewById(R.id.abs__search_go_btn);
        this.mCloseButton = (ImageView) findViewById(R.id.abs__search_close_btn);
        this.mVoiceButton = findViewById(R.id.abs__search_voice_btn);
        this.mSearchHintIcon = (ImageView) findViewById(R.id.abs__search_mag_icon);
        this.mSearchButton.setOnClickListener(this.mOnClickListener);
        this.mCloseButton.setOnClickListener(this.mOnClickListener);
        this.mSubmitButton.setOnClickListener(this.mOnClickListener);
        this.mVoiceButton.setOnClickListener(this.mOnClickListener);
        this.mQueryTextView.setOnClickListener(this.mOnClickListener);
        this.mQueryTextView.addTextChangedListener(this.mTextWatcher);
        this.mQueryTextView.setOnEditorActionListener(this.mOnEditorActionListener);
        this.mQueryTextView.setOnItemClickListener(this.mOnItemClickListener);
        this.mQueryTextView.setOnItemSelectedListener(this.mOnItemSelectedListener);
        this.mQueryTextView.setOnKeyListener(this.mTextKeyListener);
        this.mQueryTextView.setOnFocusChangeListener(new OnFocusChangeListener() {
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.mOnQueryTextFocusChangeListener != null) {
                    SearchView.this.mOnQueryTextFocusChangeListener.onFocusChange(SearchView.this, z);
                }
            }
        });
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockSearchView, 0, 0);
        setIconifiedByDefault(obtainStyledAttributes.getBoolean(R.styleable.SherlockTheme_actionBarTabTextStyle, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        CharSequence text = obtainStyledAttributes.getText(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        if (!TextUtils.isEmpty(text)) {
            setQueryHint(text);
        }
        dimensionPixelSize = obtainStyledAttributes.getInt(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, -1);
        if (dimensionPixelSize != -1) {
            setImeOptions(dimensionPixelSize);
        }
        dimensionPixelSize = obtainStyledAttributes.getInt(1, -1);
        if (dimensionPixelSize != -1) {
            setInputType(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
        obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockView, 0, 0);
        boolean z = obtainStyledAttributes.getBoolean(0, true);
        obtainStyledAttributes.recycle();
        setFocusable(z);
        this.mVoiceWebSearchIntent = new Intent("android.speech.action.WEB_SEARCH");
        this.mVoiceWebSearchIntent.addFlags(268435456);
        this.mVoiceWebSearchIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.mVoiceAppSearchIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.mVoiceAppSearchIntent.addFlags(268435456);
        this.mDropDownAnchor = findViewById(this.mQueryTextView.getDropDownAnchor());
        if (this.mDropDownAnchor != null) {
            if (VERSION.SDK_INT >= 11) {
                this.mDropDownAnchor.addOnLayoutChangeListener(new OnLayoutChangeListener() {
                    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                        SearchView.this.adjustDropDownSizeAndPosition();
                    }
                });
            } else {
                this.mDropDownAnchor.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                    public void onGlobalLayout() {
                        SearchView.this.adjustDropDownSizeAndPosition();
                    }
                });
            }
        }
        updateViewsVisibility(this.mIconifiedByDefault);
        updateQueryHint();
    }

    private void adjustDropDownSizeAndPosition() {
        if (this.mDropDownAnchor.getWidth() > 1) {
            int dimensionPixelSize;
            Resources resources = getContext().getResources();
            int paddingLeft = this.mSearchPlate.getPaddingLeft();
            Rect rect = new Rect();
            if (this.mIconifiedByDefault) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.abs__dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abs__dropdownitem_icon_width);
            } else {
                dimensionPixelSize = 0;
            }
            this.mQueryTextView.getDropDownBackground().getPadding(rect);
            this.mQueryTextView.setDropDownHorizontalOffset((-(rect.left + dimensionPixelSize)) + paddingLeft);
            this.mQueryTextView.setDropDownWidth(dimensionPixelSize + rect.right + this.mDropDownAnchor.getWidth() + rect.left - paddingLeft);
        }
    }

    private Intent createIntent(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.mUserQuery);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.mAppSearchData != null) {
            intent.putExtra("app_data", this.mAppSearchData);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    private Intent createIntentFromSuggestion(Cursor cursor, int i, String str) {
        Uri uri = null;
        try {
            String toString;
            String columnString = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_action");
            if (columnString == null) {
                columnString = this.mSearchable.getSuggestIntentAction();
            }
            if (columnString == null) {
                columnString = "android.intent.action.SEARCH";
            }
            Object columnString2 = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_data");
            if (columnString2 == null) {
                columnString2 = this.mSearchable.getSuggestIntentData();
            }
            if (toString != null) {
                String columnString3 = SuggestionsAdapter.getColumnString(cursor, "suggest_intent_data_id");
                if (columnString3 != null) {
                    toString = new StringBuilder(String.valueOf(toString)).append("/").append(Uri.encode(columnString3)).toString();
                }
            }
            return createIntent(columnString, toString == null ? uri : Uri.parse(toString), SuggestionsAdapter.getColumnString(cursor, "suggest_intent_extra_data"), SuggestionsAdapter.getColumnString(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            Throwable th = e;
            try {
                int position = cursor.getPosition();
            } catch (RuntimeException e2) {
                position = -1;
            }
            Log.w(LOG_TAG, new StringBuilder("Search suggestions cursor at row ").append(position).append(" returned exception.").toString(), th);
            return uri;
        }
    }

    private Intent createVoiceAppSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        String string;
        String string2;
        String str = null;
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        Parcelable activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Intent intent3 = new Intent(intent);
        String str2 = "free_form";
        int i = 1;
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str2 = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str2);
        intent3.putExtra("android.speech.extra.PROMPT", string);
        intent3.putExtra("android.speech.extra.LANGUAGE", string2);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        str2 = "calling_package";
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra(str2, str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    private Intent createVoiceWebSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void dismissSuggestions() {
        this.mQueryTextView.dismissDropDown();
    }

    private static void ensureImeVisible(AutoCompleteTextView autoCompleteTextView, boolean z) {
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
            method.setAccessible(true);
            method.invoke(autoCompleteTextView, new Object[]{Boolean.valueOf(z)});
        } catch (Exception e) {
        }
    }

    private void forceSuggestionQuery() {
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            declaredMethod.setAccessible(true);
            declaredMethod2.setAccessible(true);
            declaredMethod.invoke(this.mQueryTextView, new Object[0]);
            declaredMethod2.invoke(this.mQueryTextView, new Object[0]);
        } catch (Exception e) {
        }
    }

    private CharSequence getDecoratedHint(CharSequence charSequence) {
        if (!this.mIconifiedByDefault) {
            return charSequence;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.append(charSequence);
        Drawable drawable = getContext().getResources().getDrawable(getSearchIconId());
        int textSize = (int) (((double) this.mQueryTextView.getTextSize()) * 1.25d);
        drawable.setBounds(0, 0, textSize, textSize);
        spannableStringBuilder.setSpan(new ImageSpan(drawable), 1, IcsLinearLayout.SHOW_DIVIDER_MIDDLE, R.styleable.SherlockTheme_searchViewCloseIcon);
        return spannableStringBuilder;
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abs__search_view_preferred_width);
    }

    private int getSearchIconId() {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.searchViewSearchIcon, typedValue, true);
        return typedValue.resourceId;
    }

    private boolean hasVoiceSearch() {
        if (this.mSearchable == null || !this.mSearchable.getVoiceSearchEnabled()) {
            return DBG;
        }
        Intent intent = null;
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
            intent = this.mVoiceWebSearchIntent;
        } else if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
            intent = this.mVoiceAppSearchIntent;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, Menu.CATEGORY_CONTAINER) == null) ? DBG : true;
    }

    static boolean isLandscapeMode(Context context) {
        return context.getResources().getConfiguration().orientation == 2 ? true : DBG;
    }

    private boolean isSubmitAreaEnabled() {
        return ((this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !isIconified()) ? true : DBG;
    }

    private void launchIntent(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e(LOG_TAG, new StringBuilder("Failed launch activity: ").append(intent).toString(), e);
            }
        }
    }

    private void launchQuerySearch(int i, String str, String str2) {
        getContext().startActivity(createIntent("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    private boolean launchSuggestion(int i, int i2, String str) {
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor == null || !cursor.moveToPosition(i)) {
            return DBG;
        }
        launchIntent(createIntentFromSuggestion(cursor, i2, str));
        return true;
    }

    private void onCloseClicked() {
        if (!TextUtils.isEmpty(this.mQueryTextView.getText())) {
            this.mQueryTextView.setText("");
            this.mQueryTextView.requestFocus();
            setImeVisibility(true);
        } else if (!this.mIconifiedByDefault) {
        } else {
            if (this.mOnCloseListener == null || !this.mOnCloseListener.onClose()) {
                clearFocus();
                updateViewsVisibility(true);
            }
        }
    }

    private boolean onItemClicked(int i, int i2, String str) {
        if (this.mOnSuggestionListener != null && this.mOnSuggestionListener.onSuggestionClick(i)) {
            return DBG;
        }
        launchSuggestion(i, 0, null);
        setImeVisibility(DBG);
        dismissSuggestions();
        return true;
    }

    private boolean onItemSelected(int i) {
        if (this.mOnSuggestionListener != null && this.mOnSuggestionListener.onSuggestionSelect(i)) {
            return DBG;
        }
        rewriteQueryFromSuggestion(i);
        return true;
    }

    private void onSearchClicked() {
        updateViewsVisibility(DBG);
        this.mQueryTextView.requestFocus();
        setImeVisibility(true);
        if (this.mOnSearchClickListener != null) {
            this.mOnSearchClickListener.onClick(this);
        }
    }

    private void onSubmitQuery() {
        CharSequence text = this.mQueryTextView.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.mOnQueryChangeListener == null || !this.mOnQueryChangeListener.onQueryTextSubmit(text.toString())) {
                if (this.mSearchable != null) {
                    launchQuerySearch(0, null, text.toString());
                    setImeVisibility(DBG);
                }
                dismissSuggestions();
            }
        }
    }

    private boolean onSuggestionsKey(View view, int i, KeyEvent keyEvent) {
        if (this.mSearchable == null || this.mSuggestionsAdapter == null || keyEvent.getAction() != 0 || !f.a(keyEvent)) {
            return DBG;
        }
        if (i == 66 || i == 84 || i == 61) {
            return onItemClicked(this.mQueryTextView.getListSelection(), 0, null);
        }
        if (i == 21 || i == 22) {
            this.mQueryTextView.setSelection(i == 21 ? 0 : this.mQueryTextView.length());
            this.mQueryTextView.setListSelection(0);
            this.mQueryTextView.clearListSelection();
            ensureImeVisible(this.mQueryTextView, true);
            return true;
        } else if (i == 19 && this.mQueryTextView.getListSelection() == 0) {
            return DBG;
        } else {
            return DBG;
        }
    }

    private void onTextChanged(CharSequence charSequence) {
        boolean z;
        boolean z2 = DBG;
        CharSequence text = this.mQueryTextView.getText();
        this.mUserQuery = text;
        z = !TextUtils.isEmpty(text);
        updateSubmitButton(z);
        if (!z) {
            z2 = true;
        }
        updateVoiceButton(z2);
        updateCloseButton();
        updateSubmitArea();
        if (!(this.mOnQueryChangeListener == null || TextUtils.equals(charSequence, this.mOldQueryText))) {
            this.mOnQueryChangeListener.onQueryTextChange(charSequence.toString());
        }
        this.mOldQueryText = charSequence.toString();
    }

    private void onVoiceClicked() {
        if (this.mSearchable != null) {
            SearchableInfo searchableInfo = this.mSearchable;
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, searchableInfo));
                }
            } catch (ActivityNotFoundException e) {
                Log.w(LOG_TAG, "Could not find voice search activity");
            }
        }
    }

    private void postUpdateFocusedState() {
        post(this.mUpdateDrawableStateRunnable);
    }

    private void rewriteQueryFromSuggestion(int i) {
        CharSequence text = this.mQueryTextView.getText();
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor != null) {
            if (cursor.moveToPosition(i)) {
                CharSequence convertToString = this.mSuggestionsAdapter.convertToString(cursor);
                if (convertToString != null) {
                    setQuery(convertToString);
                } else {
                    setQuery(text);
                }
            } else {
                setQuery(text);
            }
        }
    }

    private void setImeVisibility(boolean z) {
        if (z) {
            post(this.mShowImeRunnable);
        } else {
            removeCallbacks(this.mShowImeRunnable);
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
        }
    }

    private void setQuery(CharSequence charSequence) {
        setText(this.mQueryTextView, charSequence, true);
        this.mQueryTextView.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    private static void setText(AutoCompleteTextView autoCompleteTextView, CharSequence charSequence, boolean z) {
        try {
            Method method = AutoCompleteTextView.class.getMethod("setText", new Class[]{CharSequence.class, Boolean.TYPE});
            method.setAccessible(true);
            method.invoke(autoCompleteTextView, new Object[]{charSequence, Boolean.valueOf(z)});
        } catch (Exception e) {
            autoCompleteTextView.setText(charSequence);
        }
    }

    private static void showSoftInputUnchecked(View view, InputMethodManager inputMethodManager, int i) {
        try {
            Method method = inputMethodManager.getClass().getMethod("showSoftInputUnchecked", new Class[]{Integer.TYPE, ResultReceiver.class});
            method.setAccessible(true);
            method.invoke(inputMethodManager, new Object[]{Integer.valueOf(i), null});
        } catch (Exception e) {
            inputMethodManager.showSoftInput(view, i);
        }
    }

    private void updateCloseButton() {
        boolean z = 1;
        int i = 0;
        int i2 = !TextUtils.isEmpty(this.mQueryTextView.getText());
        if (i2 == 0) {
            if (!this.mIconifiedByDefault || this.mExpandedInActionView) {
                z = false;
            }
        }
        ImageView imageView = this.mCloseButton;
        if (i == 0) {
            i = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        }
        imageView.setVisibility(i);
        this.mCloseButton.getDrawable().setState(i2 != 0 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
    }

    private void updateFocusedState() {
        boolean hasFocus = this.mQueryTextView.hasFocus();
        this.mSearchPlate.getBackground().setState(hasFocus ? FOCUSED_STATE_SET : EMPTY_STATE_SET);
        this.mSubmitArea.getBackground().setState(hasFocus ? FOCUSED_STATE_SET : EMPTY_STATE_SET);
        invalidate();
    }

    private void updateQueryHint() {
        if (this.mQueryHint != null) {
            this.mQueryTextView.setHint(getDecoratedHint(this.mQueryHint));
        } else if (this.mSearchable != null) {
            CharSequence charSequence = null;
            int hintId = this.mSearchable.getHintId();
            if (hintId != 0) {
                charSequence = getContext().getString(hintId);
            }
            if (charSequence != null) {
                this.mQueryTextView.setHint(getDecoratedHint(charSequence));
            }
        } else {
            this.mQueryTextView.setHint(getDecoratedHint(""));
        }
    }

    private void updateSearchAutoComplete() {
        int i = 1;
        this.mQueryTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mQueryTextView.setImeOptions(this.mSearchable.getImeOptions());
        int inputType = this.mSearchable.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                inputType = (inputType | 65536) | 524288;
            }
        }
        this.mQueryTextView.setInputType(inputType);
        if (this.mSuggestionsAdapter != null) {
            this.mSuggestionsAdapter.changeCursor(null);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            this.mSuggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
            this.mQueryTextView.setAdapter(this.mSuggestionsAdapter);
            SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) this.mSuggestionsAdapter;
            if (this.mQueryRefinement) {
                i = IcsLinearLayout.SHOW_DIVIDER_MIDDLE;
            }
            suggestionsAdapter.setQueryRefinement(i);
        }
    }

    private void updateSubmitArea() {
        int i = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        if (isSubmitAreaEnabled()) {
            if (this.mSubmitButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0) {
                i = 0;
            }
        }
        this.mSubmitArea.setVisibility(i);
    }

    private void updateSubmitButton(boolean z) {
        int i = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        if (this.mSubmitButtonEnabled && isSubmitAreaEnabled() && hasFocus()) {
            if (z || !this.mVoiceButtonEnabled) {
                i = 0;
            }
        }
        this.mSubmitButton.setVisibility(i);
    }

    private void updateViewsVisibility(boolean z) {
        int i;
        boolean z2;
        int i2 = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        boolean z3 = DBG;
        this.mIconified = z;
        i = z ? 0 : 8;
        z2 = !TextUtils.isEmpty(this.mQueryTextView.getText());
        this.mSearchButton.setVisibility(i);
        updateSubmitButton(z2);
        this.mSearchEditFrame.setVisibility(z ? 8 : 0);
        ImageView imageView = this.mSearchHintIcon;
        if (!this.mIconifiedByDefault) {
            i2 = 0;
        }
        imageView.setVisibility(i2);
        updateCloseButton();
        if (!z2) {
            z3 = true;
        }
        updateVoiceButton(z3);
        updateSubmitArea();
    }

    private void updateVoiceButton(boolean z) {
        int i;
        if (this.mVoiceButtonEnabled && !isIconified() && z) {
            i = 0;
            this.mSubmitButton.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        } else {
            i = 8;
        }
        this.mVoiceButton.setVisibility(i);
    }

    public void clearFocus() {
        this.mClearingFocus = true;
        setImeVisibility(DBG);
        super.clearFocus();
        this.mQueryTextView.clearFocus();
        this.mClearingFocus = false;
    }

    public int getImeOptions() {
        return this.mQueryTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mQueryTextView.getInputType();
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public CharSequence getQuery() {
        return this.mQueryTextView.getText();
    }

    public CharSequence getQueryHint() {
        if (this.mQueryHint != null) {
            return this.mQueryHint;
        }
        if (this.mSearchable == null) {
            return null;
        }
        int hintId = this.mSearchable.getHintId();
        return hintId != 0 ? getContext().getString(hintId) : null;
    }

    public a getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    public boolean isIconfiedByDefault() {
        return this.mIconifiedByDefault;
    }

    public boolean isIconified() {
        return this.mIconified;
    }

    public boolean isQueryRefinementEnabled() {
        return this.mQueryRefinement;
    }

    public boolean isSubmitButtonEnabled() {
        return this.mSubmitButtonEnabled;
    }

    public void onActionViewCollapsed() {
        clearFocus();
        updateViewsVisibility(true);
        this.mQueryTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = false;
    }

    public void onActionViewExpanded() {
        if (!this.mExpandedInActionView) {
            this.mExpandedInActionView = true;
            this.mCollapsedImeOptions = this.mQueryTextView.getImeOptions();
            this.mQueryTextView.setImeOptions(this.mCollapsedImeOptions | 33554432);
            this.mQueryTextView.setText("");
            setIconified(DBG);
        }
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.mUpdateDrawableStateRunnable);
        post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SearchView.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SearchView.class.getName());
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return this.mSearchable == null ? DBG : super.onKeyDown(i, keyEvent);
    }

    protected void onMeasure(int i, int i2) {
        if (isIconified()) {
            super.onMeasure(i, i2);
        } else {
            int mode = MeasureSpec.getMode(i);
            int size = MeasureSpec.getSize(i);
            switch (mode) {
                case Integer.MIN_VALUE:
                    size = this.mMaxWidth > 0 ? Math.min(this.mMaxWidth, size) : Math.min(getPreferredWidth(), size);
                    break;
                case IcsToast.LENGTH_SHORT:
                    size = this.mMaxWidth > 0 ? this.mMaxWidth : getPreferredWidth();
                    break;
                case 1073741824:
                    if (this.mMaxWidth > 0) {
                        size = Math.min(this.mMaxWidth, size);
                    }
                    break;
            }
            super.onMeasure(MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }
    }

    void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    void onTextFocusChanged() {
        updateViewsVisibility(isIconified());
        postUpdateFocusedState();
        if (this.mQueryTextView.hasFocus()) {
            forceSuggestionQuery();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        postUpdateFocusedState();
    }

    public boolean requestFocus(int i, Rect rect) {
        if (this.mClearingFocus || !isFocusable()) {
            return DBG;
        }
        if (isIconified()) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.mQueryTextView.requestFocus(i, rect);
        if (requestFocus) {
            updateViewsVisibility(DBG);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.mAppSearchData = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            onCloseClicked();
        } else {
            onSearchClicked();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.mIconifiedByDefault != z) {
            this.mIconifiedByDefault = z;
            updateViewsVisibility(z);
            updateQueryHint();
        }
    }

    public void setImeOptions(int i) {
        this.mQueryTextView.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.mQueryTextView.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.mOnCloseListener = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.mOnQueryChangeListener = onQueryTextListener;
    }

    public void setOnSearchClickListener(OnClickListener onClickListener) {
        this.mOnSearchClickListener = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.mOnSuggestionListener = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.mQueryTextView.setText(charSequence);
        if (charSequence != null) {
            this.mQueryTextView.setSelection(this.mQueryTextView.length());
            this.mUserQuery = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            onSubmitQuery();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.mQueryHint = charSequence;
        updateQueryHint();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.mQueryRefinement = z;
        if (this.mSuggestionsAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) this.mSuggestionsAdapter).setQueryRefinement(z ? IcsLinearLayout.SHOW_DIVIDER_MIDDLE : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.mSearchable = searchableInfo;
        if (this.mSearchable != null) {
            updateSearchAutoComplete();
            updateQueryHint();
        }
        this.mVoiceButtonEnabled = hasVoiceSearch();
        if (this.mVoiceButtonEnabled) {
            this.mQueryTextView.setPrivateImeOptions(IME_OPTION_NO_MICROPHONE);
        }
        updateViewsVisibility(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.mSubmitButtonEnabled = z;
        updateViewsVisibility(isIconified());
    }

    public void setSuggestionsAdapter(a aVar) {
        this.mSuggestionsAdapter = aVar;
        this.mQueryTextView.setAdapter(this.mSuggestionsAdapter);
    }
}