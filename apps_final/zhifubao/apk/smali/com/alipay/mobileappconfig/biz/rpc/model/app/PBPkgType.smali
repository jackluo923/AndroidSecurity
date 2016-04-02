.class public final enum Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum H5App:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum alipayApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum androidApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum expApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum independantApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum innerApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum nativeApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

.field public static final enum webApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "nativeApp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->nativeApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "webApp"

    invoke-direct {v0, v1, v4, v5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->webApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "expApp"

    invoke-direct {v0, v1, v5, v6}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->expApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "androidApp"

    invoke-direct {v0, v1, v6, v7}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->androidApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "independantApp"

    invoke-direct {v0, v1, v7, v8}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->independantApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "alipayApp"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->alipayApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "H5App"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->H5App:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const-string/jumbo v1, "innerApp"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->innerApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->nativeApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->webApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->expApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->androidApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->independantApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->alipayApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->H5App:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->innerApp:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;
    .locals 1

    const-class v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBPkgType;->value:I

    return v0
.end method
