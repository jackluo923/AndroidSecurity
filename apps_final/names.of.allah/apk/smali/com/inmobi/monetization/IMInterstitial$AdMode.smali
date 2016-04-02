.class public final enum Lcom/inmobi/monetization/IMInterstitial$AdMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/monetization/IMInterstitial$AdMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

.field public static final enum APP_GALLERY:Lcom/inmobi/monetization/IMInterstitial$AdMode;

.field private static final synthetic a:[Lcom/inmobi/monetization/IMInterstitial$AdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;

    const-string v1, "AD_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/monetization/IMInterstitial$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    new-instance v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;

    const-string v1, "APP_GALLERY"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/monetization/IMInterstitial$AdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->APP_GALLERY:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/monetization/IMInterstitial$AdMode;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$AdMode;->APP_GALLERY:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->a:[Lcom/inmobi/monetization/IMInterstitial$AdMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/monetization/IMInterstitial$AdMode;
    .locals 1

    const-class v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/monetization/IMInterstitial$AdMode;
    .locals 1

    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->a:[Lcom/inmobi/monetization/IMInterstitial$AdMode;

    invoke-virtual {v0}, [Lcom/inmobi/monetization/IMInterstitial$AdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/monetization/IMInterstitial$AdMode;

    return-object v0
.end method
