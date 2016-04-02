.class Lae/gov/mol/helper/CommonMethods$10;
.super Ljava/lang/Object;
.source "CommonMethods.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/helper/CommonMethods;->showMenu(Landroid/view/View;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mFragmentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/helper/CommonMethods$10;->val$mFragmentActivity:Landroid/app/Activity;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/support/v7/widget/PopupMenu;)V
    .locals 2
    .param p1, "arg0"    # Landroid/support/v7/widget/PopupMenu;

    .prologue
    .line 691
    iget-object v0, p0, Lae/gov/mol/helper/CommonMethods$10;->val$mFragmentActivity:Landroid/app/Activity;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 693
    return-void
.end method
