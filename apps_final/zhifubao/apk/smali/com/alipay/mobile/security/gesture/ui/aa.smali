.class final Lcom/alipay/mobile/security/gesture/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/ui/u;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

.field private final synthetic b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZILcom/alipay/mobile/security/gesture/data/ConfigItemData;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "switch isSwitchToOn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " posInList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cid.name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, v3, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ab;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {v0, p0, p3, v1}, Lcom/alipay/mobile/security/gesture/ui/ab;-><init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    const-string/jumbo v1, "MM-1225-2"

    const-string/jumbo v2, "20000169"

    const-string/jumbo v3, "bxmsc"

    const-string/jumbo v4, "OPEN"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ac;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {v0, p0, p3, v1}, Lcom/alipay/mobile/security/gesture/ui/ac;-><init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    const-string/jumbo v1, "MM-1225-2"

    const-string/jumbo v2, "20000169"

    const-string/jumbo v3, "bxmsc"

    const-string/jumbo v4, "CLOSE"

    const-string/jumbo v5, ""

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->saveUserBlackModeConfigItem(Ljava/lang/String;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    const-string/jumbo v1, "MM-1225-3"

    const-string/jumbo v2, "20000169"

    const-string/jumbo v3, "cbxmsc"

    const-string/jumbo v4, "OPEN"

    iget-object v5, p3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/security/gesture/ui/ad;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->b:Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;

    invoke-direct {v0, p0, p3, v1}, Lcom/alipay/mobile/security/gesture/ui/ad;-><init>(Lcom/alipay/mobile/security/gesture/ui/aa;Lcom/alipay/mobile/security/gesture/data/ConfigItemData;Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;)Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->verifyGesture(ZLcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/aa;->a:Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;

    const-string/jumbo v1, "MM-1225-3"

    const-string/jumbo v2, "20000169"

    const-string/jumbo v3, "cbxmsc"

    const-string/jumbo v4, "CLOSE"

    iget-object v5, p3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureConvenientModeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
