.class public final enum Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

.field public static final enum offline:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

.field public static final enum online:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

.field public static final enum pre:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    const-string/jumbo v1, "online"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->online:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    const-string/jumbo v1, "offline"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->offline:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    new-instance v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    const-string/jumbo v1, "pre"

    invoke-direct {v0, v1, v3, v5}, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->pre:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    new-array v0, v5, [Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->online:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->offline:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->pre:Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;
    .locals 1

    const-class v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->ENUM$VALUES:[Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileappconfig/biz/rpc/model/app/PBStatus;->value:I

    return v0
.end method
