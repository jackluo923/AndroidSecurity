.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;
.super Ljava/lang/Object;
.source "MoreDataFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    return-object v0
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Lcom/alipay/android/phone/globalsearch/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/a/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "loading... return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "show loading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/u;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;)V

    .line 85
    const-wide/16 v2, 0x3e8

    .line 77
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "scroll to the top"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
