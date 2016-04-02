.class public Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "SsoDialog"

    const-string/jumbo v3, "style"

    iget-object v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$1;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-nez p2, :cond_0

    new-instance v0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    :goto_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-virtual {v0, v5, v5, v5, v5}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->e:I

    invoke-static {p1}, Lcom/taobao/android/ssologinwrapper/utils/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->f:I

    return-void

    :cond_0
    iput-object p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public Show()V
    .locals 5

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->e:I

    iget v4, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->f:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->d:Z

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog$2;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    invoke-virtual {v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->d:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContentView()Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->c:Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;

    return-object v0
.end method

.method public setCancelable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->g:Landroid/content/DialogInterface$OnCancelListener;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method
