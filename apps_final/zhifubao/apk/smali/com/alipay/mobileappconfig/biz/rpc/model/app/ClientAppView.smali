.class public Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;
.super Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public alipayApp:Z

.field public appId:Ljava/lang/String;

.field public autoAuthorize:Z

.field public autoStatus:Z

.field public bizOptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public display:Z

.field public extProperties:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public extra:Ljava/lang/String;

.field public h5AppCdnBaseUrl:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:J

.field public incrementPkgUrl:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public movable:Z

.field public name:Ljava/lang/String;

.field public needAuthorize:Z

.field public pageUrl:Ljava/lang/String;

.field public pkgSize:J

.field public pkgType:Ljava/lang/String;

.field public pkgUrl:Ljava/lang/String;

.field public pkgUrlNew:Ljava/lang/String;

.field public rank:I

.field public recommend:Z

.field public schemeUri:Ljava/lang/String;

.field public slogan:Ljava/lang/String;

.field public stageExtProp:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public thirdPkgName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobileappconfig/common/service/facade/base/ToString;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/ClientAppView;->bizOptionMap:Ljava/util/Map;

    return-void
.end method
