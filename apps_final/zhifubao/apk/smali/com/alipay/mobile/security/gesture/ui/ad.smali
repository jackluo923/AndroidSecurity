.class final Lcom/alipay/mobile/security/gesture/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/aa;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

.field private final synthetic c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iput-object p3, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onGestureResult sub be bcid name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cid on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onGestureResult sub af cid name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cid on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->saveUserBlackModeConfigItem(Ljava/lang/String;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->c:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->getBlackMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/ConvenientMode;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v1, v1, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/data/ConvenientMode;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->b:Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/ad;->a:Lcom/alipay/mobile/security/gesture/ui/aa;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->c(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/security/gesture/ui/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    goto :goto_0
.end method
