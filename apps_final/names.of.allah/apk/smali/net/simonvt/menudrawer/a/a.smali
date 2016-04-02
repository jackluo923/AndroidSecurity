.class public final Lnet/simonvt/menudrawer/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSupportActionBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/a/a;->c:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a/a;->c:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    new-instance v0, Lnet/simonvt/menudrawer/a/c;

    invoke-direct {v0, v1}, Lnet/simonvt/menudrawer/a/c;-><init>(Landroid/app/Activity;)V

    :goto_1
    iput-object v0, p0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a/d;->b(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/a/a;->c:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    check-cast v0, Lnet/simonvt/menudrawer/a/c;

    iget-object v2, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v0, v0, Lnet/simonvt/menudrawer/a/c;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/a/a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lnet/simonvt/menudrawer/a/a;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lnet/simonvt/menudrawer/a/d;->a(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method
