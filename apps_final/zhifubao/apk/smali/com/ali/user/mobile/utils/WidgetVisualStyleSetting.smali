.class public Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;
.super Ljava/lang/Object;
.source "WidgetVisualStyleSetting.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    sput v0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;I)V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 76
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 67
    instance-of v0, v1, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 68
    check-cast v0, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;

    invoke-interface {v0, p1}, Lcom/ali/user/mobile/ui/widget/AULineGroupItemInterface;->setVisualStyle(I)V

    .line 70
    :cond_1
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 71
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a(Landroid/view/ViewGroup;I)V

    .line 65
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public static getVisualStyle()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a:I

    return v0
.end method

.method public static initFocusChangeBackground(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;

    invoke-direct {v1, p0, v0}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting$1;-><init>(Landroid/view/View;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    return-void
.end method

.method public static setVisualStyle(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 36
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget v0, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a:I

    if-eq v0, p1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 49
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 50
    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    invoke-static {v0, p1}, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a(Landroid/view/ViewGroup;I)V

    .line 54
    :cond_2
    sput p1, Lcom/ali/user/mobile/utils/WidgetVisualStyleSetting;->a:I

    goto :goto_0
.end method
