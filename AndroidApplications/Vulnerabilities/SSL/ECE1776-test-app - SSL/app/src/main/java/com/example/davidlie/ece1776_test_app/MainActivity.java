package com.example.davidlie.ece1776_test_app;

import android.content.Intent;
import android.os.StrictMode;
import android.provider.MediaStore;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class MainActivity extends AppCompatActivity {

    static final int REQUEST_IMAGE_CAPTURE = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        /* allow networking in main thread -- generally a bad idea for responsiveness, but simplifies this code */
        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
    }

    public void onSSLSocketClick(View v) {
        TextView outputTextView = (TextView) findViewById(R.id.outputTextView);
        EditText urlEditText = (EditText) findViewById(R.id.urlEditText);
        byte buf[] = new byte[4096];
        Charset charset = Charset.defaultCharset();

        /* This code trusts call certificates */
        TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
            public X509Certificate[] getAcceptedIssuers() {
                return null;
            }

            @Override
            public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
                // Not implemented
            }

            @Override
            public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
                // Not implemented
            }
        } };

        try {
            /* set all SSL connections to trust certificates by default -- this disables certifiate validation */
            SSLContext sc = SSLContext.getInstance("TLS");
            sc.init(null, trustAllCerts, new java.security.SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

            /* get the URL in the text string */
            URL url = new URL(urlEditText.getText().toString());
            HttpsURLConnection urlConnection = (HttpsURLConnection) url.openConnection();

            /* read the input string and print to the TextView */
            InputStream in = urlConnection.getInputStream();
            in.read(buf);
            outputTextView.setText(new String(buf, charset));

            /* put up a toast showing success */
            Toast toast = Toast.makeText(getApplicationContext(), "Success", Toast.LENGTH_SHORT);
            toast.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
