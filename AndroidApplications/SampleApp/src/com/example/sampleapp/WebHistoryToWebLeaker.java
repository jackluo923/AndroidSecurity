package SampleApp.src.com.example.sampleapp;

import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;

import android.content.ContentResolver;
import android.database.Cursor;
import android.util.Log;

public class WebHistoryToWebLeaker extends Leaker {

	private ContentResolver mResolver;
	
	public WebHistoryToWebLeaker(ContentResolver resolver) {
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
    		Log.i("leakToWebDirectly", url);
    	}
    	
    	// Access the web, but nothing is actually sent
    	try {
	    	SocketAddress sock_addr = new InetSocketAddress("www.google.com", 80);
	    	Socket sock = new Socket();
	    	sock.connect(sock_addr);
	    	sock.getInputStream();
	    	
	    	/*
	    	HttpClient httpclient = new DefaultHttpClient();
	    	HttpPost httppost = new HttpPost("http://www.google.com");
	    	HttpResponse httpresp = httpclient.execute(httppost);
	    	System.out.println("Response: " + httpresp.toString());
	    	*/ 
	    	
    	} catch (Exception err) {
    		System.out.println("Error with sending data over web: " + err);
    	}
	}

}
