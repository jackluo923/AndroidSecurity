.class public interface abstract Lorg/apache/james/mime4j/parser/EntityStateMachine;
.super Ljava/lang/Object;
.source "EntityStateMachine.java"


# virtual methods
.method public abstract advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation
.end method

.method public abstract getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getContentStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getField()Lorg/apache/james/mime4j/parser/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract setRecursionMode(I)V
.end method
