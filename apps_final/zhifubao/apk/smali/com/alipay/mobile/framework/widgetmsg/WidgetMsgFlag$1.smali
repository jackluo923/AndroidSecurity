.class Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;
.super Ljava/lang/Object;
.source "WidgetMsgFlag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v2, v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v3, v3, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->calculateMsgCount(III)I

    move-result v0

    .line 220
    if-gtz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ackClick,id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v3, v3, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  view.gone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ackClick,id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v3, v3, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  view.visible"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    if-ne v1, v2, :cond_3

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$0(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->redpoint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 249
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$0(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    if-ne v1, v2, :cond_4

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_new_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    sget v2, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    if-ne v1, v2, :cond_1

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget v1, v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    if-le v0, v1, :cond_5

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_more_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 242
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_txt_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;->this$0:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    # getter for: Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;
    invoke-static {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_2
.end method
