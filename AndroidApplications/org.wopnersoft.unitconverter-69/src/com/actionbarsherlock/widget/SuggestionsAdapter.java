package com.actionbarsherlock.widget;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v4.widget.p;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.view.MenuItem;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

// compiled from: ProGuard
class SuggestionsAdapter extends p implements OnClickListener {
    private static final boolean DBG = false;
    static final int INVALID_INDEX = -1;
    private static final String LOG_TAG = "SuggestionsAdapter";
    private static final int QUERY_LIMIT = 50;
    static final int REFINE_ALL = 2;
    static final int REFINE_BY_ENTRY = 1;
    static final int REFINE_NONE = 0;
    private boolean mClosed;
    private int mFlagsCol;
    private int mIconName1Col;
    private int mIconName2Col;
    private WeakHashMap mOutsideDrawablesCache;
    private Context mProviderContext;
    private int mQueryRefinement;
    private SearchManager mSearchManager;
    private SearchView mSearchView;
    private SearchableInfo mSearchable;
    private int mText1Col;
    private int mText2Col;
    private int mText2UrlCol;
    private ColorStateList mUrlColor;

    // compiled from: ProGuard
    final class ChildViewCache {
        public final ImageView mIcon1;
        public final ImageView mIcon2;
        public final ImageView mIconRefine;
        public final TextView mText1;
        public final TextView mText2;

        public ChildViewCache(View view) {
            this.mText1 = (TextView) view.findViewById(16908308);
            this.mText2 = (TextView) view.findViewById(16908309);
            this.mIcon1 = (ImageView) view.findViewById(16908295);
            this.mIcon2 = (ImageView) view.findViewById(16908296);
            this.mIconRefine = (ImageView) view.findViewById(R.id.edit_query);
        }
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        super(context, R.layout.abs__search_dropdown_item_icons_2line, null, true);
        this.mClosed = false;
        this.mQueryRefinement = 1;
        this.mText1Col = -1;
        this.mText2Col = -1;
        this.mText2UrlCol = -1;
        this.mIconName1Col = -1;
        this.mIconName2Col = -1;
        this.mFlagsCol = -1;
        this.mSearchManager = (SearchManager) this.mContext.getSystemService("search");
        this.mSearchable = searchableInfo;
        this.mProviderContext = this.mContext;
        this.mSearchView = searchView;
        this.mOutsideDrawablesCache = weakHashMap;
    }

    private Drawable checkIconCache(String str) {
        ConstantState constantState = (ConstantState) this.mOutsideDrawablesCache.get(str);
        return constantState == null ? null : constantState.newDrawable();
    }

