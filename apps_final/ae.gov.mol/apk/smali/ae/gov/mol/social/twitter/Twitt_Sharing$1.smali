.class Lae/gov/mol/social/twitter/Twitt_Sharing$1;
.super Ljava/lang/Object;
.source "Twitt_Sharing.java"

# interfaces
.implements Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/social/twitter/Twitt_Sharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitt_Sharing;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # invokes: Lae/gov/mol/social/twitter/Twitt_Sharing;->showTwittDialog()V
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$2(Lae/gov/mol/social/twitter/Twitt_Sharing;)V

    .line 61
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090249

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->showToast(Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$1;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->mTwitter:Lae/gov/mol/social/twitter/Twitter_Handler;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$1(Lae/gov/mol/social/twitter/Twitt_Sharing;)Lae/gov/mol/social/twitter/Twitter_Handler;

    move-result-object v0

    invoke-virtual {v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->resetAccessToken()V

    .line 56
    return-void
.end method
