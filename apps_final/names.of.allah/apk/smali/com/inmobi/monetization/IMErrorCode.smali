.class public final enum Lcom/inmobi/monetization/IMErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/IMErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

.field public static final enum DO_NOTHING:Lcom/inmobi/monetization/IMErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

.field public static final enum NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

.field private static final synthetic b:[Lcom/inmobi/monetization/IMErrorCode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "INVALID_REQUEST"

    const-string v2, "Invalid ad request"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "An error occurred while fetching the ad"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "NO_FILL"

    const-string v2, "The ad request was successful, but no ad was returned"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "DO_MONETIZE"

    const-string v2, "Please load a mediation network"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "DO_NOTHING"

    const-string v2, "No Ads"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/IMErrorCode;

    new-instance v0, Lcom/inmobi/monetization/IMErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x5

    const-string v3, "Ad network failed to retrieve ad"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/monetization/IMErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/monetization/IMErrorCode;

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INTERNAL_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->NO_FILL:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->DO_NOTHING:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->NETWORK_ERROR:Lcom/inmobi/monetization/IMErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/monetization/IMErrorCode;->b:[Lcom/inmobi/monetization/IMErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/inmobi/monetization/IMErrorCode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/IMErrorCode;
    .locals 1

    const-class v0, Lcom/inmobi/monetization/IMErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/IMErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/IMErrorCode;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/IMErrorCode;->b:[Lcom/inmobi/monetization/IMErrorCode;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/IMErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/IMErrorCode;

    return-object v0
.end method


# virtual methods
.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inmobi/monetization/IMErrorCode;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/IMErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
