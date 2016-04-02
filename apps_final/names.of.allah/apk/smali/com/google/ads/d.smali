.class public final Lcom/google/ads/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lcom/google/ads/d;

.field public static final b:Lcom/google/ads/d;

.field public static final c:Lcom/google/ads/d;

.field public static final d:Lcom/google/ads/d;

.field public static final e:Lcom/google/ads/d;

.field public static final f:Lcom/google/ads/d;


# instance fields
.field private final g:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/ads/d;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->a:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->b:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->c:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->d:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->e:Lcom/google/ads/d;

    new-instance v0, Lcom/google/ads/d;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/d;-><init>(IIB)V

    sput-object v0, Lcom/google/ads/d;->f:Lcom/google/ads/d;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/ads/d;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method private constructor <init>(IIB)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/google/ads/d;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/Context;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final varargs a([Lcom/google/ads/d;)Lcom/google/ads/d;
    .locals 14

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v6

    array-length v7, p1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v2, p1, v4

    iget-object v0, v2, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v8

    iget-object v0, v2, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v9

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    iget-object v10, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v10}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v10

    int-to-float v11, v8

    int-to-float v12, v0

    const/high16 v13, 0x3fa00000    # 1.25f

    mul-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_3

    int-to-float v11, v8

    int-to-float v0, v0

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v12

    cmpl-float v0, v11, v0

    if-ltz v0, :cond_3

    int-to-float v0, v9

    int-to-float v11, v10

    const/high16 v12, 0x3fa00000    # 1.25f

    mul-float/2addr v11, v12

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_3

    int-to-float v0, v9

    int-to-float v10, v10

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    cmpl-float v0, v0, v10

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    mul-int v0, v8, v9

    int-to-float v0, v0

    mul-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v0, v8

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v0, v8

    if-lez v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v0, v8, v0

    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_4

    move-object v1, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/content/Context;)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/ads/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/ads/d;

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    iget-object v1, p1, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/d;->g:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
