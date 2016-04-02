.class public Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "RecentSessionCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private a:Landroid/app/Activity;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/text/style/ForegroundColorSpan;

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 56
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->s:I

    .line 57
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->t:I

    .line 58
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    .line 59
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    .line 60
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    .line 61
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    .line 62
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    .line 63
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    .line 64
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    .line 65
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    .line 67
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    .line 68
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    .line 69
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    .line 70
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    .line 71
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    .line 72
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    .line 73
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    .line 74
    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b:Landroid/view/LayoutInflater;

    .line 80
    iput-object p3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 81
    invoke-direct {p0, p2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 83
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->e:I

    .line 84
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->g:I

    .line 85
    sget v1, Lcom/alipay/mobile/socialwidget/R$color;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->f:I

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->b:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->d:Ljava/lang/String;

    .line 87
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lcom/alipay/mobile/socialwidget/R$color;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->o:Landroid/text/style/ForegroundColorSpan;

    .line 88
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->s:I

    .line 95
    const-string/jumbo v0, "itemType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->t:I

    .line 96
    const-string/jumbo v0, "icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    .line 97
    const-string/jumbo v0, "sendingState"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    .line 98
    const-string/jumbo v0, "notDisturb"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    .line 99
    const-string/jumbo v0, "unread"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    .line 100
    const-string/jumbo v0, "displayName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    .line 101
    const-string/jumbo v0, "lastBizMemo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    .line 102
    const-string/jumbo v0, "voiceNotReadState"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    .line 103
    const-string/jumbo v0, "atMe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    .line 104
    const-string/jumbo v0, "draft"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    .line 105
    const-string/jumbo v0, "top"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    .line 106
    const-string/jumbo v0, "lastCreateTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    .line 107
    const-string/jumbo v0, "redPointStyle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    .line 108
    const-string/jumbo v0, "isCurrentUserQuit"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    .line 109
    const-string/jumbo v0, "memoParseType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    .line 110
    const-string/jumbo v0, "lastSenderName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    .line 111
    const-string/jumbo v0, "lastSide"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    .line 112
    const-string/jumbo v0, "bizRemind"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:J

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->r:Z

    goto/16 :goto_0
.end method

.method private static a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 332
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 334
    :cond_0
    return-void
.end method

.method private static b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->g:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 339
    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Ljava/util/HashMap;

    .line 119
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;

    .line 155
    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->t:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 156
    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->u:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    packed-switch v6, :pswitch_data_0

    .line 202
    :pswitch_0
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 203
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 208
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->c:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v4, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v2, v4, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 211
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->v:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 212
    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->E:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 213
    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 214
    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 215
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/mobile/socialwidget/R$drawable;->r:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 216
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 217
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/socialwidget/R$string;->r:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(I)V

    .line 229
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->x:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 230
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->w:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    move v2, v1

    .line 231
    :goto_2
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->k:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->B:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/socialwidget/R$id;->y:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 232
    :cond_1
    if-eqz v2, :cond_10

    .line 233
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 234
    iget-object v4, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    move-object v5, v4

    move-object v4, v1

    move v1, v3

    .line 242
    :goto_3
    invoke-virtual {v5, v4, v1}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->s:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Ljava/util/HashMap;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 247
    iget-object v4, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->p:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 253
    :cond_2
    :goto_5
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->z:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_1a

    .line 256
    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->I:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    iget v5, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->H:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 258
    const/4 v7, 0x1

    if-ne v5, v7, :cond_18

    .line 259
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 260
    :goto_6
    iget-object v4, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v5, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    const/4 v7, 0x0

    invoke-static {v5, v1, v7}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_7
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->A:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1f

    .line 289
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->f:I

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 293
    :goto_8
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->B:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->C:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    if-lez v3, :cond_20

    .line 296
    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 297
    iget-object v2, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 313
    :cond_3
    :goto_9
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->D:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    const/4 v1, 0x1

    .line 314
    :goto_a
    iget-boolean v2, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->n:Z

    if-eq v2, v1, :cond_4

    .line 315
    iput-boolean v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->n:Z

    .line 316
    iget-object v2, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    if-eqz v1, :cond_24

    .line 317
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->i:I

    .line 316
    :goto_b
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setBackgroundResource(I)V

    .line 319
    :cond_4
    return-void

    .line 160
    :pswitch_1
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_5

    .line 161
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->m:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->h:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_6

    .line 167
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->p:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    .line 169
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->i:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 172
    :pswitch_3
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 173
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->n:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_7
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->j:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 178
    :pswitch_4
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    .line 179
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->l:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    .line 181
    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->l:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 184
    :pswitch_5
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_9

    .line 185
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->o:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->k:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 190
    :pswitch_6
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_a

    .line 191
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->b:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    .line 193
    :cond_a
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->m:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 196
    :pswitch_7
    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_b

    .line 197
    sget v3, Lcom/alipay/mobile/socialwidget/R$drawable;->f:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    .line 199
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->n:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 218
    :cond_c
    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    .line 219
    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 220
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v4, Lcom/alipay/mobile/socialwidget/R$drawable;->g:I

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 221
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 227
    :cond_d
    :goto_c
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-boolean v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->r:Z

    iget-wide v7, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->q:J

    invoke-static {v4, v7, v8, v2, v3}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->convertTimeStringList(ZJJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 224
    :cond_e
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v1, :cond_d

    .line 225
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_c

    .line 230
    :cond_f
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_2

    .line 236
    :cond_10
    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->G:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    const/4 v1, 0x1

    .line 237
    :goto_d
    if-eqz v1, :cond_13

    .line 238
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 242
    :cond_11
    :goto_e
    iget-object v5, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget v1, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->F:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 243
    const/4 v1, 0x1

    if-ne v3, v1, :cond_14

    move v1, v3

    goto/16 :goto_3

    .line 236
    :cond_12
    const/4 v1, 0x0

    goto :goto_d

    .line 239
    :cond_13
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v1, :cond_11

    .line 240
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->l:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_e

    .line 243
    :cond_14
    div-int/lit8 v1, v3, 0x2

    goto/16 :goto_3

    .line 247
    :cond_15
    const/16 v1, 0x8

    goto/16 :goto_4

    .line 249
    :cond_16
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v1, :cond_2

    .line 250
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->m:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 259
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 262
    :cond_18
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1b

    .line 264
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->y:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 269
    :cond_19
    :goto_f
    iget v5, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->K:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    iget v5, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->J:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 271
    if-eqz v7, :cond_1e

    .line 272
    if-nez v5, :cond_1d

    const/4 v5, 0x1

    if-le v3, v5, :cond_1d

    .line 273
    new-instance v5, Landroid/text/SpannableString;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 275
    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->o:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const/16 v8, 0x21

    invoke-virtual {v5, v4, v1, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v5

    .line 286
    :cond_1a
    iget-object v4, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 266
    :cond_1b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const-string/jumbo v4, ""

    goto :goto_f

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    .line 279
    :cond_1d
    iget-object v5, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 282
    :cond_1e
    iget-object v5, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 291
    :cond_1f
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v4, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->g:I

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_8

    .line 299
    :cond_20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 300
    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 301
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/emotion/manager/EmotionParser;->parser(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->e:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    goto/16 :goto_9

    .line 304
    :cond_21
    if-eqz v2, :cond_22

    const/4 v1, 0x2

    if-le v3, v1, :cond_22

    const/4 v1, 0x2

    if-ne v1, v6, :cond_22

    .line 305
    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b(Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;)V

    .line 306
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget v2, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->g:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 307
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6761]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 309
    :cond_22
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_3

    .line 310
    iget-object v1, v0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 313
    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 317
    :cond_24
    sget v0, Lcom/alipay/mobile/socialwidget/R$drawable;->h:I

    goto/16 :goto_b

    .line 158
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->a(Landroid/database/Cursor;)V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 127
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/socialwidget/R$layout;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;-><init>()V

    .line 133
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->d:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    .line 134
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->u:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 135
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->K:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->c:Landroid/view/ViewStub;

    .line 137
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->x:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 138
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->w:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 139
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->b:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->g:Landroid/view/ViewStub;

    .line 141
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->H:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->i:Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    .line 142
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->v:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->j:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 144
    sget v0, Lcom/alipay/mobile/socialwidget/R$id;->I:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, v2, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter$ViewHolder;->k:Landroid/view/ViewStub;

    .line 147
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method
