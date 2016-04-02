.class public final enum Lcom/a/a/b/a/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/b/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/b/a/b;

.field public static final enum b:Lcom/a/a/b/a/b;

.field public static final enum c:Lcom/a/a/b/a/b;

.field public static final enum d:Lcom/a/a/b/a/b;

.field public static final enum e:Lcom/a/a/b/a/b;

.field private static final synthetic f:[Lcom/a/a/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/a/a/b/a/b;

    const-string v1, "IO_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/b;->a:Lcom/a/a/b/a/b;

    new-instance v0, Lcom/a/a/b/a/b;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/a/a/b/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/b;->b:Lcom/a/a/b/a/b;

    new-instance v0, Lcom/a/a/b/a/b;

    const-string v1, "NETWORK_DENIED"

    invoke-direct {v0, v1, v4}, Lcom/a/a/b/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/b;->c:Lcom/a/a/b/a/b;

    new-instance v0, Lcom/a/a/b/a/b;

    const-string v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v5}, Lcom/a/a/b/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/b;->d:Lcom/a/a/b/a/b;

    new-instance v0, Lcom/a/a/b/a/b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/a/a/b/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/b/a/b;->e:Lcom/a/a/b/a/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/a/a/b/a/b;

    sget-object v1, Lcom/a/a/b/a/b;->a:Lcom/a/a/b/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/b/a/b;->b:Lcom/a/a/b/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/b/a/b;->c:Lcom/a/a/b/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/b/a/b;->d:Lcom/a/a/b/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/b/a/b;->e:Lcom/a/a/b/a/b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/a/a/b/a/b;->f:[Lcom/a/a/b/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/b/a/b;
    .locals 1

    const-class v0, Lcom/a/a/b/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/a/b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/b/a/b;
    .locals 1

    sget-object v0, Lcom/a/a/b/a/b;->f:[Lcom/a/a/b/a/b;

    invoke-virtual {v0}, [Lcom/a/a/b/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/b/a/b;

    return-object v0
.end method
