.class public abstract Lorg/codehaus/jackson/map/deser/StdDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;,
        Lorg/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;,
        Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/jackson/map/deser/std/StdDeserializer",
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
    .line 23
    .local p0, "this":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
    .param p1, "valueType"    # Lorg/codehaus/jackson/type/JavaType;

    .prologue
    .line 27
    .local p0, "this":Lorg/codehaus/jackson/map/deser/StdDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<TT;>;"
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lorg/codehaus/jackson/type/JavaType;)V

    .line 28
    return-void
.end method
