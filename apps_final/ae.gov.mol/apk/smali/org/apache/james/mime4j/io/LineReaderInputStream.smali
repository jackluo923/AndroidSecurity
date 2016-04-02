.class public abstract Lorg/apache/james/mime4j/io/LineReaderInputStream;
.super Ljava/io/FilterInputStream;
.source "LineReaderInputStream.java"


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
