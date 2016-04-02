.class final Lcom/appyet/c/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/r;


# direct methods
.method constructor <init>(Lcom/appyet/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/v;->a:Lcom/appyet/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/v;->a:Lcom/appyet/c/r;

    iget-object v0, v0, Lcom/appyet/c/r;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, p2}, Lcom/appyet/manager/bp;->a(I)V

    iget-object v0, p0, Lcom/appyet/c/v;->a:Lcom/appyet/c/r;

    invoke-static {v0}, Lcom/appyet/c/r;->a(Lcom/appyet/c/r;)Lcom/appyet/c/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/ae;->clear()V

    iget-object v0, p0, Lcom/appyet/c/v;->a:Lcom/appyet/c/r;

    invoke-virtual {v0}, Lcom/appyet/c/r;->c()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
