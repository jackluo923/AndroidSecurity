.class public Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->a:I

    iput p2, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->b:I

    iput p3, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->c:I

    iput p4, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->d:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->d:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->c:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->a:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/inmobi/re/container/mraidimpl/ResizeDimensions;->b:I

    return v0
.end method
