.class Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$3;
.super Ljava/lang/Object;
.source "Fragment_publicEServiceDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->SetUpAttachmentButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 651
    iget-object v0, p0, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail$3;->this$0:Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/eTasheel/eServices/Fragment_publicEServiceDetail;->pickImage(I)V

    .line 652
    return-void
.end method
