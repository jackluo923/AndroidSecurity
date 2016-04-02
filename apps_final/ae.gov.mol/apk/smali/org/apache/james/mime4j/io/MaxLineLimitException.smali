.class public Lorg/apache/james/mime4j/io/MaxLineLimitException;
.super Lorg/apache/james/mime4j/MimeIOException;
.source "MaxLineLimitException.java"


# static fields
.field private static final serialVersionUID:J = 0x6f9044fce602dfd5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
