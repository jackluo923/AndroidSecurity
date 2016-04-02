.class public final Lcom/google/zxing/client/android/result/CalendarResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "CalendarResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/result/CalendarResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "button_add_calendar"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    .line 49
    return-void
.end method

.method private addCalendarEvent(Ljava/lang/String;Ljava/util/Date;ZLjava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "allDay"    # Z
    .param p4, "end"    # Ljava/util/Date;
    .param p5, "location"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "attendees"    # [Ljava/lang/String;

    .prologue
    .line 105
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "vnd.android.cursor.item/event"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 108
    .local v4, "startMilliseconds":J
    const-string v6, "beginTime"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    if-eqz p3, :cond_0

    .line 110
    const-string v6, "allDay"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    :cond_0
    if-nez p4, :cond_3

    .line 114
    if-eqz p3, :cond_2

    .line 116
    const-wide/32 v6, 0x5265c00

    add-long v1, v4, v6

    .line 123
    .local v1, "endMilliseconds":J
    :goto_0
    const-string v6, "endTime"

    invoke-virtual {v3, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    const-string v6, "title"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v6, "eventLocation"

    invoke-virtual {v3, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v6, "description"

    invoke-virtual {v3, v6, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    if-eqz p7, :cond_1

    .line 128
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v3, v6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_1
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->rawLaunchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    return-void

    .line 118
    .end local v1    # "endMilliseconds":J
    :cond_2
    move-wide v1, v4

    .restart local v1    # "endMilliseconds":J
    goto :goto_0

    .line 121
    .end local v1    # "endMilliseconds":J
    :cond_3
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .restart local v1    # "endMilliseconds":J
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/google/zxing/client/android/result/CalendarResultHandler;->TAG:Ljava/lang/String;

    const-string v7, "No calendar app available that responds to android.intent.action.INSERT"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->launchIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private static format(ZLjava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "allDay"    # Z
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x2

    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v1, 0x0

    .line 181
    :goto_0
    return-object v1

    .line 178
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 181
    .local v0, "format":Ljava/text/DateFormat;
    :goto_1
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 178
    .end local v0    # "format":Ljava/text/DateFormat;
    :cond_1
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    array-length v0, v0

    return v0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    sget-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 148
    .local v0, "calResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x64

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 152
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v4

    .line 153
    .local v4, "start":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->isStartAllDay()Z

    move-result v5

    invoke-static {v5, v4}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 155
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object v1

    .line 156
    .local v1, "end":Ljava/util/Date;
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->isEndAllDay()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    sub-long/2addr v5, v7

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .end local v1    # "end":Ljava/util/Date;
    .local v2, "end":Ljava/util/Date;
    move-object v1, v2

    .line 164
    .end local v2    # "end":Ljava/util/Date;
    .restart local v1    # "end":Ljava/util/Date;
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->isEndAllDay()Z

    move-result v5

    invoke-static {v5, v1}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->format(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 167
    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 168
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getOrganizer()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 169
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getAttendees()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 170
    invoke-virtual {v0}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/zxing/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getDisplayTitle()I
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/google/zxing/client/android/result/CalendarResultHandler;->fakeR:Lcom/google/zxing/FakeR;

    const-string v1, "string"

    const-string v2, "result_calendar"

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/client/result/CalendarParsedResult;

    .line 66
    .local v8, "calendarResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "description":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getOrganizer()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "organizer":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 69
    if-nez v6, :cond_2

    .line 70
    move-object v6, v9

    .line 76
    :cond_0
    :goto_0
    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->isStartAllDay()Z

    move-result v3

    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getEnd()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/zxing/client/result/CalendarParsedResult;->getAttendees()[Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/client/android/result/CalendarResultHandler;->addCalendarEvent(Ljava/lang/String;Ljava/util/Date;ZLjava/util/Date;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    .end local v6    # "description":Ljava/lang/String;
    .end local v8    # "calendarResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    .end local v9    # "organizer":Ljava/lang/String;
    :cond_1
    return-void

    .line 72
    .restart local v6    # "description":Ljava/lang/String;
    .restart local v8    # "calendarResult":Lcom/google/zxing/client/result/CalendarParsedResult;
    .restart local v9    # "organizer":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
