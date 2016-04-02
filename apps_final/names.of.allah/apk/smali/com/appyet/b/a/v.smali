.class public final enum Lcom/appyet/b/a/v;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/b/a/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appyet/b/a/v;

.field public static final enum b:Lcom/appyet/b/a/v;

.field public static final enum c:Lcom/appyet/b/a/v;

.field private static final synthetic d:[Lcom/appyet/b/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/b/a/v;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/appyet/b/a/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    new-instance v0, Lcom/appyet/b/a/v;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v3}, Lcom/appyet/b/a/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    new-instance v0, Lcom/appyet/b/a/v;

    const-string v1, "NoChange"

    invoke-direct {v0, v1, v4}, Lcom/appyet/b/a/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/b/a/v;->c:Lcom/appyet/b/a/v;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/b/a/v;

    sget-object v1, Lcom/appyet/b/a/v;->a:Lcom/appyet/b/a/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/b/a/v;->b:Lcom/appyet/b/a/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/b/a/v;->c:Lcom/appyet/b/a/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/b/a/v;->d:[Lcom/appyet/b/a/v;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/b/a/v;
    .locals 1

    const-class v0, Lcom/appyet/b/a/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/b/a/v;

    return-object v0
.end method

.method public static values()[Lcom/appyet/b/a/v;
    .locals 1

    sget-object v0, Lcom/appyet/b/a/v;->d:[Lcom/appyet/b/a/v;

    invoke-virtual {v0}, [Lcom/appyet/b/a/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/b/a/v;

    return-object v0
.end method
