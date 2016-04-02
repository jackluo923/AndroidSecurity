.class public final enum Lcom/inmobi/commons/MaritalStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/commons/MaritalStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIVORCED:Lcom/inmobi/commons/MaritalStatus;

.field public static final enum ENGAGED:Lcom/inmobi/commons/MaritalStatus;

.field public static final enum RELATIONSHIP:Lcom/inmobi/commons/MaritalStatus;

.field public static final enum SINGLE:Lcom/inmobi/commons/MaritalStatus;

.field public static final enum UNKNOWN:Lcom/inmobi/commons/MaritalStatus;

.field private static final synthetic a:[Lcom/inmobi/commons/MaritalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/inmobi/commons/MaritalStatus;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->SINGLE:Lcom/inmobi/commons/MaritalStatus;

    new-instance v0, Lcom/inmobi/commons/MaritalStatus;

    const-string v1, "RELATIONSHIP"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->RELATIONSHIP:Lcom/inmobi/commons/MaritalStatus;

    new-instance v0, Lcom/inmobi/commons/MaritalStatus;

    const-string v1, "ENGAGED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->ENGAGED:Lcom/inmobi/commons/MaritalStatus;

    new-instance v0, Lcom/inmobi/commons/MaritalStatus;

    const-string v1, "DIVORCED"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->DIVORCED:Lcom/inmobi/commons/MaritalStatus;

    new-instance v0, Lcom/inmobi/commons/MaritalStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/commons/MaritalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->UNKNOWN:Lcom/inmobi/commons/MaritalStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/commons/MaritalStatus;

    sget-object v1, Lcom/inmobi/commons/MaritalStatus;->SINGLE:Lcom/inmobi/commons/MaritalStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/commons/MaritalStatus;->RELATIONSHIP:Lcom/inmobi/commons/MaritalStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/commons/MaritalStatus;->ENGAGED:Lcom/inmobi/commons/MaritalStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/commons/MaritalStatus;->DIVORCED:Lcom/inmobi/commons/MaritalStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/commons/MaritalStatus;->UNKNOWN:Lcom/inmobi/commons/MaritalStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/commons/MaritalStatus;->a:[Lcom/inmobi/commons/MaritalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    const-class v0, Lcom/inmobi/commons/MaritalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/commons/MaritalStatus;
    .locals 1

    sget-object v0, Lcom/inmobi/commons/MaritalStatus;->a:[Lcom/inmobi/commons/MaritalStatus;

    invoke-virtual {v0}, [Lcom/inmobi/commons/MaritalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/commons/MaritalStatus;

    return-object v0
.end method
