.class Lcom/facebook/widget/WebDialog$3;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/WebDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    # invokes: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$1(Lcom/facebook/widget/WebDialog;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$3;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 298
    return-void
.end method
