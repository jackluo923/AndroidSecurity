.class public final enum Lcom/viewpagerindicator/m;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viewpagerindicator/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viewpagerindicator/m;

.field public static final enum b:Lcom/viewpagerindicator/m;

.field private static final synthetic d:[Lcom/viewpagerindicator/m;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/viewpagerindicator/m;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/m;->a:Lcom/viewpagerindicator/m;

    new-instance v0, Lcom/viewpagerindicator/m;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/m;->b:Lcom/viewpagerindicator/m;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viewpagerindicator/m;

    sget-object v1, Lcom/viewpagerindicator/m;->a:Lcom/viewpagerindicator/m;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/m;->b:Lcom/viewpagerindicator/m;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viewpagerindicator/m;->d:[Lcom/viewpagerindicator/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/viewpagerindicator/m;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/m;
    .locals 1

    const-class v0, Lcom/viewpagerindicator/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/m;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/m;
    .locals 1

    sget-object v0, Lcom/viewpagerindicator/m;->d:[Lcom/viewpagerindicator/m;

    invoke-virtual {v0}, [Lcom/viewpagerindicator/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viewpagerindicator/m;

    return-object v0
.end method
