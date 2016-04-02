.class public final Landroid/support/v4/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/support/v4/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/a/f;

    invoke-direct {v0}, Landroid/support/v4/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/a/b;->a:Landroid/support/v4/a/c;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/a/e;

    invoke-direct {v0}, Landroid/support/v4/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/a/b;->a:Landroid/support/v4/a/c;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/a/d;

    invoke-direct {v0}, Landroid/support/v4/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/a/b;->a:Landroid/support/v4/a/c;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Landroid/support/v4/a/b;->a:Landroid/support/v4/a/c;

    invoke-interface {v0, p0}, Landroid/support/v4/a/c;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
