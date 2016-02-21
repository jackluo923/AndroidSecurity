package com.google.android.apps.analytics;

class Event {
    static final String INSTALL_EVENT_CATEGORY = "__##GOOGLEINSTALL##__";
    static final String ITEM_CATEGORY = "__##GOOGLEITEM##__";
    static final String PAGEVIEW_EVENT_CATEGORY = "__##GOOGLEPAGEVIEW##__";
    static final String TRANSACTION_CATEGORY = "__##GOOGLETRANSACTION##__";
    final String accountId;
    final String action;
    private int adHitId;
    private boolean anonymizeIp;
    final String category;
    CustomVariableBuffer customVariableBuffer;
    final long eventId;
    private Item item;
    final String label;
    private int randomVal;
    final int screenHeight;
    final int screenWidth;
    private int timestampCurrent;
    private int timestampFirst;
    private int timestampPrevious;
    private Transaction transaction;
    private boolean useServerTime;
    private int userId;
    final int value;
    private int visits;

    Event(long j, String str, int i, int i2, int i3, int i4, int i5, String str2, String str3, String str4, int i6, int i7, int i8) {
        this.eventId = j;
        this.accountId = str;
        this.randomVal = i;
        this.timestampFirst = i2;
        this.timestampPrevious = i3;
        this.timestampCurrent = i4;
        this.visits = i5;
        this.category = str2;
        this.action = str3;
        this.label = str4;
        this.value = i6;
        this.screenHeight = i8;
        this.screenWidth = i7;
        this.userId = -1;
        this.useServerTime = false;
    }

    Event(Event event, String str) {
        this(event.eventId, str, event.randomVal, event.timestampFirst, event.timestampPrevious, event.timestampCurrent, event.visits, event.category, event.action, event.label, event.value, event.screenWidth, event.screenHeight);
        this.adHitId = event.adHitId;
        this.userId = event.userId;
        this.anonymizeIp = event.anonymizeIp;
        this.useServerTime = event.useServerTime;
        this.customVariableBuffer = event.customVariableBuffer;
        this.transaction = event.transaction;
        this.item = event.item;
    }

    Event(String str, String str2, String str3, String str4, int i, int i2, int i3) {
        this(-1, str, -1, -1, -1, -1, -1, str2, str3, str4, i, i2, i3);
    }

    int getAdHitId() {
        return this.adHitId;
    }

    boolean getAnonymizeIp() {
        return this.anonymizeIp;
    }

    public CustomVariableBuffer getCustomVariableBuffer() {
        return this.customVariableBuffer;
    }

    public Item getItem() {
        return this.item;
    }

    int getRandomVal() {
        return this.randomVal;
    }

    int getTimestampCurrent() {
        return this.timestampCurrent;
    }

    int getTimestampFirst() {
        return this.timestampFirst;
    }

    int getTimestampPrevious() {
        return this.timestampPrevious;
    }

    public Transaction getTransaction() {
        return this.transaction;
    }

    boolean getUseServerTime() {
        return this.useServerTime;
    }

    int getUserId() {
        return this.userId;
    }

    int getVisits() {
        return this.visits;
    }

    public boolean isSessionInitialized() {
        return this.timestampFirst != -1;
    }

    void setAdHitId(int i) {
        this.adHitId = i;
    }

    void setAnonymizeIp(boolean z) {
        this.anonymizeIp = z;
    }

    public void setCustomVariableBuffer(CustomVariableBuffer customVariableBuffer) {
        this.customVariableBuffer = customVariableBuffer;
    }

    public void setItem(Item item) {
        if (this.category.equals(ITEM_CATEGORY)) {
            this.item = item;
        } else {
            throw new IllegalStateException("Attempted to add an item to an event of type " + this.category);
        }
    }

    void setRandomVal(int i) {
        this.randomVal = i;
    }

    void setTimestampCurrent(int i) {
        this.timestampCurrent = i;
    }

    void setTimestampFirst(int i) {
        this.timestampFirst = i;
    }

    void setTimestampPrevious(int i) {
        this.timestampPrevious = i;
    }

    public void setTransaction(Transaction transaction) {
        if (this.category.equals(TRANSACTION_CATEGORY)) {
            this.transaction = transaction;
        } else {
            throw new IllegalStateException("Attempted to add a transction to an event of type " + this.category);
        }
    }

    void setUseServerTime(boolean z) {
        this.useServerTime = z;
    }

    void setUserId(int i) {
        this.userId = i;
    }

    void setVisits(int i) {
        this.visits = i;
    }

    public String toString() {
        return "id:" + this.eventId + " " + "random:" + this.randomVal + " " + "timestampCurrent:" + this.timestampCurrent + " " + "timestampPrevious:" + this.timestampPrevious + " " + "timestampFirst:" + this.timestampFirst + " " + "visits:" + this.visits + " " + "value:" + this.value + " " + "category:" + this.category + " " + "action:" + this.action + " " + "label:" + this.label + " " + "width:" + this.screenWidth + " " + "height:" + this.screenHeight;
    }
}