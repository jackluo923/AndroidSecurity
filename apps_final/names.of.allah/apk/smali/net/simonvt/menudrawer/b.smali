.class final Lnet/simonvt/menudrawer/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/simonvt/menudrawer/a;


# direct methods
.method constructor <init>(Lnet/simonvt/menudrawer/a;)V
    .locals 0

    iput-object p1, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    invoke-static {v0}, Lnet/simonvt/menudrawer/a;->a(Lnet/simonvt/menudrawer/a;)Z

    iget-object v0, p0, Lnet/simonvt/menudrawer/b;->a:Lnet/simonvt/menudrawer/a;

    invoke-virtual {v0}, Lnet/simonvt/menudrawer/a;->invalidate()V

    return-void
.end method
