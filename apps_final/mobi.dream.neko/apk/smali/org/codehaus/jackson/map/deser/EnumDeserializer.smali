.class public Lorg/codehaus/jackson/map/deser/EnumDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/util/EnumResolver",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "res":Lorg/codehaus/jackson/map/util/EnumResolver;, "Lorg/codehaus/jackson/map/util/EnumResolver<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lorg/codehaus/jackson/map/util/EnumResolver;)V

    .line 14
    return-void
.end method
