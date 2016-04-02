.class public Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;
.super Landroid/widget/LinearLayout;
.source "PPChatMenuBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/ListView;

.field private i:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private final l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/view/View$OnTouchListener;

.field private final n:Landroid/view/animation/Animation$AnimationListener;

.field private final o:Landroid/view/animation/Animation$AnimationListener;

.field private final p:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "action_chat_switch"

    sput-object v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 92
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->l:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->m:Landroid/view/View$OnTouchListener;

    .line 151
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->n:Landroid/view/animation/Animation$AnimationListener;

    .line 169
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->o:Landroid/view/animation/Animation$AnimationListener;

    .line 188
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->p:Landroid/view/View$OnKeyListener;

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_menu_bar:I

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 92
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$1;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->l:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->m:Landroid/view/View$OnTouchListener;

    .line 151
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$3;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->n:Landroid/view/animation/Animation$AnimationListener;

    .line 169
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->o:Landroid/view/animation/Animation$AnimationListener;

    .line 188
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->p:Landroid/view/View$OnKeyListener;

    .line 77
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_menu_bar:I

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 78
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->isPopMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->i:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->i:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;->onPopwinDismiss()V

    .line 415
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 417
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$anim;->menu_in_zoom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->j:Landroid/view/animation/Animation;

    .line 83
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$anim;->menu_out_zoom:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->k:Landroid/view/animation/Animation;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->j:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->n:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->k:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->o:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    return-void
.end method

.method private a(Lcom/alipay/publiccore/core/model/account/ButtonObject;ZLandroid/widget/LinearLayout;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 250
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_menu_item:I

    invoke-static {v0, v1, v8}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 251
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_icon:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 254
    sget-object v3, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_chat_keyboard:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 260
    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$drawable;->pub_normal_default:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 263
    invoke-static {v7}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dp2px(F)I

    move-result v0

    invoke-static {v7}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dp2px(F)I

    move-result v1

    invoke-virtual {v2, v0, v6, v1, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 264
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 276
    :goto_0
    invoke-virtual {p3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    if-eqz p2, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_menu_breakline:I

    invoke-static {v0, v1, p3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 280
    :cond_0
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void

    .line 266
    :cond_1
    iget-object v3, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 270
    iget-object v3, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 271
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Landroid/view/View;)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->position_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V

    iput-boolean v3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    invoke-interface {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;->onSwitchChat()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;->onMenuItemClick(Lcom/alipay/publiccore/core/model/account/ButtonObject;Z)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    if-ne v5, v1, :cond_4

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dismissPopMenu()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V

    new-instance v6, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;)V

    invoke-static {v6, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;Lcom/alipay/publiccore/core/model/account/ButtonObject;)V

    iget-object v7, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    if-eqz p1, :cond_5

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    :goto_1
    iput v5, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;->onPopMenu(Lcom/alipay/publiccore/core/model/account/ButtonObject;)V

    :cond_6
    new-instance v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->i:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    if-eqz v1, :cond_8

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    move v1, v4

    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationInWindow([I)V

    aget v10, v10, v4

    div-int/lit8 v11, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    sub-int v2, v10, v2

    if-gez v2, :cond_c

    move v1, v4

    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    sub-int v3, v9, v3

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    new-instance v2, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;

    invoke-direct {v2, p0, v7}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearAnimation()V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->j:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v9, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_popmenu_list_item:I

    iget-object v10, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v1, v9, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v2

    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    iget-object v2, v2, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    if-ge v3, v2, :cond_a

    move v3, v2

    goto :goto_4

    :cond_c
    add-int v10, v2, v1

    if-le v10, v8, :cond_d

    sub-int v1, v8, v1

    goto :goto_3

    :cond_d
    move v1, v2

    goto/16 :goto_3
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    return-void
.end method

.method public static dp2px(F)I
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 52
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public dismissPopMenu()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->e:I

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 406
    return-void
.end method

.method public init(Ljava/util/List;ZLandroid/widget/RelativeLayout;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;Z",
            "Landroid/widget/RelativeLayout;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->setVisibility(I)V

    .line 246
    :cond_1
    return-void

    .line 206
    :cond_2
    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    if-nez v0, :cond_3

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cannot find list view in give layout "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->m:Landroid/view/View$OnTouchListener;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->p:Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/publicsvc/common/R$color;->popup_menu_divider:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 217
    iput-boolean v2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;

    if-nez v0, :cond_4

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 227
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$id;->menu_item_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 228
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-le v1, v4, :cond_6

    .line 230
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 232
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 233
    if-eqz p2, :cond_7

    .line 234
    new-instance v4, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    invoke-direct {v4}, Lcom/alipay/publiccore/core/model/account/ButtonObject;-><init>()V

    .line 235
    sget-object v1, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/alipay/publiccore/core/model/account/ButtonObject;->actionType:Ljava/lang/String;

    .line 236
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_0
    invoke-direct {p0, v4, v1, v0, v2}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a(Lcom/alipay/publiccore/core/model/account/ButtonObject;ZLandroid/widget/LinearLayout;I)V

    :cond_7
    move v5, v2

    .line 238
    :goto_1
    if-ge v5, v7, :cond_1

    .line 239
    add-int/lit8 v1, v7, -0x1

    if-ge v5, v1, :cond_9

    move v6, v3

    .line 241
    :goto_2
    if-eqz p2, :cond_a

    .line 242
    add-int/lit8 v1, v5, 0x1

    move v4, v1

    .line 244
    :goto_3
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    invoke-direct {p0, v1, v6, v0, v4}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a(Lcom/alipay/publiccore/core/model/account/ButtonObject;ZLandroid/widget/LinearLayout;I)V

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    move v1, v3

    .line 236
    goto :goto_0

    :cond_9
    move v6, v2

    .line 239
    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_3
.end method

.method public isPopMenuShowing()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 429
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0, p3}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;->onMenuClicked(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public setMenuEnable()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->f:Z

    .line 425
    return-void
.end method

.method public setOnMenuClickListener(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    .line 90
    return-void
.end method
