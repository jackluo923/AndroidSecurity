.class public final Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/actionbarsherlock/app/ActionBar;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->b:Z

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->a:Lcom/actionbarsherlock/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final setActionBar(Lcom/actionbarsherlock/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->a:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->requestLayout()V

    return-void
.end method

.method public final setEnablePadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->b:Z

    invoke-virtual {p0}, Lcom/appyet/activity/YouTubePlayerActivity$ActionBarPaddedFrameLayout;->requestLayout()V

    return-void
.end method
