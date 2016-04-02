.class public final enum Lcom/appyet/manager/ak;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appyet/manager/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/appyet/manager/ak;

.field public static final enum b:Lcom/appyet/manager/ak;

.field public static final enum c:Lcom/appyet/manager/ak;

.field private static final synthetic d:[Lcom/appyet/manager/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/appyet/manager/ak;

    const-string v1, "Name"

    invoke-direct {v0, v1, v2}, Lcom/appyet/manager/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/manager/ak;->a:Lcom/appyet/manager/ak;

    new-instance v0, Lcom/appyet/manager/ak;

    const-string v1, "Date"

    invoke-direct {v0, v1, v3}, Lcom/appyet/manager/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/manager/ak;->b:Lcom/appyet/manager/ak;

    new-instance v0, Lcom/appyet/manager/ak;

    const-string v1, "Size"

    invoke-direct {v0, v1, v4}, Lcom/appyet/manager/ak;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appyet/manager/ak;->c:Lcom/appyet/manager/ak;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appyet/manager/ak;

    sget-object v1, Lcom/appyet/manager/ak;->a:Lcom/appyet/manager/ak;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appyet/manager/ak;->b:Lcom/appyet/manager/ak;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appyet/manager/ak;->c:Lcom/appyet/manager/ak;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appyet/manager/ak;->d:[Lcom/appyet/manager/ak;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appyet/manager/ak;
    .locals 1

    const-class v0, Lcom/appyet/manager/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/appyet/manager/ak;

    return-object v0
.end method

.method public static values()[Lcom/appyet/manager/ak;
    .locals 1

    sget-object v0, Lcom/appyet/manager/ak;->d:[Lcom/appyet/manager/ak;

    invoke-virtual {v0}, [Lcom/appyet/manager/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appyet/manager/ak;

    return-object v0
.end method
