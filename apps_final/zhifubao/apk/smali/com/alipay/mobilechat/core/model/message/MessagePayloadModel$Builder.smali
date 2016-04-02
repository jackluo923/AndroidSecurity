.class public final Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
.super Lcom/squareup/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field public action:Ljava/lang/Integer;

.field public biz_memo:Ljava/lang/String;

.field public biz_remind:Ljava/lang/String;

.field public biz_type:Ljava/lang/String;

.field public client_msg_id:Ljava/lang/String;

.field public create_time:Ljava/lang/Long;

.field public egg:Ljava/lang/String;

.field public from_login_id:Ljava/lang/String;

.field public from_u_id:Ljava/lang/String;

.field public hint_memo:Ljava/lang/String;

.field public last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

.field public link:Ljava/lang/String;

.field public msgIndex:Ljava/lang/String;

.field public msg_id:Ljava/lang/Long;

.field public next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

.field public read:Ljava/lang/String;

.field public recent:Ljava/lang/String;

.field public resources:Lokio/ByteString;

.field public template_code:Ljava/lang/String;

.field public template_data:Ljava/lang/String;

.field public to_login_id:Ljava/lang/String;

.field public to_type:Ljava/lang/String;

.field public to_u_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_u_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_u_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->from_login_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_login_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_u_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_u_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_login_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_login_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->to_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_type:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msg_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msg_id:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->client_msg_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->client_msg_id:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_code:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_code:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->template_data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_data:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->hint_memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->hint_memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_memo:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_memo:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_type:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->egg:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->egg:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->link:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->link:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->create_time:Ljava/lang/Long;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->create_time:Ljava/lang/Long;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->recent:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->recent:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->read:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->read:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->action:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->action:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->biz_remind:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_remind:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->resources:Lokio/ByteString;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->resources:Lokio/ByteString;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    iget-object v0, p1, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;->msgIndex:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msgIndex:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final action(Ljava/lang/Integer;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->action:Ljava/lang/Integer;

    return-object p0
.end method

.method public final biz_memo(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_memo:Ljava/lang/String;

    return-object p0
.end method

.method public final biz_remind(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_remind:Ljava/lang/String;

    return-object p0
.end method

.method public final biz_type(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->biz_type:Ljava/lang/String;

    return-object p0
.end method

.method public final build()Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;
    .locals 2

    new-instance v0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;-><init>(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->build()Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    move-result-object v0

    return-object v0
.end method

.method public final client_msg_id(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->client_msg_id:Ljava/lang/String;

    return-object p0
.end method

.method public final create_time(Ljava/lang/Long;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->create_time:Ljava/lang/Long;

    return-object p0
.end method

.method public final egg(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->egg:Ljava/lang/String;

    return-object p0
.end method

.method public final from_login_id(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_login_id:Ljava/lang/String;

    return-object p0
.end method

.method public final from_u_id(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->from_u_id:Ljava/lang/String;

    return-object p0
.end method

.method public final hint_memo(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->hint_memo:Ljava/lang/String;

    return-object p0
.end method

.method public final last_msg(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->last_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    return-object p0
.end method

.method public final link(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public final msgIndex(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msgIndex:Ljava/lang/String;

    return-object p0
.end method

.method public final msg_id(Ljava/lang/Long;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->msg_id:Ljava/lang/Long;

    return-object p0
.end method

.method public final next_msg(Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->next_msg:Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel;

    return-object p0
.end method

.method public final read(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->read:Ljava/lang/String;

    return-object p0
.end method

.method public final recent(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->recent:Ljava/lang/String;

    return-object p0
.end method

.method public final resources(Lokio/ByteString;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->resources:Lokio/ByteString;

    return-object p0
.end method

.method public final template_code(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_code:Ljava/lang/String;

    return-object p0
.end method

.method public final template_data(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->template_data:Ljava/lang/String;

    return-object p0
.end method

.method public final to_login_id(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_login_id:Ljava/lang/String;

    return-object p0
.end method

.method public final to_type(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_type:Ljava/lang/String;

    return-object p0
.end method

.method public final to_u_id(Ljava/lang/String;)Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilechat/core/model/message/MessagePayloadModel$Builder;->to_u_id:Ljava/lang/String;

    return-object p0
.end method
