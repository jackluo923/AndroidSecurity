.class final Lcom/alipay/mobile/security/gesture/ui/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/v;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/alipay/mobile/security/gesture/component/LockView;->MINSELECTED:I

    if-lt v0, v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor;->dynamicDecrypt(Landroid/content/ContextWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "userInfo"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/security/Des;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/util/SHA1;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil;->getMD5Str(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureVerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLockDone \u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureVerifyActivity"

    const-string/jumbo v2, "\u624b\u52bf\u6570\u636e\u88ab\u7be1\u6539\uff0ctaobao\u9ed1\u5323\u5b50\u89e3\u5bc6\u6b21\u6570\u5931\u8d25\uff0c\u901a\u77e5gestureActivity\u8df3\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "GestureVerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLockDone \u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;I)V

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bn;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->k:Lcom/alipay/mobile/security/gesture/component/LockView;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    goto/16 :goto_1
.end method
