.class public abstract Lorg/a/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(B)Z
    .locals 1

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a([BI)Lorg/a/a/a/c;
.end method

.method public abstract b()F
.end method

.method public abstract c()Lorg/a/a/a/c;
.end method

.method public abstract d()V
.end method
