package com.millennialmedia.android;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.provider.CalendarContract.Events;
import com.brightcove.player.event.Event;
import com.google.android.gms.plus.PlusShare;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class BridgeMMCalendar extends MMJSObject {
    private static final String a = "addEvent";
    private static final String d;
    private static final String[] e;
    private static final SimpleDateFormat f;

    static {
        d = BridgeMMCalendar.class.getName();
        e = new String[]{"yyyy-MM-dd'T'HH:mmZZZ", "yyyy-MM-dd'T'HH:mm:ssZZZ"};
        f = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
    }

    BridgeMMCalendar() {
    }

    private String a(int i) {
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return "MO";
            case GoogleScorer.CLIENT_PLUS:
                return "TU";
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return "WE";
            case GoogleScorer.CLIENT_APPSTATE:
                return "TH";
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return "FR";
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return "SA";
            case GoogleScorer.CLIENT_ALL:
                return "SU";
            default:
                return null;
        }
    }

    private String a(JSONObject jSONObject) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            stringBuilder.append("FREQ=").append(jSONObject.getString("frequency")).append(";");
        } catch (JSONException e) {
            MMLog.b(d, "Unable to get calendar event recurrence frequency");
        }
        try {
            stringBuilder.append("UNTIL=").append(f.format(DateUtils.parseDate(jSONObject.getString("expires"), e))).append(";");
        } catch (DateParseException e2) {
            MMLog.e(d, "Error parsing calendar event recurrence expiration date");
        } catch (JSONException e3) {
            MMLog.b(d, "Unable to get calendar event recurrence expiration date");
        }
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("daysInWeek");
            CharSequence stringBuilder2 = new StringBuilder();
            int i = 0;
            while (i < jSONArray.length()) {
                stringBuilder2.append(a(jSONArray.getInt(i))).append(",");
                i++;
            }
            stringBuilder.append("BYDAY=").append(stringBuilder2).append(";");
        } catch (JSONException e4) {
            MMLog.b(d, "Unable to get days in week");
        }
        try {
            stringBuilder.append("BYMONTHDAY=").append(jSONObject.getString("daysInMonth").replaceAll("\\[", AdTrackerConstants.BLANK).replaceAll("\\]", AdTrackerConstants.BLANK)).append(";");
        } catch (JSONException e5) {
            MMLog.b(d, "Unable to get days in month");
        }
        try {
            stringBuilder.append("BYMONTH=").append(jSONObject.getString("monthsInYear:").replaceAll("\\[", AdTrackerConstants.BLANK).replaceAll("\\]", AdTrackerConstants.BLANK)).append(";");
        } catch (JSONException e6) {
            MMLog.b(d, "Unable to get months in year:");
        }
        try {
            stringBuilder.append("BYYEARDAY=").append(jSONObject.getString("daysInYear")).append(";");
        } catch (JSONException e7) {
            MMLog.b(d, "Unable to get days in year");
        }
        return stringBuilder.toString().toUpperCase();
    }

    MMJSResponse a(String str, Map map) {
        return a.equals(str) ? addEvent(map) : null;
    }

    @TargetApi(14)
    public MMJSResponse addEvent(Map map) {
        MMLog.b(d, "addEvent parameters: " + map);
        if (VERSION.SDK_INT < 14) {
            return MMJSResponse.b("Not supported");
        }
        if (!(map == null || map.get("parameters") == null)) {
            try {
                String str;
                String str2;
                String str3;
                String str4;
                Date date;
                Date parseDate;
                JSONObject jSONObject = new JSONObject((String) map.get("parameters"));
                try {
                    str = jSONObject.getString(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION);
                } catch (JSONException e) {
                    MMLog.e(d, "Unable to get calendar event description");
                    str = null;
                }
                try {
                    str2 = jSONObject.getString("summary");
                } catch (JSONException e2) {
                    MMLog.b(d, "Unable to get calendar event description");
                    str2 = null;
                }
                try {
                    String str5 = jSONObject.getString("transparency");
                } catch (JSONException e3) {
                    MMLog.b(d, "Unable to get calendar event transparency");
                    boolean z = false;
                }
                try {
                    String str6 = jSONObject.getString("reminder");
                } catch (JSONException e4) {
                    MMLog.b(d, "Unable to get calendar event reminder");
                    boolean z2 = false;
                }
                try {
                    str3 = jSONObject.getString("location");
                } catch (JSONException e5) {
                    MMLog.b(d, "Unable to get calendar event location");
                    str3 = null;
                }
                try {
                    String str7 = jSONObject.getString("status");
                } catch (JSONException e6) {
                    MMLog.b(d, "Unable to get calendar event status");
                    boolean z3 = false;
                }
                try {
                    str4 = a(jSONObject.getJSONObject("recurrence"));
                } catch (JSONException e7) {
                    MMLog.b(d, "Unable to get calendar event recurrence");
                    str4 = null;
                }
                try {
                    date = DateUtils.parseDate(jSONObject.getString("start"), e);
                } catch (DateParseException e8) {
                    MMLog.e(d, "Error parsing calendar event start date");
                    date = null;
                } catch (JSONException e9) {
                    MMLog.e(d, "Unable to get calendar event start date");
                    date = null;
                }
                try {
                    parseDate = DateUtils.parseDate(jSONObject.getString("end"), e);
                } catch (DateParseException e10) {
                    MMLog.e(d, "Error parsing calendar event end date");
                    parseDate = null;
                } catch (JSONException e11) {
                    MMLog.b(d, "Unable to get calendar event end date");
                    parseDate = null;
                }
                MMLog.b(d, String.format("Creating calendar event: title: %s, location: %s, start: %s, end: %s, status: %s, summary: %s, rrule: %s", new Object[]{str, str3, date, parseDate, obj, str2, str4}));
                if (str == null || date == null) {
                    MMLog.e(d, "Description and start must be provided to create calendar event.");
                    return MMJSResponse.b("Calendar Event Creation Failed.  Minimum parameters not provided");
                } else {
                    Intent data = new Intent("android.intent.action.INSERT").setData(Events.CONTENT_URI);
                    if (date != null) {
                        data.putExtra("beginTime", date.getTime());
                    }
                    if (parseDate != null) {
                        data.putExtra(Event.END_TIME, parseDate.getTime());
                    }
                    if (str != null) {
                        data.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, str);
                    }
                    if (str2 != null) {
                        data.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str2);
                    }
                    if (str3 != null) {
                        data.putExtra("eventLocation", str3);
                    }
                    if (str4 != null) {
                        data.putExtra("rrule", str4);
                    }
                    if (obj != null) {
                        MMLog.d(d, "Calendar addEvent does not support status");
                    }
                    if (i != 0) {
                        MMLog.d(d, "Calendar addEvent does not support transparency");
                    }
                    if (i != 0) {
                        MMLog.d(d, "Calendar addEvent does not support reminder");
                    }
                    Context context = (Context) this.b.get();
                    if (context != null) {
                        IntentUtils.c(context, data);
                        Event.a(context, Event.INTENT_CALENDAR_EVENT, b((String) map.get("PROPERTY_EXPANDING")));
                        return MMJSResponse.a("Calendar Event Created");
                    }
                }
            } catch (JSONException e12) {
                MMLog.e(d, "Unable to parse calendar addEvent parameters");
                return MMJSResponse.b("Calendar Event Creation Failed.  Invalid parameters");
            }
        }
        return null;
    }
}