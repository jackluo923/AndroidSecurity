.class Lae/gov/mol/social/twitter/Twitter_Handler$1;
.super Landroid/os/Handler;
.source "Twitter_Handler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/social/twitter/Twitter_Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitter_Handler;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitter_Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitter_Handler$1;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 210
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler$1;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$0(Lae/gov/mol/social/twitter/Twitter_Handler;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    .line 219
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitter_Handler$1;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lae/gov/mol/social/twitter/Twitter_Handler;->showLoginDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$1(Lae/gov/mol/social/twitter/Twitter_Handler;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitter_Handler$1;->this$0:Lae/gov/mol/social/twitter/Twitter_Handler;

    # getter for: Lae/gov/mol/social/twitter/Twitter_Handler;->mListener:Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitter_Handler;->access$2(Lae/gov/mol/social/twitter/Twitter_Handler;)Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lae/gov/mol/social/twitter/Twitter_Handler$TwDialogListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method
