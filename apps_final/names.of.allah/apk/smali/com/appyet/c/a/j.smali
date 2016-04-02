.class final Lcom/appyet/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/a/i;


# direct methods
.method constructor <init>(Lcom/appyet/c/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/j;->a:Lcom/appyet/c/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/a/j;->a:Lcom/appyet/c/a/i;

    invoke-static {v0}, Lcom/appyet/c/a/i;->a(Lcom/appyet/c/a/i;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
