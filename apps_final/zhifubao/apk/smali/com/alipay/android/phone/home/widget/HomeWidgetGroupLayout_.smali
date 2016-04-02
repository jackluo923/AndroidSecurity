.class public final Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;
.super Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
.source "HomeWidgetGroupLayout_.java"


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Z

    .line 31
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Z

    .line 36
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Z

    .line 41
    invoke-direct {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->a()V

    .line 42
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->d:Landroid/content/Context;

    .line 49
    :cond_0
    return-void
.end method

.method static synthetic access$001(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->processShowGuide()V

    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 73
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 79
    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->onFinishInflate()V

    .line 85
    return-object v0
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;->e:Z

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout;->onFinishInflate()V

    .line 68
    return-void
.end method

.method public final processShowGuide()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/alipay/android/phone/home/widget/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/home/widget/b;-><init>(Lcom/alipay/android/phone/home/widget/HomeWidgetGroupLayout_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
