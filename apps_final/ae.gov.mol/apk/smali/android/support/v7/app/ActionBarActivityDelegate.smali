.class abstract Landroid/support/v7/app/ActionBarActivityDelegate;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegate"

.field static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field private mActionBar:Landroid/support/v7/app/ActionBar;

.field final mActivity:Landroid/support/v7/app/ActionBarActivity;

.field mHasActionBar:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field mOverlayActionBar:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 67
    return-void
.end method

.method static createDelegate(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/ActionBarActivityDelegate;
    .locals 2
    .param p0, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .local v0, "version":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateICS;

    invoke-direct {v1, p0}, Landroid/support/v7/app/ActionBarActivityDelegateICS;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 51
    :goto_0
    return-object v1

    .line 48
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 49
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateHC;

    invoke-direct {v1, p0}, Landroid/support/v7/app/ActionBarActivityDelegateHC;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {v1, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0
.end method


# virtual methods
.method abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract createSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method

.method protected final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 173
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    .line 176
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    :cond_0
    return-object v1
.end method

.method abstract getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.end method

.method getMenuInflater()Landroid/view/MenuInflater;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 88
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Landroid/support/v7/internal/view/SupportMenuInflater;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    .line 94
    .end local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v1

    .line 91
    .restart local v0    # "ab":Landroid/support/v7/app/ActionBar;
    :cond_1
    new-instance v1, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v2, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mMenuInflater:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method final getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    if-eqz v0, :cond_2

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivityDelegate;->createSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    return-object v0

    .line 80
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActionBar:Landroid/support/v7/app/ActionBar;

    goto :goto_0
.end method

.method protected final getUiOptionsFromMetadata()Ljava/lang/String;
    .locals 7

    .prologue
    .line 156
    :try_start_0
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 157
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 160
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 161
    .local v3, "uiOptions":Ljava/lang/String;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 162
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.support.UI_OPTIONS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 168
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "uiOptions":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActionBarActivityDelegate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUiOptionsFromMetadata: Activity \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' not in manifest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x0

    goto :goto_0
.end method

.method abstract onBackPressed()Z
.end method

.method abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mActivity:Landroid/support/v7/app/ActionBarActivity;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mHasActionBar:Z

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/ActionBarActivityDelegate;->mOverlayActionBar:Z

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method abstract onCreatePanelMenu(ILandroid/view/Menu;)Z
.end method

.method abstract onCreatePanelView(I)Landroid/view/View;
.end method

.method abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method abstract onPostResume()V
.end method

.method abstract onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract onStop()V
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method abstract setContentView(I)V
.end method

.method abstract setContentView(Landroid/view/View;)V
.end method

.method abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract setSupportProgress(I)V
.end method

.method abstract setSupportProgressBarIndeterminate(Z)V
.end method

.method abstract setSupportProgressBarIndeterminateVisibility(Z)V
.end method

.method abstract setSupportProgressBarVisibility(Z)V
.end method

.method abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.end method

.method abstract supportInvalidateOptionsMenu()V
.end method

.method abstract supportRequestWindowFeature(I)Z
.end method
