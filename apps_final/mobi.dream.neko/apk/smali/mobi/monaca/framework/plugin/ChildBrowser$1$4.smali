.class Lmobi/monaca/framework/plugin/ChildBrowser$1$4;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/plugin/ChildBrowser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/plugin/ChildBrowser$1;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1$4;->this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 315
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 316
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1$4;->this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1$4;->this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;

    iget-object v1, v1, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # getter for: Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;
    invoke-static {v1}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmobi/monaca/framework/plugin/ChildBrowser;->navigate(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$600(Lmobi/monaca/framework/plugin/ChildBrowser;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
