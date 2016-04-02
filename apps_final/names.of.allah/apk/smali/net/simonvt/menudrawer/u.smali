.class final Lnet/simonvt/menudrawer/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/t;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/t;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/t;->g()V

    sget-object v0, Lnet/simonvt/menudrawer/v;->a:[I

    iget-object v1, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/t;->getPosition()Lnet/simonvt/menudrawer/x;

    move-result-object v1

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    invoke-static {v0}, Lnet/simonvt/menudrawer/t;->a(Lnet/simonvt/menudrawer/t;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Lnet/simonvt/menudrawer/t;->a(II)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/u;->a:Lnet/simonvt/menudrawer/t;

    invoke-static {v0}, Lnet/simonvt/menudrawer/t;->a(Lnet/simonvt/menudrawer/t;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