    private CharSequence formatUrl(CharSequence charSequence) {
        if (this.mUrlColor == null) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R.attr.textColorSearchUrl, typedValue, true);
            this.mUrlColor = this.mContext.getResources().getColorStateList(typedValue.resourceId);
        }
        CharSequence spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.mUrlColor, null), 0, charSequence.length(), R.styleable.SherlockTheme_searchViewCloseIcon);
        return spannableString;
    }

    private Drawable getActivityIcon(ComponentName componentName) {
        Drawable drawable = null;
        PackageManager packageManager = this.mContext.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, NotificationCompat.FLAG_HIGH_PRIORITY);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return drawable;
            }
            Drawable drawable2 = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable2 != null) {
                return drawable2;
            }
            Log.w(LOG_TAG, new StringBuilder("Invalid icon resource ").append(iconResource).append(" for ").append(componentName.flattenToShortString()).toString());
            return drawable;
        } catch (NameNotFoundException e) {
            Log.w(LOG_TAG, e.toString());
            return drawable;
        }
    }

    private Drawable getActivityIconWithCache(ComponentName componentName) {
        Object obj = null;
        String flattenToShortString = componentName.flattenToShortString();
        if (this.mOutsideDrawablesCache.containsKey(flattenToShortString)) {
            ConstantState constantState = (ConstantState) this.mOutsideDrawablesCache.get(flattenToShortString);
            return constantState == null ? null : constantState.newDrawable(this.mProviderContext.getResources());
        } else {
            Drawable activityIcon = getActivityIcon(componentName);
            if (activityIcon != null) {
                obj = activityIcon.getConstantState();
            }
            this.mOutsideDrawablesCache.put(flattenToShortString, obj);
            return activityIcon;
        }
    }

    public static String getColumnString(Cursor cursor, String str) {
        return getStringOrNull(cursor, cursor.getColumnIndex(str));
    }

    private Drawable getDefaultIcon1(Cursor cursor) {
        return this.mContext.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable getDrawable(Uri uri) {
        InputStream openInputStream;
        Drawable drawable = null;
        try {
            if ("android.resource".equals(uri.getScheme())) {
                return getTheDrawable(uri);
            }
            openInputStream = this.mProviderContext.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                throw new FileNotFoundException(new StringBuilder("Failed to open ").append(uri).toString());
            }
            Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
            try {
                openInputStream.close();
                return createFromStream;
            } catch (IOException e) {
                Log.e(LOG_TAG, new StringBuilder("Error closing icon stream for ").append(uri).toString(), e);
                return createFromStream;
            }
        } catch (NotFoundException e2) {
            throw new FileNotFoundException(new StringBuilder("Resource does not exist: ").append(uri).toString());
        } catch (FileNotFoundException e3) {
            Log.w(LOG_TAG, new StringBuilder("Icon not found: ").append(uri).append(", ").append(e3.getMessage()).toString());
            return drawable;
        } catch (Throwable th) {
            try {
                openInputStream.close();
            } catch (IOException e4) {
                Log.e(LOG_TAG, new StringBuilder("Error closing icon stream for ").append(uri).toString(), e4);
            }
        }
    }

    private Drawable getDrawableFromResourceValue(String str) {
        if (str == null || str.length() == 0 || "0".equals(str)) {
            return null;
        }
        try {
            int parseInt = Integer.parseInt(str);
            String toString = new StringBuilder("android.resource://").append(this.mProviderContext.getPackageName()).append("/").append(parseInt).toString();
            checkIconCache = checkIconCache(toString);
            if (checkIconCache != null) {
                return checkIconCache;
            }
            checkIconCache = this.mProviderContext.getResources().getDrawable(parseInt);
            storeInIconCache(toString, checkIconCache);
            return checkIconCache;
        } catch (NumberFormatException e) {
            checkIconCache = checkIconCache(str);
            Drawable checkIconCache2;
            if (checkIconCache2 != null) {
                return checkIconCache2;
            }
            checkIconCache2 = getDrawable(Uri.parse(str));
            storeInIconCache(str, checkIconCache2);
            return checkIconCache2;
        } catch (NotFoundException e2) {
            Log.w(LOG_TAG, new StringBuilder("Icon resource not found: ").append(str).toString());
            return null;
        }
    }

    private Drawable getIcon1(Cursor cursor) {
        if (this.mIconName1Col == -1) {
            return null;
        }
        Drawable drawableFromResourceValue = getDrawableFromResourceValue(cursor.getString(this.mIconName1Col));
        return drawableFromResourceValue == null ? getDefaultIcon1(cursor) : drawableFromResourceValue;
    }

    private Drawable getIcon2(Cursor cursor) {
        return this.mIconName2Col == -1 ? null : getDrawableFromResourceValue(cursor.getString(this.mIconName2Col));
    }

    private static String getStringOrNull(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e(LOG_TAG, "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    private void setViewDrawable(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
        } else {
            imageView.setVisibility(0);
            drawable.setVisible(DBG, DBG);
            drawable.setVisible(true, DBG);
        }
    }

    private void setViewText(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        } else {
            textView.setVisibility(0);
        }
    }

    private void storeInIconCache(String str, Drawable drawable) {
        if (drawable != null) {
            this.mOutsideDrawablesCache.put(str, drawable.getConstantState());
        }
    }

    private void updateSpinnerState(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null && !extras.getBoolean("in_progress")) {
        }
    }

    public void bindView(View view, Context context, Cursor cursor) {
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i = this.mFlagsCol != -1 ? cursor.getInt(this.mFlagsCol) : 0;
        if (childViewCache.mText1 != null) {
            setViewText(childViewCache.mText1, getStringOrNull(cursor, this.mText1Col));
        }
        if (childViewCache.mText2 != null) {
            CharSequence stringOrNull = getStringOrNull(cursor, this.mText2UrlCol);
            stringOrNull = stringOrNull != null ? formatUrl(stringOrNull) : getStringOrNull(cursor, this.mText2Col);
            if (TextUtils.isEmpty(stringOrNull)) {
                if (childViewCache.mText1 != null) {
                    childViewCache.mText1.setSingleLine(DBG);
                    childViewCache.mText1.setMaxLines(REFINE_ALL);
                }
            } else if (childViewCache.mText1 != null) {
                childViewCache.mText1.setSingleLine(true);
                childViewCache.mText1.setMaxLines(REFINE_BY_ENTRY);
            }
            setViewText(childViewCache.mText2, stringOrNull);
        }
        if (childViewCache.mIcon1 != null) {
            setViewDrawable(childViewCache.mIcon1, getIcon1(cursor), ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
        if (childViewCache.mIcon2 != null) {
            setViewDrawable(childViewCache.mIcon2, getIcon2(cursor), MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        if (this.mQueryRefinement == 2 || (this.mQueryRefinement == 1 && (i & 1) != 0)) {
            childViewCache.mIconRefine.setVisibility(0);
            childViewCache.mIconRefine.setTag(childViewCache.mText1.getText());
            childViewCache.mIconRefine.setOnClickListener(this);
        } else {
            childViewCache.mIconRefine.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    public void changeCursor(Cursor cursor) {
        if (this.mClosed) {
            Log.w(LOG_TAG, "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
            }
        } else {
            try {
                super.changeCursor(cursor);
                if (cursor != null) {
                    this.mText1Col = cursor.getColumnIndex("suggest_text_1");
                    this.mText2Col = cursor.getColumnIndex("suggest_text_2");
                    this.mText2UrlCol = cursor.getColumnIndex("suggest_text_2_url");
                    this.mIconName1Col = cursor.getColumnIndex("suggest_icon_1");
                    this.mIconName2Col = cursor.getColumnIndex("suggest_icon_2");
                    this.mFlagsCol = cursor.getColumnIndex("suggest_flags");
                }
            } catch (Exception e) {
                Log.e(LOG_TAG, "error changing cursor and caching columns", e);
            }
        }
    }

    public void close() {
        changeCursor(null);
        this.mClosed = true;
    }

    public CharSequence convertToString(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        String columnString = getColumnString(cursor, "suggest_intent_query");
        return columnString != null ? columnString : null;
    }

    public int getQueryRefinement() {
        return this.mQueryRefinement;
    }

    public Cursor getSuggestions(String str, int i) {
        if (this.mSearchable == null) {
            return null;
        }
        String suggestAuthority = this.mSearchable.getSuggestAuthority();
        if (suggestAuthority == null) {
            return null;
        }
        String[] strArr;
        Builder fragment = new Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = this.mSearchable.getSuggestPath();
        if (suggestPath != null) {
            fragment.appendEncodedPath(suggestPath);
        }
        fragment.appendPath("search_suggest_query");
        String suggestSelection = this.mSearchable.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            fragment.appendPath(str);
            strArr = null;
        }
        if (i > 0) {
            fragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.mContext.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
    }

    public Drawable getTheDrawable(Uri uri) {
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException(new StringBuilder("No authority: ").append(uri).toString());
        }
        try {
            Resources resourcesForApplication = this.mContext.getPackageManager().getResourcesForApplication(authority);
            List pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException(new StringBuilder("No path: ").append(uri).toString());
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    size = Integer.parseInt((String) pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException(new StringBuilder("Single path segment is not a resource ID: ").append(uri).toString());
                }
            } else if (size == 2) {
                size = resourcesForApplication.getIdentifier((String) pathSegments.get(REFINE_BY_ENTRY), (String) pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException(new StringBuilder("More than two path segments: ").append(uri).toString());
            }
            if (size != 0) {
                return resourcesForApplication.getDrawable(size);
            }
            throw new FileNotFoundException(new StringBuilder("No resource found for: ").append(uri).toString());
        } catch (NameNotFoundException e2) {
            throw new FileNotFoundException(new StringBuilder("No package found for authority: ").append(uri).toString());
        }
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Throwable th = e;
            Log.w(LOG_TAG, "Search suggestions cursor threw exception.", th);
            View newView = newView(this.mContext, this.mCursor, viewGroup);
            if (newView != null) {
                ((ChildViewCache) newView.getTag()).mText1.setText(th.toString());
            }
            return newView;
        }
    }

    public boolean hasStableIds() {
        return DBG;
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View newView = super.newView(context, cursor, viewGroup);
        newView.setTag(new ChildViewCache(newView));
        return newView;
    }

    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        updateSpinnerState(getCursor());
    }

    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        updateSpinnerState(getCursor());
    }

    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.mSearchView.onQueryRefine((CharSequence) tag);
        }
    }

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String toString = charSequence == null ? "" : charSequence.toString();
        if (this.mSearchView.getVisibility() != 0 || this.mSearchView.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor suggestions = getSuggestions(toString, QUERY_LIMIT);
            if (suggestions != null) {
                suggestions.getCount();
                return suggestions;
            }
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, "Search suggestions query threw an exception.", e);
        }
        return null;
    }

    public void setQueryRefinement(int i) {
        this.mQueryRefinement = i;
    }
}