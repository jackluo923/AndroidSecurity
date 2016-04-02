.class final Lcom/appyet/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/r;


# direct methods
.method constructor <init>(Lcom/appyet/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/y;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lcom/appyet/c/ah;

    iget-object v1, p0, Lcom/appyet/c/y;->a:Lcom/appyet/c/r;

    invoke-direct {v0, v1}, Lcom/appyet/c/ah;-><init>(Lcom/appyet/c/r;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/c/ah;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
