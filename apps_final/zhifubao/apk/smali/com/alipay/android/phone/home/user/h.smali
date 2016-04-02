.class final Lcom/alipay/android/phone/home/user/h;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/user/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/user/UserInfoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/user/h;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 360
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 364
    const-string/jumbo v0, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 365
    if-eqz v2, :cond_0

    .line 366
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    .line 375
    :cond_0
    :goto_1
    return-void

    .line 366
    :cond_1
    aget-object v4, v2, v0

    .line 367
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 368
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/phone/home/user/h;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v6}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "accountManager\u9700\u8981\u5220\u9664\u5f53\u524d\u8d26\u6237\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->print(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    iget-object v1, p0, Lcom/alipay/android/phone/home/user/h;->a:Lcom/alipay/android/phone/home/user/UserInfoActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/home/user/UserInfoActivity;->d(Lcom/alipay/android/phone/home/user/UserInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
