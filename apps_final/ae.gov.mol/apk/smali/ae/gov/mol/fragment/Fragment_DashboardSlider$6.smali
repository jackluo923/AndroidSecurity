.class Lae/gov/mol/fragment/Fragment_DashboardSlider$6;
.super Ljava/lang/Object;
.source "Fragment_DashboardSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lae/gov/mol/fragment/Fragment_DashboardSlider;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downX:I

.field downY:I

.field dragthreshold:I

.field final synthetic this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;


# direct methods
.method constructor <init>(Lae/gov/mol/fragment/Fragment_DashboardSlider;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/16 v0, 0x1e

    iput v0, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->dragthreshold:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 174
    :cond_0
    :goto_0
    return v4

    .line 154
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->downX:I

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->downY:I

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->downX:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 159
    .local v0, "distanceX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->downY:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 161
    .local v1, "distanceY":I
    if-le v1, v0, :cond_1

    iget v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->dragthreshold:I

    if-le v1, v2, :cond_1

    .line 162
    # getter for: Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->access$1()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 163
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mScrollViewParent:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 164
    :cond_1
    if-le v0, v1, :cond_0

    iget v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->dragthreshold:I

    if-le v0, v2, :cond_0

    .line 165
    # getter for: Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->access$1()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 166
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mScrollViewParent:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 170
    .end local v0    # "distanceX":I
    .end local v1    # "distanceY":I
    :pswitch_2
    iget-object v2, p0, Lae/gov/mol/fragment/Fragment_DashboardSlider$6;->this$0:Lae/gov/mol/fragment/Fragment_DashboardSlider;

    iget-object v2, v2, Lae/gov/mol/fragment/Fragment_DashboardSlider;->mScrollViewParent:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 171
    # getter for: Lae/gov/mol/fragment/Fragment_DashboardSlider;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {}, Lae/gov/mol/fragment/Fragment_DashboardSlider;->access$1()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
