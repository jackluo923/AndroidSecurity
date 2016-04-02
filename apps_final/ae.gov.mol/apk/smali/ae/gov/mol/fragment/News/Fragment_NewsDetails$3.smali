.class Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;
.super Ljava/lang/Object;
.source "Fragment_NewsDetails.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/News/Fragment_NewsDetails;->showMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/News/Fragment_NewsDetails;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "mItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    .line 321
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 336
    :goto_0
    return v6

    .line 324
    :pswitch_0
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    const v5, 0x7f0900b8

    invoke-virtual {v4, v5}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v1, p0, Lae/gov/mol/fragment/News/Fragment_NewsDetails$3;->this$0:Lae/gov/mol/fragment/News/Fragment_NewsDetails;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.youtube.com/user/MOLUAE"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lae/gov/mol/fragment/News/Fragment_NewsDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x7f060781
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
