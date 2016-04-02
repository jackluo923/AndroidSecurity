.class public final Lorg/a/a/a/d/k;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lorg/a/a/a/d/k;->a:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/a/a/a/d/k;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/a/a/a/d/k;->c:I

    const/16 v0, 0xf

    iput v0, p0, Lorg/a/a/a/d/k;->d:I

    iput-object p1, p0, Lorg/a/a/a/d/k;->e:[I

    return-void
.end method

.method public static a(IIIIIIII)I
    .locals 4

    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0x4

    or-int/2addr v1, p2

    shl-int/lit8 v2, p5, 0x4

    or-int/2addr v2, p4

    shl-int/lit8 v3, p7, 0x4

    or-int/2addr v3, p6

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lorg/a/a/a/d/k;->e:[I

    iget v1, p0, Lorg/a/a/a/d/k;->a:I

    shr-int v1, p1, v1

    aget v0, v0, v1

    iget v1, p0, Lorg/a/a/a/d/k;->b:I

    and-int/2addr v1, p1

    iget v2, p0, Lorg/a/a/a/d/k;->c:I

    shl-int/2addr v1, v2

    shr-int/2addr v0, v1

    iget v1, p0, Lorg/a/a/a/d/k;->d:I

    and-int/2addr v0, v1

    return v0
.end method
