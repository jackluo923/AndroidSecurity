.class final Lcom/alipay/mobile/security/gesture/ui/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/service/i;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/x;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/x;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/x;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/x;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/x;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/x;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    :cond_0
    return-void
.end method
