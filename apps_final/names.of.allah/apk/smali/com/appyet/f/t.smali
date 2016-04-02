.class final Lcom/appyet/f/t;
.super Ljava/lang/Object;


# instance fields
.field private transient a:[Lcom/appyet/f/u;

.field private transient b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/appyet/f/t;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/appyet/f/t;->d:F

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/appyet/f/u;

    iput-object v0, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    const/16 v0, 0xf

    iput v0, p0, Lcom/appyet/f/t;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const v8, 0x7fffffff

    iget-object v1, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, v2, Lcom/appyet/f/u;->a:I

    if-ne v3, p1, :cond_0

    iget-object v0, v2, Lcom/appyet/f/u;->c:Ljava/lang/Object;

    iput-object p2, v2, Lcom/appyet/f/u;->c:Ljava/lang/Object;

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v2, Lcom/appyet/f/u;->d:Lcom/appyet/f/u;

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/appyet/f/t;->b:I

    iget v3, p0, Lcom/appyet/f/t;->c:I

    if-lt v2, v3, :cond_4

    iget-object v0, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    array-length v0, v0

    iget-object v3, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Lcom/appyet/f/u;

    int-to-float v1, v4

    iget v2, p0, Lcom/appyet/f/t;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/appyet/f/t;->c:I

    iput-object v5, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    aget-object v0, v3, v1

    :goto_3
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/appyet/f/u;->d:Lcom/appyet/f/u;

    iget v6, v0, Lcom/appyet/f/u;->a:I

    and-int/2addr v6, v8

    rem-int/2addr v6, v4

    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/appyet/f/u;->d:Lcom/appyet/f/u;

    aput-object v0, v5, v6

    move-object v0, v2

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/appyet/f/t;->a:[Lcom/appyet/f/u;

    and-int v0, p1, v8

    array-length v2, v1

    rem-int/2addr v0, v2

    :cond_4
    new-instance v2, Lcom/appyet/f/u;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcom/appyet/f/u;-><init>(IILjava/lang/Object;Lcom/appyet/f/u;)V

    aput-object v2, v1, v0

    iget v0, p0, Lcom/appyet/f/t;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appyet/f/t;->b:I

    const/4 v0, 0x0

    goto :goto_1
.end method
