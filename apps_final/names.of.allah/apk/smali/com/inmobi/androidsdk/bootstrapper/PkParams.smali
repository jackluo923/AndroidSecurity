.class public Lcom/inmobi/androidsdk/bootstrapper/PkParams;
.super Ljava/lang/Object;


# static fields
.field public static SK_ALGORITHM:Ljava/lang/String;

.field public static SK_EXPONENT:Ljava/lang/String;

.field public static SK_MODULUS:Ljava/lang/String;

.field public static SK_VERSION:Ljava/lang/String;


# instance fields
.field a:Lcom/inmobi/commons/uid/UID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    return-object v0
.end method

.method public getExponent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    return-object v0
.end method

.method public getModulus()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    return-object v0
.end method

.method public getUID()Lcom/inmobi/commons/uid/UID;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pk"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "ver"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_VERSION:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key ver has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const-string v1, "alg"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key alg has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_ALGORITHM:Ljava/lang/String;

    const-string v2, "rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "val"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "e"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    const-string v1, "m"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_EXPONENT:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key e has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    sget-object v0, Lcom/inmobi/androidsdk/bootstrapper/PkParams;->SK_MODULUS:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isHexString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "[InMobi]-4.4.1"

    const-string v1, "Key m has illegal value"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_5
    return-void
.end method
