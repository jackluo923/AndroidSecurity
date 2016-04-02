.class public final Landroid/support/v4/view/af;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0}, Landroid/support/v4/view/an;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/am;

    invoke-direct {v0}, Landroid/support/v4/view/am;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    :cond_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/al;

    invoke-direct {v0}, Landroid/support/v4/view/al;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    :cond_2
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/ak;

    invoke-direct {v0}, Landroid/support/v4/view/ak;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/aj;

    invoke-direct {v0}, Landroid/support/v4/view/aj;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    if-lt v0, v1, :cond_5

    new-instance v0, Landroid/support/v4/view/ai;

    invoke-direct {v0}, Landroid/support/v4/view/ai;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/ao;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ao;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->b(Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ao;->b(Landroid/view/View;I)V

    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->d(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)Z
    .locals 1

    sget-object v0, Landroid/support/v4/view/af;->a:Landroid/support/v4/view/ao;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ao;->f(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
