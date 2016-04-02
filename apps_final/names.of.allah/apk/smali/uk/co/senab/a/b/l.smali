.class final Luk/co/senab/a/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Luk/co/senab/a/b/e;


# instance fields
.field final synthetic a:Luk/co/senab/a/b/j;


# direct methods
.method constructor <init>(Luk/co/senab/a/b/j;)V
    .locals 0

    iput-object p1, p0, Luk/co/senab/a/b/l;->a:Luk/co/senab/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Landroid/content/Context;
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method
