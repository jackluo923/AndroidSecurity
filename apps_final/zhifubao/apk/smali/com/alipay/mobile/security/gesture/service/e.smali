.class final Lcom/alipay/mobile/security/gesture/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppFetchCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppsFetched(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/stage/ClientStageView;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-static {p2}, Lcom/alipay/mobile/security/gesture/service/c;->a(Ljava/util/List;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/c;->c()Lcom/alipay/mobile/security/gesture/data/UserGesture;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/security/gesture/service/GestureConfigImpl;->genDefault()Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    move-result-object v2

    new-instance v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;

    invoke-direct {v0}, Lcom/alipay/mobile/security/gesture/data/UserGesture;-><init>()V

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/data/UserGestureData;Lcom/alipay/mobile/security/gesture/data/UserGesture;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/c;->a(Lcom/alipay/mobile/security/gesture/data/UserGesture;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/e;->a:Lcom/alipay/mobile/security/gesture/service/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/service/c;->a(I)V

    goto :goto_0
.end method
