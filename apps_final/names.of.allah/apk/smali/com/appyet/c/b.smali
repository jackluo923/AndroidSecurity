.class final Lcom/appyet/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a;


# direct methods
.method constructor <init>(Lcom/appyet/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/b;->a:Lcom/appyet/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/b;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0, p2}, Lcom/appyet/manager/bp;->f(I)V

    iget-object v0, p0, Lcom/appyet/c/b;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->b(Lcom/appyet/c/a;)Lcom/appyet/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appyet/c/g;->notifyDataSetChanged()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
