.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;
.super Landroid/os/Handler;
.source "DynamicReleaseProcessor.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "change status "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I
    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    iget v1, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->m:I
    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$002(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;I)I

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$100(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$200(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Ljava/util/List;)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$300(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;Ljava/util/List;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->hotpatch(Lcom/alipay/mobileappcommon/biz/rpc/repair/model/PatchInfo;)V

    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->access$400(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;)V

    goto :goto_0

    .line 206
    :pswitch_5
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseProcessor;->finish()V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
