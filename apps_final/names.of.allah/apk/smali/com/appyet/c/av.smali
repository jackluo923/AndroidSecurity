.class final Lcom/appyet/c/av;
.super Lcom/a/a/b/a/l;


# instance fields
.field final synthetic a:Lcom/appyet/c/at;


# direct methods
.method constructor <init>(Lcom/appyet/c/at;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/av;->a:Lcom/appyet/c/at;

    invoke-direct {p0}, Lcom/a/a/b/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/av;->a:Lcom/appyet/c/at;

    invoke-static {v0}, Lcom/appyet/c/at;->b(Lcom/appyet/c/at;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/a/a/b/a/a;)V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/appyet/c/ax;->a:[I

    invoke-virtual {p1}, Lcom/a/a/b/a/a;->a()Lcom/a/a/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/a/b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/appyet/c/av;->a:Lcom/appyet/c/at;

    invoke-static {v1}, Lcom/appyet/c/at;->c(Lcom/appyet/c/at;)Lcom/appyet/context/ApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/appyet/c/av;->a:Lcom/appyet/c/at;

    invoke-static {v0}, Lcom/appyet/c/at;->b(Lcom/appyet/c/at;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :pswitch_0
    const-string v0, "Input/Output error"

    goto :goto_0

    :pswitch_1
    const-string v0, "Image can\'t be decoded"

    goto :goto_0

    :pswitch_2
    const-string v0, "Downloads are denied"

    goto :goto_0

    :pswitch_3
    const-string v0, "Out Of Memory error"

    goto :goto_0

    :pswitch_4
    const-string v0, "Unknown error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/appyet/c/av;->a:Lcom/appyet/c/at;

    invoke-static {v0}, Lcom/appyet/c/at;->b(Lcom/appyet/c/at;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
