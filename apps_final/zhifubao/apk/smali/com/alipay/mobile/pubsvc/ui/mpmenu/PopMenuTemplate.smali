.class public Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;
.super Ljava/lang/Object;
.source "PopMenuTemplate.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

.field private e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 168
    new-instance v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    invoke-direct {v1}, Lcom/alipay/publiccore/core/model/account/ButtonObject;-><init>()V

    .line 169
    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    .line 170
    const-string/jumbo v2, "actionType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    .line 171
    const-string/jumbo v2, "actionParam"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionParam:Ljava/lang/String;

    .line 172
    const-string/jumbo v2, "authType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->authType:Ljava/lang/String;

    .line 173
    const-string/jumbo v2, "msgShowType"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->msgShowType:Ljava/lang/String;

    .line 174
    const-string/jumbo v2, "minVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->minVersion:Ljava/lang/String;

    .line 175
    const-string/jumbo v2, "maxVersion"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->maxVersion:Ljava/lang/String;

    .line 176
    const-string/jumbo v2, "clientPlatform"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->clientPlatform:Ljava/lang/String;

    .line 177
    const-string/jumbo v2, "envMode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->envMode:Ljava/lang/String;

    .line 179
    const-string/jumbo v2, "button"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 181
    const-string/jumbo v2, "button"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 182
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 196
    :cond_0
    return-object v1

    .line 183
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 184
    iget-object v4, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_2
    const-string/jumbo v2, "subButton"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 188
    const-string/jumbo v2, "subButton"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 189
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 190
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 191
    iget-object v4, v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clearInputText()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->clearText()V

    .line 135
    return-void
.end method

.method public closeExpandPan()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeExpandPan()V

    .line 127
    return-void
.end method

.method public closeInputBoard()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->closeInputBoard()V

    .line 131
    return-void
.end method

.method public dismissPopMenu()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dismissPopMenu()V

    .line 71
    return-void
.end method

.method public getInputBar()Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    return-object v0
.end method

.method public getMenuBar()Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    return-object v0
.end method

.method public hiddenInputBar()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public hiddenMenuBar()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public hideSwitchButton()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->hideSwitchButton()V

    .line 139
    return-void
.end method

.method public inflate(Landroid/app/Activity;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 38
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$layout;->template_pop_menu:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->input_parent_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->b:Landroid/view/ViewGroup;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->menu:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->pub_svc_chat_inputer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->popwin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$id;->conent_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    return-object v0
.end method

.method public initMenuBar(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->init(Ljava/util/List;ZLandroid/widget/RelativeLayout;)V

    .line 115
    return-void
.end method

.method public initMenuBar(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a(Lorg/json/JSONObject;)Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "canChat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->init(Ljava/util/List;ZLandroid/widget/RelativeLayout;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    new-instance v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuActionDemo;-><init>(Landroid/content/Context;Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V

    .line 165
    return-void
.end method

.method public isChatInputShowing()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChatMenuShowing()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPopMenuShowing()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->isPopMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTalkChooseMoreShowing()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getTalkChooseMoreVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setChatInputerCallback(Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer$ChatInputerCallback;)V

    .line 123
    return-void
.end method

.method public setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V

    .line 119
    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setPublicId(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public showInputBar()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public showMenuBar()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setVisibility(I)V

    .line 51
    return-void
.end method

.method public switchMenuInput(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    const/4 v3, 0x0

    .line 82
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->isChatMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->isChatInputShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    if-eqz p1, :cond_3

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->getBaseHeight()I

    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->hiddenInputBar()V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->showMenuBar()V

    .line 89
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 90
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v3, v3, v0, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 94
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setMenuEnable()V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getHeight()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->hiddenMenuBar()V

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->showInputBar()V

    .line 102
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 103
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 104
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->d:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 106
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v3, v3, v0, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 107
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenuTemplate;->e:Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/component/ChatInputer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
