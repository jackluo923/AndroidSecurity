.class public Lorg/apache/james/mime4j/message/BodyCopier;
.super Ljava/lang/Object;
.source "BodyCopier.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;
    .locals 2
    .param p0, "body"    # Lorg/apache/james/mime4j/message/Body;

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Message;

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    check-cast p0, Lorg/apache/james/mime4j/message/Message;

    .end local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Message;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    .line 63
    :goto_0
    return-object v0

    .line 59
    .restart local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_1
    instance-of v0, p0, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/message/Multipart;

    check-cast p0, Lorg/apache/james/mime4j/message/Multipart;

    .end local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/message/Multipart;-><init>(Lorg/apache/james/mime4j/message/Multipart;)V

    goto :goto_0

    .line 62
    .restart local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_2
    instance-of v0, p0, Lorg/apache/james/mime4j/message/SingleBody;

    if-eqz v0, :cond_3

    .line 63
    check-cast p0, Lorg/apache/james/mime4j/message/SingleBody;

    .end local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/SingleBody;->copy()Lorg/apache/james/mime4j/message/SingleBody;

    move-result-object v0

    goto :goto_0

    .line 65
    .restart local p0    # "body":Lorg/apache/james/mime4j/message/Body;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported body class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
