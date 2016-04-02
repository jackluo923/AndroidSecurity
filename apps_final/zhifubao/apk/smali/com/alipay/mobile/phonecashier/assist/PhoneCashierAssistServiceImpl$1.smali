.class Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;
.super Ljava/lang/Object;
.source "PhoneCashierAssistServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/scancode/export/ScanCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->a:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->c:Ljava/lang/Object;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ZLandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 88
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 94
    const-string/jumbo v2, "onReadSuccess"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 93
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
