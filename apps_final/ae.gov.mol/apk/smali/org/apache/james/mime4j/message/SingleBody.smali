.class public abstract Lorg/apache/james/mime4j/message/SingleBody;
.super Ljava/lang/Object;
.source "SingleBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 38
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .param p1, "parent"    # Lorg/apache/james/mime4j/message/Entity;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/apache/james/mime4j/message/SingleBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 52
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
