.class final Lcom/alipay/mobile/security/accountmanager/service/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/d;->a:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->logout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
