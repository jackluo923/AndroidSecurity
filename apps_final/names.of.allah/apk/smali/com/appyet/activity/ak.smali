.class final Lcom/appyet/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WebActionActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/WebActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ak;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/ak;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-static {v0}, Lcom/appyet/activity/WebActionActivity;->a(Lcom/appyet/activity/WebActionActivity;)V

    iget-object v0, p0, Lcom/appyet/activity/ak;->a:Lcom/appyet/activity/WebActionActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WebActionActivity;->finish()V

    return-void
.end method
