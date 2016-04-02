.class final Lcom/appyet/c/au;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;


# instance fields
.field final synthetic a:Lcom/appyet/c/at;


# direct methods
.method constructor <init>(Lcom/appyet/c/at;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/au;->a:Lcom/appyet/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/c/au;->a:Lcom/appyet/c/at;

    invoke-static {v0, p1}, Lcom/appyet/c/at;->a(Lcom/appyet/c/at;Z)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/appyet/c/au;->a:Lcom/appyet/c/at;

    invoke-static {v0}, Lcom/appyet/c/at;->a(Lcom/appyet/c/at;)V

    :cond_0
    return-void
.end method
