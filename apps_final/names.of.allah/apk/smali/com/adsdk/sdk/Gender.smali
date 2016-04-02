.class public final enum Lcom/adsdk/sdk/Gender;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/Gender;

.field public static final enum FEMALE:Lcom/adsdk/sdk/Gender;

.field public static final enum MALE:Lcom/adsdk/sdk/Gender;


# instance fields
.field private param:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/adsdk/sdk/Gender;

    const-string v1, "MALE"

    const-string v2, "m"

    invoke-direct {v0, v1, v3, v2}, Lcom/adsdk/sdk/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/Gender;->MALE:Lcom/adsdk/sdk/Gender;

    new-instance v0, Lcom/adsdk/sdk/Gender;

    const-string v1, "FEMALE"

    const-string v2, "f"

    invoke-direct {v0, v1, v4, v2}, Lcom/adsdk/sdk/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/adsdk/sdk/Gender;->FEMALE:Lcom/adsdk/sdk/Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adsdk/sdk/Gender;

    sget-object v1, Lcom/adsdk/sdk/Gender;->MALE:Lcom/adsdk/sdk/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adsdk/sdk/Gender;->FEMALE:Lcom/adsdk/sdk/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adsdk/sdk/Gender;->ENUM$VALUES:[Lcom/adsdk/sdk/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/adsdk/sdk/Gender;->param:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/Gender;
    .locals 1

    const-class v0, Lcom/adsdk/sdk/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/Gender;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/Gender;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adsdk/sdk/Gender;->ENUM$VALUES:[Lcom/adsdk/sdk/Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getServerParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/Gender;->param:Ljava/lang/String;

    return-object v0
.end method
