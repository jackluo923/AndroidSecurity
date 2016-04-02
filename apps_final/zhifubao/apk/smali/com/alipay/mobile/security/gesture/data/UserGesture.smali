.class public Lcom/alipay/mobile/security/gesture/data/UserGesture;
.super Ljava/lang/Object;


# instance fields
.field public userGestureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/gesture/data/UserGestureData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getUserGestureData(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/UserGestureData;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGesture;->userGestureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->userId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method
