.class final Lcom/appyet/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Luk/co/senab/a/b/b/c;


# instance fields
.field final synthetic a:Lcom/appyet/c/r;


# direct methods
.method constructor <init>(Lcom/appyet/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/s;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0081

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
