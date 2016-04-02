.class public final enum Lcom/viewpagerindicator/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viewpagerindicator/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viewpagerindicator/l;

.field public static final enum b:Lcom/viewpagerindicator/l;

.field public static final enum c:Lcom/viewpagerindicator/l;

.field private static final synthetic e:[Lcom/viewpagerindicator/l;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/viewpagerindicator/l;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/l;->a:Lcom/viewpagerindicator/l;

    new-instance v0, Lcom/viewpagerindicator/l;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/l;->b:Lcom/viewpagerindicator/l;

    new-instance v0, Lcom/viewpagerindicator/l;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/viewpagerindicator/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/l;->c:Lcom/viewpagerindicator/l;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viewpagerindicator/l;

    sget-object v1, Lcom/viewpagerindicator/l;->a:Lcom/viewpagerindicator/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/l;->b:Lcom/viewpagerindicator/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viewpagerindicator/l;->c:Lcom/viewpagerindicator/l;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viewpagerindicator/l;->e:[Lcom/viewpagerindicator/l;

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

    iput p3, p0, Lcom/viewpagerindicator/l;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/l;
    .locals 1

    const-class v0, Lcom/viewpagerindicator/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/l;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/l;
    .locals 1

    sget-object v0, Lcom/viewpagerindicator/l;->e:[Lcom/viewpagerindicator/l;

    invoke-virtual {v0}, [Lcom/viewpagerindicator/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viewpagerindicator/l;

    return-object v0
.end method
