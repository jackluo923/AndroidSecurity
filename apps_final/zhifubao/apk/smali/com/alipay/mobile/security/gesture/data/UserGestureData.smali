.class public Lcom/alipay/mobile/security/gesture/data/UserGestureData;
.super Ljava/lang/Object;


# instance fields
.field public modeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;",
            ">;"
        }
    .end annotation
.end field

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMode(Ljava/lang/String;)Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/data/UserGestureData;->modeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/security/gesture/data/GestureAppearModeBaseData;->modeName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method
