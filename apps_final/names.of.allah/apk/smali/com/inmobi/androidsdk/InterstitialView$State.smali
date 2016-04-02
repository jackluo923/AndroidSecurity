.class public final enum Lcom/inmobi/androidsdk/InterstitialView$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/InterstitialView$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

.field public static final enum INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

.field public static final enum LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

.field public static final enum READY:Lcom/inmobi/androidsdk/InterstitialView$State;

.field private static final synthetic a:[Lcom/inmobi/androidsdk/InterstitialView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/InterstitialView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->READY:Lcom/inmobi/androidsdk/InterstitialView$State;

    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/InterstitialView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/InterstitialView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->READY:Lcom/inmobi/androidsdk/InterstitialView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->a:[Lcom/inmobi/androidsdk/InterstitialView$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 1

    const-class v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 1

    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->a:[Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-virtual {v0}, [Lcom/inmobi/androidsdk/InterstitialView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object v0
.end method
