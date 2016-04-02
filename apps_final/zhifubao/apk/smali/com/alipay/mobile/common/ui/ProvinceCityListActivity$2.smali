.class Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;
.super Ljava/lang/Object;
.source "ProvinceCityListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(I)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "init onLocationUpdate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getDistrict()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "province="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "city="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "district="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    :cond_1
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v5

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "adcode = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # invokes: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->isUseMapKey(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$6(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->mDistrict:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$7(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 142
    const-string/jumbo v3, "\u5317\u4eac"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "\u4e0a\u6d77"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 143
    const-string/jumbo v3, "\u5929\u6d25"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    const-string/jumbo v3, "\u91cd\u5e86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$8(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    .line 149
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$5(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "locationStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$9(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationTableView:Lcom/alipay/mobile/commonui/widget/APTableView;

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    # getter for: Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->locationStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$9(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftText(Ljava/lang/String;)V

    .line 151
    return-void

    .line 138
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity$2;->this$0:Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;->access$8(Lcom/alipay/mobile/common/ui/ProvinceCityListActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
