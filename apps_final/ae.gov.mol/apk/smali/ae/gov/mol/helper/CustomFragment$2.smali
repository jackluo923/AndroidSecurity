.class Lae/gov/mol/helper/CustomFragment$2;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment;->buildAlertMessageNoGps(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$2;->this$0:Lae/gov/mol/helper/CustomFragment;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 282
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$2;->this$0:Lae/gov/mol/helper/CustomFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lae/gov/mol/helper/CustomFragment;->access$2(Lae/gov/mol/helper/CustomFragment;Z)V

    .line 283
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$2;->this$0:Lae/gov/mol/helper/CustomFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/CustomFragment;->startActivity(Landroid/content/Intent;)V

    .line 284
    return-void
.end method
