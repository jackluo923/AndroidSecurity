.class final Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/aspectj/runtime/reflect/SignatureImpl$Cache;


# instance fields
.field private a:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->b()[Ljava/lang/String;

    return-void
.end method

.method private a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private b()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public final get(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final set(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/runtime/reflect/SignatureImpl$CacheImpl;->b()[Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object p2, v0, p1

    return-void
.end method
