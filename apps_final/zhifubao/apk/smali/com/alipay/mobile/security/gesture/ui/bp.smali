.class final Lcom/alipay/mobile/security/gesture/ui/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

.field private final synthetic b:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->b:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iput-boolean p3, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "1832"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->b:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->c:Z

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/bp;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
