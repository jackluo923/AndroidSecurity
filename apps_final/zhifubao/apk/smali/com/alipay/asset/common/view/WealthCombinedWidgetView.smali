.class public Lcom/alipay/asset/common/view/WealthCombinedWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "WealthCombinedWidgetView.java"


# instance fields
.field private a:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

.field private b:Lcom/alipay/asset/common/view/WealthColumnWidgetView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/wealth/home/R$layout;->j:I

    .line 37
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    .line 39
    sget v0, Lcom/alipay/android/phone/wealth/home/R$id;->K:I

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->b:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    .line 40
    return-void
.end method


# virtual methods
.method public getLeftWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    return-object v0
.end method

.method public getRightWidgetView()Lcom/alipay/asset/common/view/WealthColumnWidgetView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->b:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    return-object v0
.end method

.method public setWidgetModules(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->a:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    invoke-virtual {v0, p1, p3}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 44
    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthCombinedWidgetView;->b:Lcom/alipay/asset/common/view/WealthColumnWidgetView;

    invoke-virtual {v0, p2, p3}, Lcom/alipay/asset/common/view/WealthColumnWidgetView;->setWealthHomeModule(Lcom/alipay/android/widgets/asset/model/WealthHomeModule;Z)V

    .line 45
    return-void
.end method
