.class public Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;I)V
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/commonui/widget/APLineGroupItemInterface;->setVisualStyle(I)V

    :cond_0
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a(Landroid/view/ViewGroup;I)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getVisualStyle()I
    .locals 1

    sget v0, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a:I

    return v0
.end method

.method public static setVisualStyle(Landroid/app/Activity;I)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a(Landroid/view/ViewGroup;I)V

    :cond_2
    sput p1, Lcom/alipay/mobile/commonui/widget/WidgetVisualStyleSetting;->a:I

    goto :goto_0
.end method
