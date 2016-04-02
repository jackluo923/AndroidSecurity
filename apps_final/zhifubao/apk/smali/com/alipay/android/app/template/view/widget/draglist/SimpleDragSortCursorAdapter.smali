.class public Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;
.super Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;
.source "SimpleDragSortCursorAdapter.java"


# instance fields
.field protected a:[I

.field protected b:[I

.field c:[Ljava/lang/String;

.field private d:I

.field private e:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;

.field private f:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    .line 83
    iput-object p5, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->b:[I

    .line 84
    iput-object p4, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->c:[Ljava/lang/String;

    .line 85
    invoke-direct {p0, p3, p4}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    .line 109
    iput-object p5, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->b:[I

    .line 110
    iput-object p4, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->c:[Ljava/lang/String;

    .line 111
    invoke-direct {p0, p3, p4}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private a(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 330
    if-eqz p1, :cond_3

    .line 332
    array-length v1, p2

    .line 333
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    array-length v0, v0

    if-eq v0, v1, :cond_1

    .line 334
    :cond_0
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    .line 336
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    .line 342
    :goto_1
    return-void

    .line 337
    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    aget-object v3, p2, v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->f:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->b:[I

    array-length v5, v0

    .line 142
    iget-object v6, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a:[I

    .line 143
    iget-object v7, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->b:[I

    move v3, v2

    .line 145
    :goto_0
    if-lt v3, v5, :cond_0

    .line 170
    return-void

    .line 146
    :cond_0
    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_2

    .line 149
    if-eqz v4, :cond_5

    .line 150
    aget v1, v6, v3

    invoke-interface {v4, v0, p3, v1}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 153
    :goto_1
    if-nez v1, :cond_2

    .line 154
    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    if-nez v1, :cond_1

    .line 156
    const-string/jumbo v1, ""

    .line 159
    :cond_1
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 160
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 145
    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 161
    :cond_3
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 162
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 164
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 365
    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->c:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->b:[I

    .line 370
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->e:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->e:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 315
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    if-ltz v0, :cond_1

    .line 316
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->e:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    return v0
.end method

.method public getViewBinder()Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->f:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->e:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$CursorToStringConverter;

    .line 298
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->d:I

    .line 266
    return-void
.end method

.method public setViewBinder(Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->f:Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter$ViewBinder;

    .line 195
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 214
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/app/template/view/widget/draglist/SimpleDragSortCursorAdapter;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/draglist/ResourceDragSortCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
