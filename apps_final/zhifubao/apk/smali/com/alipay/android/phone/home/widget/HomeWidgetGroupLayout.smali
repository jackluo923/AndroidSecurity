.class public Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
.super Landroid/widget/LinearLayout;
.source "HomeWidgetGroupLayout.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EViewGroup;
.end annotation


# static fields
.field public static b:Z

.field public static c:I


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->b:Z

    .line 20
    const/16 v0, 0x8

    sput v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 35
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 34
    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 36
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 47
    if-nez p2, :cond_0

    sget-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->b:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    invoke-interface {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;->showGuide()V

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->b:Z

    .line 51
    sput p2, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->c:I

    .line 53
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->processShowGuide()V

    .line 63
    :cond_0
    return-void
.end method

.method protected processShowGuide()V
    .locals 0
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public setHomeWidgetGroupUiCallback(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->d:Lcom/alipay/android/phone/home/widget/HomeWidgetGroupUiCallback;

    .line 41
    return-void
.end method
