.class Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;
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
    iput-object p1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onTweet"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v0, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringHeadline:Ljava/lang/String;

    iput-object v1, v0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringTweetMessage:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v1, v1, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->mStringTweetMessage:Ljava/lang/String;

    iget-object v2, p0, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail$4;->this$0:Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;

    iget-object v2, v2, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->newsImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lae/gov/mol/fragment/AboutUs/ActivityNewDetail;->onClickTwitt(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    return-void
.end method
