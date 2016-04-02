.class public final enum Lnet/simonvt/menudrawer/r;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/simonvt/menudrawer/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnet/simonvt/menudrawer/r;

.field public static final enum b:Lnet/simonvt/menudrawer/r;

.field public static final enum c:Lnet/simonvt/menudrawer/r;

.field private static final synthetic d:[Lnet/simonvt/menudrawer/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lnet/simonvt/menudrawer/r;

    const-string v1, "BEHIND"

    invoke-direct {v0, v1, v2}, Lnet/simonvt/menudrawer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    new-instance v0, Lnet/simonvt/menudrawer/r;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lnet/simonvt/menudrawer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/r;->b:Lnet/simonvt/menudrawer/r;

    new-instance v0, Lnet/simonvt/menudrawer/r;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v4}, Lnet/simonvt/menudrawer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/simonvt/menudrawer/r;->c:Lnet/simonvt/menudrawer/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/simonvt/menudrawer/r;

    sget-object v1, Lnet/simonvt/menudrawer/r;->a:Lnet/simonvt/menudrawer/r;

    aput-object v1, v0, v2

    sget-object v1, Lnet/simonvt/menudrawer/r;->b:Lnet/simonvt/menudrawer/r;

    aput-object v1, v0, v3

    sget-object v1, Lnet/simonvt/menudrawer/r;->c:Lnet/simonvt/menudrawer/r;

    aput-object v1, v0, v4

    sput-object v0, Lnet/simonvt/menudrawer/r;->d:[Lnet/simonvt/menudrawer/r;

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

.method public static valueOf(Ljava/lang/String;)Lnet/simonvt/menudrawer/r;
    .locals 1

    const-class v0, Lnet/simonvt/menudrawer/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/r;

    return-object v0
.end method

.method public static values()[Lnet/simonvt/menudrawer/r;
    .locals 1

    sget-object v0, Lnet/simonvt/menudrawer/r;->d:[Lnet/simonvt/menudrawer/r;

    invoke-virtual {v0}, [Lnet/simonvt/menudrawer/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/simonvt/menudrawer/r;

    return-object v0
.end method
