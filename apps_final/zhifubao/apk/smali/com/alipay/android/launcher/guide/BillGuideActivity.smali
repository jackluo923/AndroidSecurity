.class public Lcom/alipay/android/launcher/guide/BillGuideActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "BillGuideActivity.java"


# static fields
.field public static final TRANSACTION_ID:Ljava/lang/String; = "transaction_id"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mTransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity;->handler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->finishActivity()V

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 93
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 92
    iget-object v1, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity;->mTransactionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->removeTransaction(Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->finish()V

    .line 97
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    .line 87
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 34
    sget v0, Lcom/alipay/android/tablauncher/R$layout;->activity_bill_guide:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "transaction_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity;->mTransactionID:Ljava/lang/String;

    .line 39
    :cond_0
    sget v0, Lcom/alipay/android/tablauncher/R$id;->skip:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/launcher/guide/BillGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity$1;-><init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/alipay/android/tablauncher/R$id;->enter_bill:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/launcher/guide/BillGuideActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity$2;-><init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/alipay/android/tablauncher/R$id;->cloud:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/tablauncher/R$anim;->cloud_rotate:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 59
    new-instance v2, Lcom/alipay/android/launcher/guide/BillGuideActivity$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/launcher/guide/BillGuideActivity$3;-><init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 75
    iget-object v2, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;-><init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V

    .line 80
    const-wide/16 v0, 0x3e8

    .line 75
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
