.class public final Landroid/support/v4/view/ap;
.super Ljava/lang/Object;


# static fields
.field static final a:Landroid/support/v4/view/as;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0}, Landroid/support/v4/view/ar;-><init>()V

    sput-object v0, Landroid/support/v4/view/ap;->a:Landroid/support/v4/view/as;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0}, Landroid/support/v4/view/aq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ap;->a:Landroid/support/v4/view/as;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/ap;->a:Landroid/support/v4/view/as;

    invoke-interface {v0, p0}, Landroid/support/v4/view/as;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
