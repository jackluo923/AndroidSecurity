.class final Lcom/alipay/mobile/security/gesture/ui/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a/d;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/d;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    const-string/jumbo v0, "UC-SECURITY-150515-03"

    const-string/jumbo v1, "safeclose"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/d;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/ui/a/a;->b()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/d;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a/d;->a:Lcom/alipay/mobile/security/gesture/ui/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/a/a;->c(Lcom/alipay/mobile/security/gesture/ui/a/a;)Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e()V

    return-void
.end method
