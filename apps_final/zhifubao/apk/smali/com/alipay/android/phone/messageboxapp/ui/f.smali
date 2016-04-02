.class public final Lcom/alipay/android/phone/messageboxapp/ui/f;
.super Landroid/widget/BaseAdapter;
.source "MsgboxListAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->f:Z

    .line 51
    const v0, 0x5f5e0ff

    iput v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->g:I

    .line 61
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->h:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->a:Landroid/content/Context;

    .line 65
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$drawable;->todo_default_logo:I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    .line 64
    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 66
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->a:Landroid/content/Context;

    .line 67
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$drawable;->market_default:I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->h:Ljava/lang/String;

    const-string/jumbo v1, "NOTICE"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 390
    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    .line 391
    iput-object p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->c:Ljava/util/List;

    .line 392
    return-void

    .line 382
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 384
    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    const-string/jumbo v2, "INIT"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iput v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->g:I

    goto :goto_1

    .line 381
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->f:Z

    .line 377
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 103
    if-nez p2, :cond_1

    .line 105
    new-instance v1, Lcom/alipay/android/phone/messageboxapp/ui/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/messageboxapp/ui/g;-><init>(Lcom/alipay/android/phone/messageboxapp/ui/f;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 107
    sget v2, Lcom/alipay/android/phone/messageboxapp/R$layout;->msgbox_list_item:I

    const/4 v3, 0x0

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 110
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->item_system_todo_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 109
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->a:Landroid/widget/RelativeLayout;

    .line 112
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_system_todo_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->b:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_todo_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->c:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_todo_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->d:Landroid/widget/TextView;

    .line 118
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_todo_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->e:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->item_system_notice_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 121
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->f:Landroid/widget/RelativeLayout;

    .line 124
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_system_notice_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->g:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_notice_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->h:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_notice_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->i:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_system_notice_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->j:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->item_market_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 133
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->k:Landroid/widget/LinearLayout;

    .line 136
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_market_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    .line 138
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_market_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->m:Landroid/widget/ImageView;

    .line 141
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->tv_goto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 142
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->badgeV_goto:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 143
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->iv_check_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 144
    sget v0, Lcom/alipay/android/phone/messageboxapp/R$id;->layout_read_here:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->q:Landroid/widget/RelativeLayout;

    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "msgType"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " , position"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 155
    iget v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->g:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->g:I

    if-ne v2, p1, :cond_2

    .line 156
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 161
    :goto_1
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->templateType:Ljava/lang/String;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->e:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v3, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->iconLink:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->m:Landroid/widget/ImageView;

    const/16 v5, 0x384

    const/16 v6, 0x1c2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 164
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_3
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->actionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->action:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->n:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_4
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgState:Ljava/lang/String;

    const-string/jumbo v3, "INIT"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgType:Ljava/lang/String;

    const-string/jumbo v2, "TODO"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v0, v2, v10}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 186
    :goto_5
    iget-boolean v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->f:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/commonui/widget/APImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->checked:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 188
    :goto_6
    return-object p2

    .line 148
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxapp/ui/g;

    move-object v1, v0

    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 163
    :cond_3
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 168
    :cond_4
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgType:Ljava/lang/String;

    const-string/jumbo v3, "TODO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    iget-wide v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->gmtCreate:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    invoke-static {v2, v3}, Lcom/alipay/mmmbbbxxx/c/a;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_9
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v3, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->iconLink:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 171
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 170
    :cond_5
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_6
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_7
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 174
    :cond_8
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgType:Ljava/lang/String;

    const-string/jumbo v3, "NOTICE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->title:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    iget-object v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->content:Ljava/lang/String;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v3, v2}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    iget-wide v2, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->gmtCreate:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_b

    invoke-static {v2, v3}, Lcom/alipay/mmmbbbxxx/c/a;->a(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/f;->d:Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    iget-object v3, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->iconLink:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 177
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 176
    :cond_9
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_a
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_b
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    .line 184
    :cond_c
    iget-object v2, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 185
    :cond_d
    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->o:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setVisibility(I)V

    goto/16 :goto_5

    .line 186
    :cond_e
    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/messageboxapp/R$drawable;->notchecked:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/alipay/android/phone/messageboxapp/ui/g;->p:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APImageView;->setClickable(Z)V

    goto/16 :goto_6
.end method
