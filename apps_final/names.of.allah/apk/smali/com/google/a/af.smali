.class public abstract enum Lcom/google/a/af;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/af;

.field public static final enum b:Lcom/google/a/af;

.field private static final synthetic c:[Lcom/google/a/af;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/a/ag;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/a/ag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/af;->a:Lcom/google/a/af;

    new-instance v0, Lcom/google/a/ah;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/a/ah;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/af;->b:Lcom/google/a/af;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/a/af;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/af;->a:Lcom/google/a/af;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/a/af;->b:Lcom/google/a/af;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/af;->c:[Lcom/google/a/af;

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

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/a/af;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/af;
    .locals 1

    const-class v0, Lcom/google/a/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/af;

    return-object v0
.end method

.method public static values()[Lcom/google/a/af;
    .locals 1

    sget-object v0, Lcom/google/a/af;->c:[Lcom/google/a/af;

    invoke-virtual {v0}, [Lcom/google/a/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/af;

    return-object v0
.end method
