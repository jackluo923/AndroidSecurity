.class final Lcom/alipay/mobile/security/gesture/ui/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->b(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/bl;->a:Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureVerifyActivity;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
