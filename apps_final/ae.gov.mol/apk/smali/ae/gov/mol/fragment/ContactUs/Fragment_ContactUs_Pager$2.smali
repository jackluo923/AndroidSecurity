.class Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;
.super Ljava/lang/Object;
.source "Fragment_ContactUs_Pager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    # getter for: Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->tabs:Lae/gov/mol/helper/PagerSlidingTabStripContect;
    invoke-static {v0}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->access$2(Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;)Lae/gov/mol/helper/PagerSlidingTabStripContect;

    move-result-object v0

    iget-object v1, p0, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager$2;->this$0:Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;

    invoke-virtual {v1}, Lae/gov/mol/fragment/ContactUs/Fragment_ContactUs_Pager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lae/gov/mol/helper/PagerSlidingTabStripContect;->setTextColor(I)V

    .line 111
    return-void
.end method
