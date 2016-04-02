.class Lae/gov/mol/fragment/FragmentPrivateNotification$2;
.super Ljava/lang/Object;
.source "FragmentPrivateNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/FragmentPrivateNotification;->showFeatureDialog(Lae/gov/mol/fragment/FragmentNotification_Pager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/FragmentPrivateNotification;

.field private final synthetic val$mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/FragmentPrivateNotification;Lae/gov/mol/fragment/FragmentNotification_Pager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/FragmentPrivateNotification$2;->this$0:Lae/gov/mol/fragment/FragmentPrivateNotification;

    iput-object p2, p0, Lae/gov/mol/fragment/FragmentPrivateNotification$2;->val$mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lae/gov/mol/fragment/FragmentPrivateNotification$2;->val$mFragmentNotification_Pager:Lae/gov/mol/fragment/FragmentNotification_Pager;

    invoke-virtual {v0}, Lae/gov/mol/fragment/FragmentNotification_Pager;->removeBack()V

    .line 155
    return-void
.end method
