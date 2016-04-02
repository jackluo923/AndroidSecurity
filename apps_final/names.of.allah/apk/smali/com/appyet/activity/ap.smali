.class final Lcom/appyet/activity/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/WhatsNewActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/WhatsNewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ap;->a:Lcom/appyet/activity/WhatsNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/ap;->a:Lcom/appyet/activity/WhatsNewActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/WhatsNewActivity;->finish()V

    return-void
.end method
