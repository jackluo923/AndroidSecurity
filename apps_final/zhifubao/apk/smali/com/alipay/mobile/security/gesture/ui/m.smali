.class final Lcom/alipay/mobile/security/gesture/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/m;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/m;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/m;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->i(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/m;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0, p2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
