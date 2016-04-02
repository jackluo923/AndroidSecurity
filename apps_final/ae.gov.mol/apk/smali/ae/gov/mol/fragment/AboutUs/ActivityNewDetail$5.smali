.class Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;
.super Ljava/lang/Object;
.source "ActivityNewDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # getter for: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->facebook:Lcom/facebook/android/Facebook;
    invoke-static {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$0(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    invoke-virtual {v0}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->loginAndPostToWall()V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringFacebookMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$4(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$5;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    # getter for: Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->messageToPost:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->access$1(Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->postToWall(Ljava/lang/String;)V

    goto :goto_0
.end method
