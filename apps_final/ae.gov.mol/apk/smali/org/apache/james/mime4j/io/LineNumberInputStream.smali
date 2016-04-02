.class public Lorg/apache/james/mime4j/io/LineNumberInputStream;
.super Ljava/io/FilterInputStream;
.source "LineNumberInputStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/io/LineNumberSource;


# instance fields
.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    .line 42
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 51
    .local v0, "b":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 52
    iget v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    .line 54
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v2, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 60
    .local v1, "n":I
    move v0, p2

    .local v0, "i":I
    :goto_0
    add-int v2, p2, v1

    if-ge v0, v2, :cond_1

    .line 61
    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 62
    iget v2, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/io/LineNumberInputStream;->lineNumber:I

    .line 60
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return v1
.end method
