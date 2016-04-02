.class final Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->d:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->r:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    const-string/jumbo v2, "jiushi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "size : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " , tag : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drawablePath : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->e(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;Landroid/view/View;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->f(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/a/e;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/a/d;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
