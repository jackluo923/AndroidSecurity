.class final Lcom/alipay/mobile/security/gesture/ui/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    iput-boolean p3, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string/jumbo v0, "194"

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->b:Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getResultCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-boolean v1, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->c:Z

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/bo;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
