.class public final enum Lcom/appyet/context/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/context/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appyet/context/d;

.field public static final enum b:Lcom/appyet/context/d;

.field public static final enum c:Lcom/appyet/context/d;

.field public static final enum d:Lcom/appyet/context/d;

.field private static final synthetic e:[Lcom/appyet/context/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/context/d;

    const-string v1, "Module"

    invoke-direct {v0, v1, v2}, Lcom/appyet/context/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/d;->a:Lcom/appyet/context/d;

    new-instance v0, Lcom/appyet/context/d;

    const-string v1, "Search"

    invoke-direct {v0, v1, v3}, Lcom/appyet/context/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/d;->b:Lcom/appyet/context/d;

    new-instance v0, Lcom/appyet/context/d;

    const-string v1, "FeedQuery"

    invoke-direct {v0, v1, v4}, Lcom/appyet/context/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/d;->c:Lcom/appyet/context/d;

    new-instance v0, Lcom/appyet/context/d;

    const-string v1, "All"

    invoke-direct {v0, v1, v5}, Lcom/appyet/context/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/d;->d:Lcom/appyet/context/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/appyet/context/d;

    sget-object v1, Lcom/appyet/context/d;->a:Lcom/appyet/context/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/context/d;->b:Lcom/appyet/context/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/context/d;->c:Lcom/appyet/context/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appyet/context/d;->d:Lcom/appyet/context/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/appyet/context/d;->e:[Lcom/appyet/context/d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/context/d;
    .locals 1

    const-class v0, Lcom/appyet/context/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/d;

    return-object v0
.end method

.method public static values()[Lcom/appyet/context/d;
    .locals 1

    sget-object v0, Lcom/appyet/context/d;->e:[Lcom/appyet/context/d;

    invoke-virtual {v0}, [Lcom/appyet/context/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/context/d;

    return-object v0
.end method
