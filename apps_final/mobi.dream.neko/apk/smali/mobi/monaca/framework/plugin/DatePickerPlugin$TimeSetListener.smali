.class final Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;
.super Ljava/lang/Object;
.source "DatePickerPlugin.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/monaca/framework/plugin/DatePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeSetListener"
.end annotation


# instance fields
.field private final callBackId:Ljava/lang/String;

.field private final datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

.field final synthetic this$0:Lmobi/monaca/framework/plugin/DatePickerPlugin;


# direct methods
.method private constructor <init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;)V
    .locals 0
    .param p2, "datePickerPlugin"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p3, "callBackId"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;->this$0:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;->datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    .line 150
    iput-object p3, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;->callBackId:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;Lmobi/monaca/framework/plugin/DatePickerPlugin$1;)V
    .locals 0
    .param p1, "x0"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p2, "x1"    # Lmobi/monaca/framework/plugin/DatePickerPlugin;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lmobi/monaca/framework/plugin/DatePickerPlugin$1;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;-><init>(Lmobi/monaca/framework/plugin/DatePickerPlugin;Lmobi/monaca/framework/plugin/DatePickerPlugin;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 158
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 159
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 160
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 162
    iget-object v1, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;->datePickerPlugin:Lmobi/monaca/framework/plugin/DatePickerPlugin;

    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lmobi/monaca/framework/plugin/DatePickerPlugin$TimeSetListener;->callBackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmobi/monaca/framework/plugin/DatePickerPlugin;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 164
    return-void
.end method
