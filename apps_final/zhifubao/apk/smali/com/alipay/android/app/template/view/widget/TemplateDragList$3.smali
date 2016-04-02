.class Lcom/alipay/android/app/template/view/widget/TemplateDragList$3;
.super Ljava/lang/Object;
.source "TemplateDragList.java"

# interfaces
.implements Lcom/alipay/android/app/template/view/widget/draglist/DragSortListView$DragScrollProfile;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$3;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 2

    .prologue
    .line 174
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateDragList$3;->a:Lcom/alipay/android/app/template/view/widget/TemplateDragList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateDragList;->a(Lcom/alipay/android/app/template/view/widget/TemplateDragList;)Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/draglist/DragListAdapter;->getCount()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    div-float/2addr v0, v1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    goto :goto_0
.end method
