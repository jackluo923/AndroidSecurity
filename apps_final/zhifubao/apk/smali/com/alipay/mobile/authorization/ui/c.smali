.class final Lcom/alipay/mobile/authorization/ui/c;
.super Landroid/text/style/ClickableSpan;
.source "AuthorizationActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

.field private b:I

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;Lcom/alipay/mobile/framework/MicroApplicationContext;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/authorization/ui/c;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    .line 75
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/alipay/mobile/authorization/ui/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 77
    iput p3, p0, Lcom/alipay/mobile/authorization/ui/c;->b:I

    .line 78
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 83
    const-class v2, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;

    .line 82
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string/jumbo v1, "protocol_url"

    iget-object v2, p0, Lcom/alipay/mobile/authorization/ui/c;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->a(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/authorization/ui/c;->a:Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;

    invoke-static {v2}, Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;->b(Lcom/alipay/mobile/authorization/ui/AuthorizationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 91
    iget v0, p0, Lcom/alipay/mobile/authorization/ui/c;->b:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 93
    return-void
.end method
