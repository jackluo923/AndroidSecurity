.class final Lcom/alipay/asset/common/view/c;
.super Ljava/lang/Object;
.source "WealthWidgetMsgFlag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getShowNum()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setVisibility(I)V

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthWidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WidgetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$0(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    const-string/jumbo v3, ",show=false;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$1(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 132
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setVisibility(I)V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WealthWidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "WidgetId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->i:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$0(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    const-string/jumbo v3, ",show=true;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->f:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$1(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v2, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setStyleAndMsgCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 122
    :cond_3
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setStyleAndMsgCount(Ljava/lang/String;I)V

    goto :goto_1

    .line 124
    :cond_4
    const-string/jumbo v0, "lable"

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$2(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$3(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "new"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NEW:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setStyleAndMsgCount(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/asset/common/view/c;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    # getter for: Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$3(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->access$4(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
