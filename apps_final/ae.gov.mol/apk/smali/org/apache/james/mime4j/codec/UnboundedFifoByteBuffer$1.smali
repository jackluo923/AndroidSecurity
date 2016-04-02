.class Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoByteBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field final synthetic this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;


# direct methods
.method constructor <init>(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v0, v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 224
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 227
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    .line 228
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    # invokes: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->increment(I)I
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$000(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    .line 229
    new-instance v0, Ljava/lang/Byte;

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 233
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    if-ne v1, v4, :cond_0

    .line 234
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 238
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->head:I

    if-ne v1, v2, :cond_1

    .line 239
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->remove()B

    .line 240
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    .line 260
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 246
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    if-eq v0, v1, :cond_3

    .line 247
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v5

    aput-byte v3, v1, v2

    .line 249
    const/4 v0, 0x0

    goto :goto_1

    .line 251
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    :cond_3
    iput v4, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->lastReturnedIndex:I

    .line 257
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v3, v3, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    # invokes: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v2, v3}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    .line 258
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget-object v1, v1, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->buffer:[B

    iget-object v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, v2, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->tail:I

    aput-byte v5, v1, v2

    .line 259
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->this$0:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v2, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    # invokes: Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->decrement(I)I
    invoke-static {v1, v2}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->access$100(Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer$1;->index:I

    goto :goto_0
.end method
