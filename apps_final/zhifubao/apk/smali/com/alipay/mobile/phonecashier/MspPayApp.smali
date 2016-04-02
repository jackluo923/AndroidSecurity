.class public Lcom/alipay/mobile/phonecashier/MspPayApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/os/Bundle;

.field private c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/phonecashier/MspPayApp;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->d:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "MspPayApp"

    const-string/jumbo v1, "toPay"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/alipay/mobile/phonecashier/MspPayApp;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/phonecashier/MspPayApp;->a:Z

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayAssist;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;

    invoke-direct {v1, v0, p1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;-><init>(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierPayBean;)V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "MspPayApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->d:Z

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->a()Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "MspPayApp"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c()V

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->d:Z

    const-string/jumbo v0, "MspPayApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRestart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "orderSuffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->c:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTaskHelper;->c()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/phonecashier/MspPayApp;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/MspPayApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000125"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "appId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "externalOrderSuffix"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "orderSuffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/phonecashier/MspPayApp;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/MspPayApp;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/phonecashier/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/phonecashier/a;-><init>(Lcom/alipay/mobile/phonecashier/MspPayApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
