package com.actionbarsherlock.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import android.view.View;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class MenuInflater {
    private static final Class[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
    private static final Class[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
    private static final String LOG_TAG = "MenuInflater";
    private static final int NO_ID = 0;
    private static final String XML_GROUP = "group";
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";
    private final Object[] mActionProviderConstructorArguments;
    private final Object[] mActionViewConstructorArguments;
    private Context mContext;
    private Object mRealOwner;

    class InflatedOnMenuItemClickListener implements OnMenuItemClickListener {
        private static final Class[] PARAM_TYPES;
        private Method mMethod;
        private Object mRealOwner;

        static {
            PARAM_TYPES = new Class[]{MenuItem.class};
        }

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.mRealOwner = obj;
            Class cls = obj.getClass();
            try {
                this.mMethod = cls.getMethod(str, PARAM_TYPES);
            } catch (Exception e) {
                Throwable th = e;
                InflateException inflateException = new InflateException(new StringBuilder("Couldn't resolve menu item onClick handler ").append(str).append(" in class ").append(cls.getName()).toString());
                inflateException.initCause(th);
                throw inflateException;
            }
        }

        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.mMethod.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.mMethod.invoke(this.mRealOwner, new Object[]{menuItem})).booleanValue();
                } else {
                    this.mMethod.invoke(this.mRealOwner, new Object[]{menuItem});
                    return true;
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    class MenuState {
        private static final int defaultGroupId = 0;
        private static final int defaultItemCategory = 0;
        private static final int defaultItemCheckable = 0;
        private static final boolean defaultItemChecked = false;
        private static final boolean defaultItemEnabled = true;
        private static final int defaultItemId = 0;
        private static final int defaultItemOrder = 0;
        private static final boolean defaultItemVisible = true;
        private int groupCategory;
        private int groupCheckable;
        private boolean groupEnabled;
        private int groupId;
        private int groupOrder;
        private boolean groupVisible;
        private ActionProvider itemActionProvider;
        private String itemActionProviderClassName;
        private String itemActionViewClassName;
        private int itemActionViewLayout;
        private boolean itemAdded;
        private char itemAlphabeticShortcut;
        private int itemCategoryOrder;
        private int itemCheckable;
        private boolean itemChecked;
        private boolean itemEnabled;
        private int itemIconResId;
        private int itemId;
        private String itemListenerMethodName;
        private char itemNumericShortcut;
        private int itemShowAsAction;
        private CharSequence itemTitle;
        private CharSequence itemTitleCondensed;
        private boolean itemVisible;
        private Menu menu;

        public MenuState(Menu menu) {
            this.menu = menu;
            resetGroup();
        }

        private char getShortcut(String str) {
            return str == null ? '\u0000' : str.charAt(defaultItemOrder);
        }

        private Object newInstance(String str, Class[] clsArr, Object[] objArr) {
            try {
                return MenuInflater.this.mContext.getClassLoader().loadClass(str).getConstructor(clsArr).newInstance(objArr);
            } catch (Exception e) {
                Log.w(LOG_TAG, new StringBuilder("Cannot instantiate class: ").append(str).toString(), e);
                return null;
            }
        }

        private void setItem(MenuItem menuItem) {
            boolean z = defaultItemVisible;
            menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable > 0).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId).setAlphabeticShortcut(this.itemAlphabeticShortcut).setNumericShortcut(this.itemNumericShortcut);
            if (this.itemShowAsAction >= 0) {
                menuItem.setShowAsAction(this.itemShowAsAction);
            }
            if (this.itemListenerMethodName == null || !MenuInflater.this.mContext.isRestricted()) {
                menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(MenuInflater.this.mRealOwner, this.itemListenerMethodName));
            } else {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (this.itemCheckable >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(defaultItemVisible);
                } else {
                    this.menu.setGroupCheckable(this.groupId, defaultItemVisible, defaultItemVisible);
                }
            }
            if (this.itemActionViewClassName != null) {
                menuItem.setActionView((View) newInstance(this.itemActionViewClassName, ACTION_VIEW_CONSTRUCTOR_SIGNATURE, MenuInflater.this.mActionViewConstructorArguments));
            } else {
                z = false;
            }
            if (this.itemActionViewLayout > 0) {
                if (z) {
                    Log.w(LOG_TAG, "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(this.itemActionViewLayout);
                }
            }
            if (this.itemActionProvider != null) {
                menuItem.setActionProvider(this.itemActionProvider);
            }
        }

        public void addItem() {
            this.itemAdded = true;
            setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        }

        public SubMenu addSubMenuItem() {
            this.itemAdded = true;
            SubMenu addSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
            setItem(addSubMenu.getItem());
            return addSubMenu;
        }

        public boolean hasAddedItem() {
            return this.itemAdded;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = MenuInflater.this.mContext.obtainStyledAttributes(attributeSet, R.styleable.SherlockMenuGroup);
            this.groupId = obtainStyledAttributes.getResourceId(1, defaultItemOrder);
            this.groupCategory = obtainStyledAttributes.getInt(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER, defaultItemOrder);
            this.groupOrder = obtainStyledAttributes.getInt(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, defaultItemOrder);
            this.groupCheckable = obtainStyledAttributes.getInt(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, defaultItemOrder);
            this.groupVisible = obtainStyledAttributes.getBoolean(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, defaultItemVisible);
            this.groupEnabled = obtainStyledAttributes.getBoolean(defaultItemOrder, defaultItemVisible);
            obtainStyledAttributes.recycle();
        }

        public void readItem(AttributeSet attributeSet) {
            int i = 1;
            TypedArray obtainStyledAttributes = MenuInflater.this.mContext.obtainStyledAttributes(attributeSet, R.styleable.SherlockMenuItem);
            this.itemId = obtainStyledAttributes.getResourceId(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, defaultItemOrder);
            this.itemCategoryOrder = (obtainStyledAttributes.getInt(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, this.groupCategory) & -65536) | (obtainStyledAttributes.getInt(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT, this.groupOrder) & 65535);
            this.itemTitle = obtainStyledAttributes.getText(7);
            this.itemTitleCondensed = obtainStyledAttributes.getText(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            this.itemIconResId = obtainStyledAttributes.getResourceId(defaultItemOrder, defaultItemOrder);
            this.itemAlphabeticShortcut = getShortcut(obtainStyledAttributes.getString(9));
            this.itemNumericShortcut = getShortcut(obtainStyledAttributes.getString(10));
            if (obtainStyledAttributes.hasValue(11)) {
                this.itemCheckable = obtainStyledAttributes.getBoolean(11, defaultItemChecked) ? 1 : 0;
            } else {
                this.itemCheckable = this.groupCheckable;
            }
            this.itemChecked = obtainStyledAttributes.getBoolean(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER, defaultItemChecked);
            this.itemVisible = obtainStyledAttributes.getBoolean(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, this.groupVisible);
            this.itemEnabled = obtainStyledAttributes.getBoolean(1, this.groupEnabled);
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(13, typedValue);
            this.itemShowAsAction = typedValue.type == 17 ? typedValue.data : -1;
            this.itemListenerMethodName = obtainStyledAttributes.getString(12);
            this.itemActionViewLayout = obtainStyledAttributes.getResourceId(14, defaultItemOrder);
            typedValue = new TypedValue();
            obtainStyledAttributes.getValue(15, typedValue);
            this.itemActionViewClassName = typedValue.type == 3 ? typedValue.string.toString() : null;
            typedValue = new TypedValue();
            obtainStyledAttributes.getValue(CATEGORY_SHIFT, typedValue);
            this.itemActionProviderClassName = typedValue.type == 3 ? typedValue.string.toString() : null;
            if (this.itemActionProviderClassName == null) {
                i = 0;
            }
            if (i != 0 && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
                this.itemActionProvider = (ActionProvider) newInstance(this.itemActionProviderClassName, ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, MenuInflater.this.mActionProviderConstructorArguments);
            } else {
                if (i != 0) {
                    Log.w(LOG_TAG, "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.itemActionProvider = null;
            }
            obtainStyledAttributes.recycle();
            this.itemAdded = false;
        }

        public void resetGroup() {
            this.groupId = 0;
            this.groupCategory = 0;
            this.groupOrder = 0;
            this.groupCheckable = 0;
            this.groupVisible = true;
            this.groupEnabled = true;
        }
    }

    static {
        Class[] clsArr = new Class[]{Context.class};
        ACTION_VIEW_CONSTRUCTOR_SIGNATURE = clsArr;
        ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = clsArr;
    }

    public MenuInflater(Context context) {
        this.mContext = context;
        this.mRealOwner = context;
        this.mActionViewConstructorArguments = new Object[]{context};
        this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
    }

    public MenuInflater(Context context, Object obj) {
        this.mContext = context;
        this.mRealOwner = obj;
        this.mActionViewConstructorArguments = new Object[]{context};
        this.mActionProviderConstructorArguments = this.mActionViewConstructorArguments;
    }

    private void parseMenu(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        MenuState menuState = new MenuState(menu);
        int eventType = xmlPullParser.getEventType();
        while (eventType != 2) {
            eventType = xmlPullParser.next();
            if (eventType == 1) {
                break;
            }
        }
        String name = xmlPullParser.getName();
        if (name.equals(XML_MENU)) {
            eventType = xmlPullParser.next();
            Object obj = null;
            boolean z = false;
            int i = eventType;
            boolean z2 = false;
            while (eventType == 0) {
                boolean z3;
                String name2;
                switch (z3) {
                    case IcsToast.LENGTH_LONG:
                        throw new RuntimeException("Unexpected end of document");
                    case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                        if (i == 0) {
                            name2 = xmlPullParser.getName();
                            if (name2.equals(XML_GROUP)) {
                                menuState.readGroup(attributeSet);
                                i = i;
                            } else if (name2.equals(XML_ITEM)) {
                                menuState.readItem(attributeSet);
                                i = i;
                            } else if (name2.equals(XML_MENU)) {
                                parseMenu(xmlPullParser, attributeSet, menuState.addSubMenuItem());
                                i = i;
                            } else {
                                String str = name2;
                                z3 = true;
                            }
                        }
                        i = i;
                        break;
                    case FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER:
                        name2 = xmlPullParser.getName();
                        if (i != 0 && name2.equals(obj)) {
                            obj = null;
                            z3 = false;
                        } else if (name2.equals(XML_GROUP)) {
                            menuState.resetGroup();
                            i = i;
                        } else if (name2.equals(XML_ITEM)) {
                            if (!menuState.hasAddedItem()) {
                                if (menuState.itemActionProvider == null || !menuState.itemActionProvider.hasSubMenu()) {
                                    menuState.addItem();
                                    i = i;
                                } else {
                                    menuState.addSubMenuItem();
                                    i = i;
                                }
                            }
                            i = i;
                        } else {
                            if (name2.equals(XML_MENU)) {
                                z2 = true;
                                i = i;
                            }
                            i = i;
                        }
                        break;
                    default:
                        i = i;
                        break;
                }
                int i2 = i;
                i = xmlPullParser.next();
                int i3 = i2;
            }
        } else {
            throw new RuntimeException(new StringBuilder("Expecting menu, got ").append(name).toString());
        }
    }

    public void inflate(int i, Menu menu) {
        XmlResourceParser xmlResourceParser = null;
        try {
            Object layout = this.mContext.getResources().getLayout(i);
            parseMenu(layout, Xml.asAttributeSet(layout), menu);
            if (layout != null) {
                layout.close();
            }
        } catch (XmlPullParserException e) {
            throw new InflateException("Error inflating menu XML", e);
        } catch (IOException e2) {
            throw new InflateException("Error inflating menu XML", e2);
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}