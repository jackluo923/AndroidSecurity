.class Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;
.super Ljava/lang/Object;
.source "FacebookDialog.java"

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;->this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPresent(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;->this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    # getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->access$5(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;->this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    # getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->access$5(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 764
    # invokes: Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->access$2()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;->this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    iget-object v1, v1, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder$1;->this$1:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;

    # getter for: Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->imageAttachments:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;->access$5(Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    .line 766
    :cond_0
    return-void
.end method
