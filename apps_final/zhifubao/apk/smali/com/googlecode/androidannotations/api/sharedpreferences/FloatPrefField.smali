.class public final Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;
.super Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/googlecode/androidannotations/api/sharedpreferences/AbstractPrefField;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput p3, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->a:F

    return-void
.end method


# virtual methods
.method public final get()F
    .locals 1

    iget v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->a:F

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->getOr(F)F

    move-result v0

    return v0
.end method

.method public final getOr(F)F
    .locals 2

    iget-object v0, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final put(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/androidannotations/api/sharedpreferences/FloatPrefField;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
