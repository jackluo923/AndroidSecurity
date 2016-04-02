.class public final enum Lcom/inmobi/commons/EthnicityType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/EthnicityType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AFRICANAMERICAN:Lcom/inmobi/commons/EthnicityType;

.field public static final enum ASIAN:Lcom/inmobi/commons/EthnicityType;

.field public static final enum CAUCASIAN:Lcom/inmobi/commons/EthnicityType;

.field public static final enum HISPANIC:Lcom/inmobi/commons/EthnicityType;

.field public static final enum OTHER:Lcom/inmobi/commons/EthnicityType;

.field public static final enum UNKNOWN:Lcom/inmobi/commons/EthnicityType;

.field private static final synthetic a:[Lcom/inmobi/commons/EthnicityType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "HISPANIC"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->HISPANIC:Lcom/inmobi/commons/EthnicityType;

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "AFRICANAMERICAN"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->AFRICANAMERICAN:Lcom/inmobi/commons/EthnicityType;

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "ASIAN"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->ASIAN:Lcom/inmobi/commons/EthnicityType;

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "CAUCASIAN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->CAUCASIAN:Lcom/inmobi/commons/EthnicityType;

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->OTHER:Lcom/inmobi/commons/EthnicityType;

    new-instance v0, Lcom/inmobi/commons/EthnicityType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/EthnicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->UNKNOWN:Lcom/inmobi/commons/EthnicityType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/commons/EthnicityType;

    sget-object v1, Lcom/inmobi/commons/EthnicityType;->HISPANIC:Lcom/inmobi/commons/EthnicityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/EthnicityType;->AFRICANAMERICAN:Lcom/inmobi/commons/EthnicityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/EthnicityType;->ASIAN:Lcom/inmobi/commons/EthnicityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/EthnicityType;->CAUCASIAN:Lcom/inmobi/commons/EthnicityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/commons/EthnicityType;->OTHER:Lcom/inmobi/commons/EthnicityType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/commons/EthnicityType;->UNKNOWN:Lcom/inmobi/commons/EthnicityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/EthnicityType;->a:[Lcom/inmobi/commons/EthnicityType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/EthnicityType;
    .locals 1

    const-class v0, Lcom/inmobi/commons/EthnicityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/EthnicityType;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/EthnicityType;->a:[Lcom/inmobi/commons/EthnicityType;

    invoke-virtual {v0}, [Lcom/inmobi/commons/EthnicityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/EthnicityType;

    return-object v0
.end method
