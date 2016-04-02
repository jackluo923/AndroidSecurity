.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BISEXUAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field private static final synthetic ENUM$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum GAY:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum NOT_SURE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

.field public static final enum STRAIGHT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "STRAIGHT"

    const-string v2, "straight"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->STRAIGHT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "GAY"

    const-string v2, "gay"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->GAY:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "BISEXUAL"

    const-string v2, "bisexual"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->BISEXUAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    const-string v1, "NOT_SURE"

    const-string v2, "notsure"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->NOT_SURE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->STRAIGHT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->GAY:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->BISEXUAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->NOT_SURE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->ENUM$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;
    .locals 1

    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->ENUM$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->description:Ljava/lang/String;

    return-object v0
.end method
