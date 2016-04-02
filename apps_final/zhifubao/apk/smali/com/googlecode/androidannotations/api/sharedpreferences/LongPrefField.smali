.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;


# instance fields
.field private final a:J


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-wide p3, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->a:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    iget-wide v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->a:J

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->getOr(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOr(J)J
    .locals 2

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final put(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/LongPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
