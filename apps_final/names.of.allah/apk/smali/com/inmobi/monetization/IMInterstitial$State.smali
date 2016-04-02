.class public final enum Lcom/inmobi/monetization/IMInterstitial$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/IMInterstitial$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

.field public static final enum INIT:Lcom/inmobi/monetization/IMInterstitial$State;

.field public static final enum LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

.field public static final enum READY:Lcom/inmobi/monetization/IMInterstitial$State;

.field public static final enum UNKNOWN:Lcom/inmobi/monetization/IMInterstitial$State;

.field private static final synthetic a:[Lcom/inmobi/monetization/IMInterstitial$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitial$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/monetization/IMInterstitial$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/monetization/IMInterstitial$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/monetization/IMInterstitial$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/monetization/IMInterstitial$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->UNKNOWN:Lcom/inmobi/monetization/IMInterstitial$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/monetization/IMInterstitial$State;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->ACTIVE:Lcom/inmobi/monetization/IMInterstitial$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->UNKNOWN:Lcom/inmobi/monetization/IMInterstitial$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->a:[Lcom/inmobi/monetization/IMInterstitial$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    const-class v0, Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->a:[Lcom/inmobi/monetization/IMInterstitial$State;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/IMInterstitial$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method
