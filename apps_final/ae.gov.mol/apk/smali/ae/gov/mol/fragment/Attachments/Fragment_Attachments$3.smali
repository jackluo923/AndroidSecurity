.class Lae/gov/mol/fragment/Attachments/Fragment_Attachments$3;
.super Ljava/lang/Object;
.source "Fragment_Attachments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->SetUpAttachmentButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Attachments/Fragment_Attachments;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$3;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 529
    iget-object v0, p0, Lae/gov/mol/fragment/Attachments/Fragment_Attachments$3;->this$0:Lae/gov/mol/fragment/Attachments/Fragment_Attachments;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/fragment/Attachments/Fragment_Attachments;->RemoveImage(I)V

    .line 530
    return-void
.end method
