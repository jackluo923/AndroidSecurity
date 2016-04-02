.class public final enum Lnet/simonvt/menudrawer/x;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/simonvt/menudrawer/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lnet/simonvt/menudrawer/x;

.field public static final enum b:Lnet/simonvt/menudrawer/x;

.field public static final enum c:Lnet/simonvt/menudrawer/x;

.field public static final enum d:Lnet/simonvt/menudrawer/x;

.field public static final enum e:Lnet/simonvt/menudrawer/x;

.field public static final enum f:Lnet/simonvt/menudrawer/x;

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lnet/simonvt/menudrawer/x;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lnet/simonvt/menudrawer/x;


# instance fields
.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "LEFT"

    invoke-direct {v1, v2, v0, v0}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "TOP"

    invoke-direct {v1, v2, v5, v5}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->b:Lnet/simonvt/menudrawer/x;

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "RIGHT"

    invoke-direct {v1, v2, v6, v6}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->c:Lnet/simonvt/menudrawer/x;

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "BOTTOM"

    invoke-direct {v1, v2, v7, v7}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->d:Lnet/simonvt/menudrawer/x;

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "START"

    invoke-direct {v1, v2, v8, v8}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->e:Lnet/simonvt/menudrawer/x;

    new-instance v1, Lnet/simonvt/menudrawer/x;

    const-string v2, "END"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lnet/simonvt/menudrawer/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/simonvt/menudrawer/x;->f:Lnet/simonvt/menudrawer/x;

    const/4 v1, 0x6

    new-array v1, v1, [Lnet/simonvt/menudrawer/x;

    sget-object v2, Lnet/simonvt/menudrawer/x;->a:Lnet/simonvt/menudrawer/x;

    aput-object v2, v1, v0

    sget-object v2, Lnet/simonvt/menudrawer/x;->b:Lnet/simonvt/menudrawer/x;

    aput-object v2, v1, v5

    sget-object v2, Lnet/simonvt/menudrawer/x;->c:Lnet/simonvt/menudrawer/x;

    aput-object v2, v1, v6

    sget-object v2, Lnet/simonvt/menudrawer/x;->d:Lnet/simonvt/menudrawer/x;

    aput-object v2, v1, v7

    sget-object v2, Lnet/simonvt/menudrawer/x;->e:Lnet/simonvt/menudrawer/x;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lnet/simonvt/menudrawer/x;->f:Lnet/simonvt/menudrawer/x;

    aput-object v3, v1, v2

    sput-object v1, Lnet/simonvt/menudrawer/x;->i:[Lnet/simonvt/menudrawer/x;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lnet/simonvt/menudrawer/x;->h:Landroid/util/SparseArray;

    invoke-static {}, Lnet/simonvt/menudrawer/x;->values()[Lnet/simonvt/menudrawer/x;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Lnet/simonvt/menudrawer/x;->h:Landroid/util/SparseArray;

    iget v5, v3, Lnet/simonvt/menudrawer/x;->g:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    iput p3, p0, Lnet/simonvt/menudrawer/x;->g:I

    return-void
.end method

.method public static a(I)Lnet/simonvt/menudrawer/x;
    .locals 1

    sget-object v0, Lnet/simonvt/menudrawer/x;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/x;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/simonvt/menudrawer/x;
    .locals 1

    const-class v0, Lnet/simonvt/menudrawer/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/simonvt/menudrawer/x;

    return-object v0
.end method

.method public static values()[Lnet/simonvt/menudrawer/x;
    .locals 1

    sget-object v0, Lnet/simonvt/menudrawer/x;->i:[Lnet/simonvt/menudrawer/x;

    invoke-virtual {v0}, [Lnet/simonvt/menudrawer/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/simonvt/menudrawer/x;

    return-object v0
.end method
