.class public final Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_ALIPAYAPP:Ljava/lang/Boolean;

.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_AUTOAUTHORIZE:Ljava/lang/Boolean;

.field public static final DEFAULT_AUTOSTATUS:Ljava/lang/Boolean;

.field public static final DEFAULT_BIZOPTIONMAP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DESC:Ljava/lang/String; = ""

.field public static final DEFAULT_DISPLAY:Ljava/lang/Boolean;

.field public static final DEFAULT_EXTPROPERTIES:Ljava/lang/String; = ""

.field public static final DEFAULT_EXTRA:Ljava/lang/String; = ""

.field public static final DEFAULT_H5APPCDNBASEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_ICONURL:Ljava/lang/String; = ""

.field public static final DEFAULT_ID:Ljava/lang/Integer;

.field public static final DEFAULT_INCREMENTPKGURL:Ljava/lang/String; = ""

.field public static final DEFAULT_MD5:Ljava/lang/String; = ""

.field public static final DEFAULT_MOVABLE:Ljava/lang/Boolean;

.field public static final DEFAULT_NAME:Ljava/lang/String; = ""

.field public static final DEFAULT_NEEDAUTHORIZE:Ljava/lang/Boolean;

.field public static final DEFAULT_PAGEURL:Ljava/lang/String; = ""

.field public static final DEFAULT_PKGSIZE:Ljava/lang/Integer;

.field public static final DEFAULT_PKGTYPE:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final DEFAULT_PKGURL:Ljava/lang/String; = ""

.field public static final DEFAULT_PKGURLNEW:Ljava/lang/String; = ""

.field public static final DEFAULT_RANK:Ljava/lang/Integer;

.field public static final DEFAULT_RECOMMEND:Ljava/lang/Boolean;

.field public static final DEFAULT_SCHEMEURI:Ljava/lang/String; = ""

.field public static final DEFAULT_SLOGAN:Ljava/lang/String; = ""

.field public static final DEFAULT_STAGEEXTPROP:Ljava/lang/String; = ""

.field public static final DEFAULT_STATUS:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

.field public static final DEFAULT_THIRDPKGNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_VERSION:Ljava/lang/String; = ""

.field private static final serialVersionUID:J


# instance fields
.field public final alipayApp:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xf
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final autoAuthorize:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x14
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final autoStatus:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xe
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final bizOptionMap:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        messageType = Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;
        tag = 0x1b
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;"
        }
    .end annotation
.end field

.field public final desc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x6
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final display:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xc
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extProperties:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x19
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final extra:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x17
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final h5AppCdnBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1c
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x7
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final id:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final incrementPkgUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1e
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final md5:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x16
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final movable:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xd
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final needAuthorize:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x13
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pageUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x18
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pkgSize:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x8
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xa
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pkgUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x9
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final pkgUrlNew:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1d
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final rank:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x15
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final recommend:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x12
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final schemeUri:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x11
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final slogan:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final stageExtProp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1a
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0xb
        type = .enum Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final thirdPkgName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x10
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public final version:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_ID:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_PKGSIZE:Ljava/lang/Integer;

    sget-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->H5App:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_PKGTYPE:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    sget-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->online:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_STATUS:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_DISPLAY:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_MOVABLE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_AUTOSTATUS:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_ALIPAYAPP:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_RECOMMEND:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_NEEDAUTHORIZE:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_AUTOAUTHORIZE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_RANK:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->DEFAULT_BIZOPTIONMAP:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;)V
    .locals 32

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->id:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->appId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->version:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->slogan:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->desc:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->iconUrl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgSize:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrl:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->display:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->movable:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoStatus:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->alipayApp:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->thirdPkgName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->schemeUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->recommend:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->needAuthorize:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->autoAuthorize:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->rank:Ljava/lang/Integer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->md5:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extra:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pageUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->extProperties:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->stageExtProp:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->bizOptionMap:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->h5AppCdnBaseUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->pkgUrlNew:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;->incrementPkgUrl:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v31}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->setBuilder(Lcom/squareup/wire/Message$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;-><init>(Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBMap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    iput-object p10, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    iput-object p11, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    iput-object p12, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    iput-object p13, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-static/range {p27 .. p27}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->slogan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->desc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgType:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-virtual {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->status:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-virtual {v0}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->movable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->alipayApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->thirdPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->schemeUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->recommend:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->needAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->autoAuthorize:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->rank:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->md5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extra:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->extProperties:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->stageExtProp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->bizOptionMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->h5AppCdnBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->pkgUrlNew:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->incrementPkgUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBClientAppView;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    move v0, v1

    goto/16 :goto_3

    :cond_6
    move v0, v1

    goto/16 :goto_4

    :cond_7
    move v0, v1

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_6

    :cond_9
    move v0, v1

    goto/16 :goto_7

    :cond_a
    move v0, v1

    goto/16 :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_9

    :cond_c
    move v0, v1

    goto/16 :goto_a

    :cond_d
    move v0, v1

    goto/16 :goto_b

    :cond_e
    move v0, v1

    goto/16 :goto_c

    :cond_f
    move v0, v1

    goto/16 :goto_d

    :cond_10
    move v0, v1

    goto/16 :goto_e

    :cond_11
    move v0, v1

    goto/16 :goto_f

    :cond_12
    move v0, v1

    goto/16 :goto_10

    :cond_13
    move v0, v1

    goto/16 :goto_11

    :cond_14
    move v0, v1

    goto/16 :goto_12

    :cond_15
    move v0, v1

    goto/16 :goto_13

    :cond_16
    move v0, v1

    goto/16 :goto_14

    :cond_17
    move v0, v1

    goto/16 :goto_15

    :cond_18
    move v0, v1

    goto/16 :goto_16

    :cond_19
    move v0, v1

    goto/16 :goto_17

    :cond_1a
    move v0, v1

    goto/16 :goto_18

    :cond_1b
    move v0, v1

    goto/16 :goto_19

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1a

    :cond_1d
    move v0, v1

    goto :goto_1b

    :cond_1e
    move v0, v1

    goto :goto_1c
.end method
