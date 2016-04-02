.class public final Lorg/a/a/a/a/d;
.super Lorg/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9f

    if-lt v0, v1, :cond_0

    const/16 v1, 0xf1

    if-gt v0, v1, :cond_0

    add-int/lit16 v0, v0, -0x9f

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
