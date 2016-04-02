.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

.field private final synthetic val$parent:Landroid/view/ViewGroup;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->val$parent:Landroid/view/ViewGroup;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$3;->val$parent:Landroid/view/ViewGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->preGenerateView(Landroid/view/ViewGroup;I)V
    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$7(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V

    .line 182
    const/4 v0, 0x1

    return v0
.end method
