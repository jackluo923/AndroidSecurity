.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;",
        ">;"
    }
.end annotation


# instance fields
.field public alipayApp:Ljava/lang/Boolean;

.field public appId:Ljava/lang/String;

.field public autoAuthorize:Ljava/lang/Boolean;

.field public autoStatus:Ljava/lang/Boolean;

.field public bizOptionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public display:Ljava/lang/Boolean;

.field public extProperties:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public h5AppCdnBaseUrl:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public incrementPkgUrl:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public movable:Ljava/lang/Boolean;

.field public name:Ljava/lang/String;

.field public needAuthorize:Ljava/lang/Boolean;

.field public pageUrl:Ljava/lang/String;

.field public pkgSize:Ljava/lang/Integer;

.field public pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public pkgUrl:Ljava/lang/String;

.field public pkgUrlNew:Ljava/lang/String;

.field public rank:Ljava/lang/Integer;

.field public recommend:Ljava/lang/Boolean;

.field public schemeUri:Ljava/lang/String;

.field public slogan:Ljava/lang/String;

.field public stageExtProp:Ljava/lang/String;

.field public status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

.field public thirdPkgName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->id:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->version:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->slogan:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->desc:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->iconUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgSize:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->display:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->movable:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoStatus:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->alipayApp:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->thirdPkgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->schemeUri:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->recommend:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->needAuthorize:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoAuthorize:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->rank:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->md5:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extra:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pageUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extProperties:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->stageExtProp:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    # invokes: Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->copyOf(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->access$0(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->bizOptionMap:Ljava/util/List;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->h5AppCdnBaseUrl:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrlNew:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->incrementPkgUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final alipayApp(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->alipayApp:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final appId(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public final autoAuthorize(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoAuthorize:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final autoStatus(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoStatus:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final bizOptionMap(Ljava/util/List;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;)",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->checkForNulls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->bizOptionMap:Ljava/util/List;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;
    .locals 2

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->build()Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    move-result-object v0

    return-object v0
.end method

.method public final desc(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public final display(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->display:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final extProperties(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extProperties:Ljava/lang/String;

    return-object p0
.end method

.method public final extra(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final h5AppCdnBaseUrl(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->h5AppCdnBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final iconUrl(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/Integer;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public final incrementPkgUrl(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->incrementPkgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final md5(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public final movable(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->movable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final needAuthorize(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->needAuthorize:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final pageUrl(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final pkgSize(Ljava/lang/Integer;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public final pkgType(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    return-object p0
.end method

.method public final pkgUrl(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final pkgUrlNew(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrlNew:Ljava/lang/String;

    return-object p0
.end method

.method public final rank(Ljava/lang/Integer;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->rank:Ljava/lang/Integer;

    return-object p0
.end method

.method public final recommend(Ljava/lang/Boolean;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->recommend:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final schemeUri(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->schemeUri:Ljava/lang/String;

    return-object p0
.end method

.method public final slogan(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->slogan:Ljava/lang/String;

    return-object p0
.end method

.method public final stageExtProp(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->stageExtProp:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    return-object p0
.end method

.method public final thirdPkgName(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->thirdPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final version(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->version:Ljava/lang/String;

    return-object p0
.end method
