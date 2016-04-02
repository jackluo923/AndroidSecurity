.class Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;
.super Ljava/lang/Object;
.source "RefreshAndLoadMoreViewController.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRefresh()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$0(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    .line 182
    const/4 v2, 0x0

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APDefaultPullRefreshOverView;

    .line 183
    return-object v0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$7(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;Z)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    # getter for: Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->h:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;
    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$4(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$ActionCallback;->onRefresh()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController$2;->this$0:Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;

    invoke-static {v0}, Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;->access$8(Lcom/alipay/mobile/wealth/common/component/RefreshAndLoadMoreViewController;)V

    .line 174
    return-void
.end method
