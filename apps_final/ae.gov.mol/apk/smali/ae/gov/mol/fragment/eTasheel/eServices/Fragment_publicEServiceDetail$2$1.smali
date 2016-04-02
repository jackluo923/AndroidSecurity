.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;
.super Ljava/lang/Object;
.source "Fragment_publicEServiceDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 342
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v1

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v1

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v1

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v2

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mBrowseUrl:Ljava/lang/String;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$13(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "mUrl":Ljava/lang/String;
    iget-object v1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v1

    iget-object v2, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v2

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->mFragmentActivity_eServiceDetail:Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;
    invoke-static {v2}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$2(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Lae/gov/mol/fragment/eTasheel/FragmentActivity_eServiceDetail;

    move-result-object v2

    iget-object v3, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v3}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v3

    invoke-virtual {v3, v0}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2$1;->this$1:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;->access$0(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$2;)Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    move-result-object v4

    # getter for: Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->isActivityFinish:Z
    invoke-static {v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->access$6(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->BrowseLinkOpenSystemBrowser(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    .end local v0    # "mUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method
