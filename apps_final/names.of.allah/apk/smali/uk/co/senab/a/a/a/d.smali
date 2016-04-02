.class public final Luk/co/senab/a/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Luk/co/senab/a/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/content/Context;
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/app/SherlockActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    :goto_2
    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockListActivity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/app/SherlockListActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockExpandableListActivity;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/app/SherlockExpandableListActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockExpandableListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object p1, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method
