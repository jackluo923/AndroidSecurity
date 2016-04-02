.class Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;
.super Ljava/lang/Object;
.source "CategoryCellView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->decoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alipay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    const-string/jumbo v1, "appId=20000238&target=classify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->clickParam:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&categoryShowName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->encoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_0
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->jsonData:Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FRIEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->isHasRedHot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->handleFriendBizHandle()V
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->onClickCallback:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;)Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;

    invoke-virtual {v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/CategoryCellView$OnCellViewClick;->onClick(Ljava/lang/String;)V

    goto :goto_0
.end method
