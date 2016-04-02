.class final Lcom/appyet/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a;


# direct methods
.method constructor <init>(Lcom/appyet/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/d;->a:Lcom/appyet/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/d;->a:Lcom/appyet/c/a;

    invoke-static {v0}, Lcom/appyet/c/a;->a(Lcom/appyet/c/a;)Lcom/appyet/context/ApplicationContext;

    move-result-object v0

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    invoke-virtual {v0}, Lcom/appyet/manager/bp;->W()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
