.class public Lorg/codehaus/jackson/map/deser/ThrowableDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/ThrowableDeserializer;
.source "ThrowableDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 0
    .param p1, "baseDeserializer"    # Lorg/codehaus/jackson/map/deser/BeanDeserializer;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lorg/codehaus/jackson/map/deser/BeanDeserializer;)V

    .line 12
    return-void
.end method
