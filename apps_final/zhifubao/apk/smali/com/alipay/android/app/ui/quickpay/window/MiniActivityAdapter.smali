.class public Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/base/pay/IActivityAdapter;
.implements Lcom/alipay/android/app/ui/quickpay/window/IFormShower;


# instance fields
.field public a:I

.field protected b:Landroid/app/Activity;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

.field private e:Lcom/alipay/android/app/ui/quickpay/window/OnResultReceived;

.field private f:Z

.field private g:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;)Landroid/app/Dialog;
    .locals 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;

    if-nez v1, :cond_1

    const/4 v3, -0x1

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/s;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/s;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const/4 v3, -0x2

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/t;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/t;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v3, -0x3

    iget-object v4, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;->a:Ljava/lang/String;

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/u;

    invoke-direct {v5, p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/u;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-object v2
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->g:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;)Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 5

    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;

    new-instance v4, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v4, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-interface {v0, p0, v4}, Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->g:Landroid/content/DialogInterface;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    :try_start_0
    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v2, "no biz id(18)"

    invoke-direct {v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/MspConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/EditTextPostProcessor;->setRsaPublicKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/TradeUiManager;->c(I)Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setFinishOnTouchOutside"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0xbb8

    if-ne p1, v0, :cond_1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/alipay/android/app/ui/TradeUiManager;->a()Lcom/alipay/android/app/ui/TradeUiManager;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/TradeUiManager;->b(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->dispose()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->e:Lcom/alipay/android/app/ui/quickpay/window/OnResultReceived;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cardNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->e:Lcom/alipay/android/app/ui/quickpay/window/OnResultReceived;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/base/trade/TradeManager;->a()Lcom/alipay/android/app/base/trade/TradeManager;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/base/trade/TradeManager;->d(I)Lcom/alipay/android/app/base/trade/Trade;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v1, "mini_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/window/IUIForm;I)V
    .locals 7

    const/4 v6, 0x7

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    const-string/jumbo v0, "mini_layout"

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "mini_keepbackground_layout"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;)V

    if-ne p2, v4, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/UIFormToast;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c()V

    :cond_1
    if-ne p2, v4, :cond_5

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_content_layout"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/m;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/app/ui/quickpay/window/m;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_3
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "mini_keeppre_layout"

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    if-eq p2, v4, :cond_7

    if-eq p2, v6, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    if-eq p2, v6, :cond_2

    const/16 v1, 0xa

    if-eq p2, v1, :cond_2

    const/16 v1, -0xa

    if-eq p2, v1, :cond_2

    invoke-static {}, Lcom/alipay/android/app/util/LogAgent;->b()V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setLayout(II)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/v;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p6

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/app/ui/quickpay/window/o;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/window/UIFormDialog$DialogButton;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/r;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/window/r;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/window/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/ui/quickpay/window/n;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a()Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper;->a(Landroid/app/Activity;Lcom/alipay/android/app/ui/quickpay/keyboard/MiniKeyboardAssistHelper$MainLayouShowLevel;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Back:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v4}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    invoke-direct {v3, v0}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;

    invoke-interface {v0, p0, v3}, Lcom/alipay/android/app/ui/quickpay/event/OnFormEventListener;->a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v0}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    iget v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a:I

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    const/16 v1, 0x3ee

    iput v1, v0, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v1, "type"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a()Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/HardwarePayUtil;->a(Landroid/content/Context;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v6, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c:Ljava/lang/ref/WeakReference;

    :cond_1
    iput-object v6, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->e:Lcom/alipay/android/app/ui/quickpay/window/OnResultReceived;

    iput-object v6, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->d:Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->f:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b:I

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a:I

    return-void
.end method
