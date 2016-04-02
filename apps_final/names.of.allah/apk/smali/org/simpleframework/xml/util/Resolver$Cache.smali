.class Lorg/simpleframework/xml/util/Resolver$Cache;
.super Lorg/simpleframework/xml/util/LimitedCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/LimitedCache",
        "<",
        "Ljava/util/List",
        "<TM;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .locals 1

    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Cache;->this$0:Lorg/simpleframework/xml/util/Resolver;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/util/LimitedCache;-><init>(I)V

    return-void
.end method
