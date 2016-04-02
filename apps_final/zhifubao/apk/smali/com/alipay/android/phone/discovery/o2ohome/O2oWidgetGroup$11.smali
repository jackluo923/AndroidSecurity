.class Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;
.super Ljava/lang/Object;
.source "O2oWidgetGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 914
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->getRpcService()Lcom/alipay/mobile/framework/service/common/RpcService;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$25(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/framework/service/common/RpcService;

    move-result-object v0

    .line 915
    const-class v1, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;

    .line 916
    new-instance v4, Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;

    invoke-direct {v4}, Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;-><init>()V

    .line 918
    const/4 v1, 0x0

    .line 920
    :try_start_0
    invoke-interface {v0, v4}, Lcom/alipay/mobilecsa/common/service/rpc/service/CityQueryService;->queryAllCity(Lcom/alipay/mobilecsa/common/service/rpc/request/CityRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 925
    :goto_0
    new-instance v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v4}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    .line 926
    new-instance v5, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    invoke-direct {v5}, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;-><init>()V

    .line 927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v5, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    .line 930
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 931
    iget-object v0, v1, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 953
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    .line 954
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 955
    const-string/jumbo v0, "com.alipay.mobile.common.ui.SelectCityActivity.UPDATE_CITYS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string/jumbo v7, "hotCity_visiable"

    iget-object v0, v5, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    const-string/jumbo v0, "cityList"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 959
    const-string/jumbo v0, "hotCityList"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 960
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$16(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 963
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->citys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$34(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    move-result-object v2

    monitor-enter v2

    .line 964
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-static {v0, v4}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$38(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 963
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 966
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->hotCitys:Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$39(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;)Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;

    move-result-object v2

    monitor-enter v2

    .line 967
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup$11;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;

    invoke-static {v0, v5}, Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;->access$40(Lcom/alipay/android/phone/discovery/o2ohome/O2oWidgetGroup;Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;)V

    .line 966
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 969
    const-class v0, Lcom/alipay/mobilecsa/common/service/rpc/response/CityQueryResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    :cond_1
    return-void

    .line 931
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;

    .line 932
    iget-object v7, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 933
    new-instance v7, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    invoke-direct {v7}, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;-><init>()V

    .line 937
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    const-string/jumbo v9, "\u5e02"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 938
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iget-object v9, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    .line 940
    :cond_3
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityName:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    .line 941
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityId:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    .line 942
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 943
    iget-object v8, v7, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->city:Ljava/lang/String;

    invoke-virtual {v8, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/common/utils/ChineseToPy;->getSinglePy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    .line 946
    :cond_4
    iget-object v8, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->pinYin:Ljava/lang/String;

    iput-object v8, v7, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->pinyin:Ljava/lang/String;

    .line 947
    const-string/jumbo v8, "h"

    iget-object v0, v0, Lcom/alipay/mobilecsa/common/service/rpc/model/CityInfo;->cityType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 948
    iget-object v0, v5, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_5
    iget-object v0, v4, Lcom/alipay/mobile/beehive/cityselect/model/CityVOList;->cityList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    move v0, v3

    .line 957
    goto/16 :goto_2

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 966
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
