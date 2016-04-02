.class public Lcom/alipay/mobile/common/logagent/AlipayLogAgent;
.super Ljava/lang/Object;
.source "AlipayLogAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 154
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 159
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 160
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 161
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 162
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->refViewID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 163
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 164
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 165
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->statusMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 166
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourPro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 167
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->logPro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 168
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUrl(Ljava/lang/String;)V

    .line 170
    iget-object v1, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->extendParams:[Ljava/lang/String;

    .line 171
    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 172
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 174
    :cond_2
    if-eqz v1, :cond_3

    array-length v2, v1

    if-lt v2, v3, :cond_3

    .line 175
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 177
    :cond_3
    if-eqz v1, :cond_4

    array-length v2, v1

    if-lt v2, v4, :cond_4

    .line 178
    aget-object v2, v1, v3

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 180
    :cond_4
    if-eqz v1, :cond_5

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    .line 181
    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLegacyParam(Ljava/lang/String;)V

    .line 184
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 99
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 104
    return-void
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 110
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 118
    return-void
.end method

.method public static varargs writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 126
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p11}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLogPro(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p9}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUrl(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 136
    if-eqz p12, :cond_0

    array-length v1, p12

    if-lez v1, :cond_0

    .line 137
    const/4 v1, 0x0

    aget-object v1, p12, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 139
    :cond_0
    if-eqz p12, :cond_1

    array-length v1, p12

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 140
    const/4 v1, 0x1

    aget-object v1, p12, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 142
    :cond_1
    if-eqz p12, :cond_2

    array-length v1, p12

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 143
    const/4 v1, 0x2

    aget-object v1, p12, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 145
    :cond_2
    if-eqz p12, :cond_3

    array-length v1, p12

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 146
    const/4 v1, 0x3

    aget-object v1, p12, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLegacyParam(Ljava/lang/String;)V

    .line 149
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 150
    return-void
.end method

.method public static writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 79
    invoke-virtual {v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p5}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppVersion(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setViewID(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p7}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setRefViewID(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatus(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setStatusMsg(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 87
    return-void
.end method
