.class public final enum Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;
.super Ljava/lang/Enum;
.source "TopType.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

.field public static final enum FORCE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

.field public static final enum UNDEFINE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    const-string/jumbo v1, "FORCE"

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->FORCE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    .line 10
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->DEFAULT:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    .line 11
    new-instance v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    const-string/jumbo v1, "UNDEFINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->UNDEFINE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    sget-object v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->FORCE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->DEFAULT:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->UNDEFINE:Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->ENUM$VALUES:[Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->ENUM$VALUES:[Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/publiccore/biz/service/impl/rpc/pb/TopType;->value:I

    return v0
.end method
