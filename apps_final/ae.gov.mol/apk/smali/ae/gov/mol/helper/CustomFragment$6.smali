.class Lae/gov/mol/helper/CustomFragment$6;
.super Ljava/lang/Object;
.source "CustomFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CustomFragment;->showDatePicker(Landroid/content/Context;Landroid/webkit/WebView;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/helper/CustomFragment;

.field private final synthetic val$mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lae/gov/mol/helper/CustomFragment;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CustomFragment$6;->this$0:Lae/gov/mol/helper/CustomFragment;

    iput-object p2, p0, Lae/gov/mol/helper/CustomFragment$6;->val$mWebView:Landroid/webkit/WebView;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 635
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$6;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->isDatePickerCancelled:Z
    invoke-static {v0}, Lae/gov/mol/helper/CustomFragment;->access$6(Lae/gov/mol/helper/CustomFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Lae/gov/mol/helper/CustomFragment$6;->val$mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:alert(postDate(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/helper/CustomFragment$6;->this$0:Lae/gov/mol/helper/CustomFragment;

    # getter for: Lae/gov/mol/helper/CustomFragment;->mString:Ljava/lang/String;
    invoke-static {v2}, Lae/gov/mol/helper/CustomFragment;->access$4(Lae/gov/mol/helper/CustomFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 639
    :cond_0
    return-void
.end method
