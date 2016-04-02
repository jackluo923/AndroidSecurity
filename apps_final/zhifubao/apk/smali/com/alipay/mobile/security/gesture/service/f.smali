.class final Lcom/alipay/mobile/security/gesture/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/service/i;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/f;->a:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "GestureConfigImpl mem ug updated"

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/f;->a:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getInstance()Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/data/GestureConfigHelper;->getUsersConfig()Lcom/alipay/mobile/security/gesture/data/UserGesture;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->access$0(Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;Lcom/alipay/mobile/security/gesture/data/UserGesture;)V

    :cond_0
    return-void
.end method
