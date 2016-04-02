.class final Lcom/alipay/mobile/security/gesture/service/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/service/n;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/gesture/service/n;)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->access$2(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/a/f;->g:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/a/f;->f:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/a/f;->e:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    # getter for: Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;
    invoke-static {v4}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->access$3(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Lcom/alipay/mobile/base/config/ConfigService;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    # getter for: Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;
    invoke-static {v4}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->access$3(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Lcom/alipay/mobile/base/config/ConfigService;

    move-result-object v4

    const-string/jumbo v5, "GestureDefaultConvenientAlertMsg"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/n;->a:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    # getter for: Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->f:Lcom/alipay/mobile/base/config/ConfigService;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->access$3(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)Lcom/alipay/mobile/base/config/ConfigService;

    move-result-object v0

    const-string/jumbo v4, "GestureDefaultConvenientAlertMsg"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/alipay/mobile/security/gesture/service/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/service/o;-><init>(Lcom/alipay/mobile/security/gesture/service/n;)V

    invoke-virtual {v4, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "memcacheservice remove GestureDataCenter.GetureAlertInfo"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/n;->b:Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    const-string/jumbo v1, "GestureAlertInfo"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
