.class final Lcom/alipay/android/widgets/asset/f;
.super Ljava/lang/Object;
.source "AssetWidgetGroup.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPullRefreshView$RefreshListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canRefresh()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final getOverView()Lcom/alipay/mobile/commonui/widget/APOverView;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->c(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 188
    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_framework_pullrefresh_overview:I

    .line 189
    const/4 v2, 0x0

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    check-cast v0, Lcom/alipay/mobile/commonui/widget/APOverView;

    .line 191
    return-object v0
.end method

.method public final onRefresh()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->a(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/mobile/commonui/widget/APPullRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPullRefreshView;->autoRefresh()V

    .line 179
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/f;->a:Lcom/alipay/android/widgets/asset/AssetWidgetGroup;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/AssetWidgetGroup;->b(Lcom/alipay/android/widgets/asset/AssetWidgetGroup;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    const-string/jumbo v1, "HOME"

    .line 180
    const-string/jumbo v2, "pullrefresh"

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
