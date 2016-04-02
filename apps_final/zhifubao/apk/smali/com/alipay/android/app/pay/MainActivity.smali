.class public Lcom/alipay/android/app/pay/MainActivity;
.super Lcom/alipay/android/app/AbsActivity;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IElementFocusChanged;
.implements Lcom/alipay/android/app/display/windows/IContainer;


# instance fields
.field private b:I

.field private c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

.field private d:Lcom/alipay/android/app/display/event/OnContainerEventListener;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

.field private h:Lcom/alipay/android/app/widget/ResizeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/uielement/UILayoutPopup;)Lcom/alipay/android/app/display/uielement/UILayoutPopup;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/MainActivity;->g:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/pay/MainActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/display/windows/IContainer;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    :cond_0
    :try_start_0
    const-string/jumbo v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    iget v0, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "no biz id"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/MainActivity;->loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/pay/ActivityWindowScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/display/uielement/UILayoutPopup;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->g:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/widget/ResizeLayout;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->h:Lcom/alipay/android/app/widget/ResizeLayout;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/pay/MainActivity;->d:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/event/OnContainerEventListener;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a(Lcom/alipay/android/app/display/windows/UIWindow;)V

    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/windows/UIWindow;Lcom/alipay/android/app/data/Orientation;)V
    .locals 5

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/alipay/android/app/pay/MainActivity;->f:Z

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/MainActivity;->f:Z

    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/MainActivity;->h:Lcom/alipay/android/app/widget/ResizeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/ResizeLayout;->setScrollView(Landroid/widget/ScrollView;)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {p1}, Lcom/alipay/android/app/display/windows/UIWindow;->a()Lcom/alipay/android/app/display/uielement/IUIElement;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->removeAllViews()V

    invoke-interface {v1, p0, v0}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alipay/android/app/data/Orientation;->b()I

    move-result v3

    invoke-virtual {p2}, Lcom/alipay/android/app/data/Orientation;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    :cond_1
    new-instance v3, Lcom/alipay/android/app/display/windows/ContentFragment;

    invoke-direct {v3}, Lcom/alipay/android/app/display/windows/ContentFragment;-><init>()V

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/display/windows/ContentFragment;->a(Landroid/view/View;)V

    const-string/jumbo v0, "main_fragement"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/pay/g;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/pay/g;-><init>(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/windows/UIWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->g:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->g:Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->dispose()V

    :cond_2
    return-void

    :cond_3
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/pay/MainActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public allowback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->allowback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->exit()V

    :cond_0
    return-void
.end method

.method public getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->getLoadingScriptable()Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/MainActivity;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/android/app/pay/MainActivity;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    return-object v0
.end method

.method public loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->loading(ILjava/lang/String;Ljava/lang/String;)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/AbsActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->d:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/pay/f;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Event:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/f;-><init>(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/MainActivity;->d:Lcom/alipay/android/app/display/event/OnContainerEventListener;

    invoke-interface {v1, p0, v0}, Lcom/alipay/android/app/display/event/OnContainerEventListener;->a(Ljava/lang/Object;Lcom/alipay/android/app/event/IEventArgs;)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/display/windows/IContainer;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/MainActivity;->f:Z

    const-string/jumbo v0, "msp_main_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const-string/jumbo v0, "main"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/pay/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/widget/ResizeLayout;

    iput-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->h:Lcom/alipay/android/app/widget/ResizeLayout;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/MainActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onFocusChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->h:Lcom/alipay/android/app/widget/ResizeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/widget/ResizeLayout;->onFocusChange(I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onLowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pay/MainActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onResume()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->a()V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "CallingPid"

    iget v1, p0, Lcom/alipay/android/app/pay/MainActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs open([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->open([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openWithCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/pay/MainActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/pay/MainActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->openWithCallback(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public submit()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit()V

    :cond_0
    return-void
.end method

.method public submit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->submit(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/MainActivity;->c:Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
