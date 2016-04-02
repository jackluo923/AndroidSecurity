.class public final enum Lcom/appyet/context/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/context/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appyet/context/b;

.field public static final enum b:Lcom/appyet/context/b;

.field private static final synthetic c:[Lcom/appyet/context/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/context/b;

    const-string v1, "InstapaperMobilizer"

    invoke-direct {v0, v1, v2}, Lcom/appyet/context/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/b;->a:Lcom/appyet/context/b;

    new-instance v0, Lcom/appyet/context/b;

    const-string v1, "GoogleMobilizer"

    invoke-direct {v0, v1, v3}, Lcom/appyet/context/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/context/b;->b:Lcom/appyet/context/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appyet/context/b;

    sget-object v1, Lcom/appyet/context/b;->a:Lcom/appyet/context/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/context/b;->b:Lcom/appyet/context/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appyet/context/b;->c:[Lcom/appyet/context/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/context/b;
    .locals 1

    const-class v0, Lcom/appyet/context/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/b;

    return-object v0
.end method

.method public static values()[Lcom/appyet/context/b;
    .locals 1

    sget-object v0, Lcom/appyet/context/b;->c:[Lcom/appyet/context/b;

    invoke-virtual {v0}, [Lcom/appyet/context/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/context/b;

    return-object v0
.end method
