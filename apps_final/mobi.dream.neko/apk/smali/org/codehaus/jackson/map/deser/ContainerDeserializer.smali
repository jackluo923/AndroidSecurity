.class public abstract Lorg/codehaus/jackson/map/deser/ContainerDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "ContainerDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase",
        "<TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lorg/codehaus/jackson/map/deser/ContainerDeserializer;, "Lorg/codehaus/jackson/map/deser/ContainerDeserializer<TT;>;"
    .local p1, "selfType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    .line 13
    return-void
.end method
