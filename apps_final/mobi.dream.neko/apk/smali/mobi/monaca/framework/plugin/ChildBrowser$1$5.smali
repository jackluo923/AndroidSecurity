.class Lmobi/monaca/framework/plugin/ChildBrowser$1$5;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 331
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1$5;->this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 333
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser$1$5;->this$1:Lmobi/monaca/framework/plugin/ChildBrowser$1;

    iget-object v0, v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;->this$0:Lmobi/monaca/framework/plugin/ChildBrowser;

    # invokes: Lmobi/monaca/framework/plugin/ChildBrowser;->closeDialog()V
    invoke-static {v0}, Lmobi/monaca/framework/plugin/ChildBrowser;->access$700(Lmobi/monaca/framework/plugin/ChildBrowser;)V

    .line 334
    return-void
.end method
