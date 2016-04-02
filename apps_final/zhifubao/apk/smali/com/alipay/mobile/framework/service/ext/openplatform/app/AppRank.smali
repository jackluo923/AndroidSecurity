.class public Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;
.super Ljava/lang/Object;
.source "AppRank.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private display:Z

.field private extra:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private movable:Z

.field private name:Ljava/lang/String;

.field private optionMap:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->optionMap:Ljava/lang/String;

    return-object v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->display:Z

    return v0
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->appId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setDisplay(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->display:Z

    .line 37
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->extra:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->iconUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->movable:Z

    .line 45
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setOptionMap(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->optionMap:Ljava/lang/String;

    .line 61
    return-void
.end method
