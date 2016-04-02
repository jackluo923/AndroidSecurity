.class Lae/gov/mol/fragment/Fragment_Home$20;
.super Ljava/lang/Object;
.source "Fragment_Home.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_Home;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_Home;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_Home$20;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 545
    iget-object v0, p0, Lae/gov/mol/fragment/Fragment_Home$20;->this$0:Lae/gov/mol/fragment/Fragment_Home;

    # getter for: Lae/gov/mol/fragment/Fragment_Home;->mSimpleGestureFilter:Lae/gov/mol/helper/SimpleGestureFilter;
    invoke-static {v0}, Lae/gov/mol/fragment/Fragment_Home;->access$2(Lae/gov/mol/fragment/Fragment_Home;)Lae/gov/mol/helper/SimpleGestureFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lae/gov/mol/helper/SimpleGestureFilter;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 546
    const/4 v0, 0x1

    return v0
.end method
