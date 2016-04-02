.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

.field private final synthetic val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

.field private final synthetic val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iput-object p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;)Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    return-object v0
.end method


# virtual methods
.method public onPersonSelected(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->val$hotItem:Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;->val$shareModel:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$4;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;Lcom/alipay/mobile/personalbase/model/ShareModel;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public onShareCanceled()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method
