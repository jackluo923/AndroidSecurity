.class Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;
.super Landroid/os/AsyncTask;
.source "Twitt_Sharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/gov/mol/social/twitter/Twitt_Sharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostTwittTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field pDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;


# direct methods
.method constructor <init>(Lae/gov/mol/social/twitter/Twitt_Sharing;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "twitt"    # [Ljava/lang/String;

    .prologue
    .line 91
    const-string v1, ""

    .line 96
    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    iget-object v4, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->image_path:Ljava/io/File;
    invoke-static {v4}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$3(Lae/gov/mol/social/twitter/Twitt_Sharing;)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->twitt_msg:Ljava/lang/String;
    invoke-static {v5}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$4(Lae/gov/mol/social/twitter/Twitt_Sharing;)Ljava/lang/String;

    move-result-object v5

    .line 97
    sget-object v6, Lae/gov/mol/social/twitter/Twitter_Handler;->twitterObj:Ltwitter4j/Twitter;

    .line 96
    invoke-virtual {v3, v4, v5, v6}, Lae/gov/mol/social/twitter/Twitt_Sharing;->Share_Pic_Text_Titter(Ljava/io/File;Ljava/lang/String;Ltwitter4j/Twitter;)V

    .line 98
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09024f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 111
    .end local v1    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 102
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "duplicate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09024b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 106
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 110
    iget-object v3, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09024c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v2, v1

    .line 111
    .end local v1    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 120
    if-eqz p1, :cond_1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09024d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->showToast(Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    invoke-virtual {v0, p1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->pDialog:Landroid/app/ProgressDialog;

    .line 82
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->pDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->this$0:Lae/gov/mol/social/twitter/Twitt_Sharing;

    # getter for: Lae/gov/mol/social/twitter/Twitt_Sharing;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lae/gov/mol/social/twitter/Twitt_Sharing;->access$0(Lae/gov/mol/social/twitter/Twitt_Sharing;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09024a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 85
    iget-object v0, p0, Lae/gov/mol/social/twitter/Twitt_Sharing$PostTwittTask;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 86
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 87
    return-void
.end method
