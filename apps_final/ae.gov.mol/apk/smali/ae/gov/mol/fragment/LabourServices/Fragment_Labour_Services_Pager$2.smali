.class Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$2;
.super Ljava/lang/Object;
.source "Fragment_Labour_Services_Pager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;->ShowDisclaimer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager$2;->this$0:Lae/gov/mol/fragment/LabourServices/Fragment_Labour_Services_Pager;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 183
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 186
    return-void
.end method
