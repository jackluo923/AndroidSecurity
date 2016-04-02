.class public final Landroid/support/v4/view/ab;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ad;

    invoke-direct {v0}, Landroid/support/v4/view/ad;-><init>()V

    sput-object v0, Landroid/support/v4/view/ab;->a:Landroid/support/v4/view/ae;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/ac;

    invoke-direct {v0}, Landroid/support/v4/view/ac;-><init>()V

    sput-object v0, Landroid/support/v4/view/ab;->a:Landroid/support/v4/view/ae;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ab;->a:Landroid/support/v4/view/ae;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ae;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/ab;->a:Landroid/support/v4/view/ae;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ae;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
