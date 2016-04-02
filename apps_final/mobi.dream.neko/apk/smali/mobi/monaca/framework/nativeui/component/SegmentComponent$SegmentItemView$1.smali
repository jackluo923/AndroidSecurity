.class Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;
.super Ljava/lang/Object;
.source "SegmentComponent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;->this$1:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    iput-object p2, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;->val$listener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView$1;->this$1:Lmobi/monaca/framework/nativeui/component/SegmentComponent$SegmentItemView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 312
    return-void
.end method
