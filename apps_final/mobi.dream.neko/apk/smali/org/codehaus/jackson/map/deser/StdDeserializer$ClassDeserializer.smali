.class public Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;
.super Lorg/codehaus/jackson/map/deser/std/ClassDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/deser/StdDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassDeserializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codehaus/jackson/map/deser/StdDeserializer;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/StdDeserializer;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;, "Lorg/codehaus/jackson/map/deser/StdDeserializer<TT;>.ClassDeserializer;"
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;->this$0:Lorg/codehaus/jackson/map/deser/StdDeserializer;

    invoke-direct {p0}, Lorg/codehaus/jackson/map/deser/std/ClassDeserializer;-><init>()V

    return-void
.end method
