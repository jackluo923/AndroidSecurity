package com.jirbo.adcolony;

import java.io.File;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;

class ADCDownload extends ADCEvent implements Runnable {
    ADCController controller;
    String data;
    File file;
    Object info;
    Listener listener;
    String post_content_type;
    String post_data;
    int size;
    SSLContext ssl_context;
    boolean success;
    boolean third_party_tracking;
    String url;
    boolean use_ssl;

    public static interface Listener {
        void on_download_finished(ADCDownload aDCDownload);
    }

    private static class DefaultTrustManager implements X509TrustManager {
        private DefaultTrustManager() {
        }

        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    ADCDownload(ADCController aDCController, String str, Listener listener) {
        this(aDCController, str, listener, null);
    }

    ADCDownload(ADCController aDCController, String str, Listener listener, String str2) {
        super(aDCController, false);
        this.url = str;
        this.listener = listener;
        if (str2 != null) {
            this.file = new File(str2);
        }
    }

    void dispatch() {
        this.listener.on_download_finished(this);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.ADCDownload.run():void");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Try/catch wrap count limit reached in com.jirbo.adcolony.ADCDownload.run():void
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:52)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:40)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r13 = this;
        r4 = 3;
        r5 = 1;
        r2 = -1;
        r11 = 0;
    L_0x0004:
        if (r5 > r4) goto L_0x01d1;
    L_0x0006:
        r0 = r13.post_content_type;	 Catch:{ IOException -> 0x026c }
        if (r0 == 0) goto L_0x01d7;
    L_0x000a:
        r0 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r1 = "Performing POST";
        r0.println(r1);	 Catch:{ IOException -> 0x026c }
        r3 = 80;
        r5 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r1 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r0 = "";
        r6 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r6 = r6.toLowerCase();	 Catch:{ IOException -> 0x01a7 }
        r7 = "http://";
        r6 = r6.startsWith(r7);	 Catch:{ IOException -> 0x01a7 }
        if (r6 == 0) goto L_0x0030;
    L_0x0027:
        r6 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r7 = 7;
        r6 = r6.substring(r7);	 Catch:{ IOException -> 0x01a7 }
        r13.url = r6;	 Catch:{ IOException -> 0x01a7 }
    L_0x0030:
        r6 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r7 = 47;
        r6 = r6.indexOf(r7);	 Catch:{ IOException -> 0x01a7 }
        if (r6 == r2) goto L_0x0047;
    L_0x003a:
        r0 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.substring(r6);	 Catch:{ IOException -> 0x01a7 }
        r1 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r7 = 0;
        r1 = r1.substring(r7, r6);	 Catch:{ IOException -> 0x01a7 }
    L_0x0047:
        r6 = new java.net.Socket;	 Catch:{ IOException -> 0x01a7 }
        r6.<init>(r1, r3);	 Catch:{ IOException -> 0x01a7 }
        r3 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r6.setSoTimeout(r3);	 Catch:{ IOException -> 0x01a7 }
        r3 = new java.io.PrintStream;	 Catch:{ IOException -> 0x01a7 }
        r7 = r6.getOutputStream();	 Catch:{ IOException -> 0x01a7 }
        r3.<init>(r7);	 Catch:{ IOException -> 0x01a7 }
        r7 = r6.getInputStream();	 Catch:{ IOException -> 0x01a7 }
        r8 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01a7 }
        r8.<init>();	 Catch:{ IOException -> 0x01a7 }
        r9 = "POST ";
        r8.append(r9);	 Catch:{ IOException -> 0x01a7 }
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = " HTTP/1.1\r\n";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "Host: ";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r8.append(r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = "\r\n";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "Content-Type: ";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r13.post_content_type;	 Catch:{ IOException -> 0x01a7 }
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "\r\n";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "Content-Length: ";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r13.post_data;	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.length();	 Catch:{ IOException -> 0x01a7 }
        r0 = r0 + 4;
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "\r\n\r\n";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r13.post_data;	 Catch:{ IOException -> 0x01a7 }
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = "\r\n\r\n";
        r8.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r8.toString();	 Catch:{ IOException -> 0x01a7 }
        r3.print(r0);	 Catch:{ IOException -> 0x01a7 }
        r3.flush();	 Catch:{ IOException -> 0x01a7 }
        r1 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x01a7 }
        r3 = "Submitting POST:";
        r1 = r1.println(r3);	 Catch:{ IOException -> 0x01a7 }
        r1.println(r0);	 Catch:{ IOException -> 0x01a7 }
        r1 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01a7 }
        r1.<init>();	 Catch:{ IOException -> 0x01a7 }
        r0 = r7.read();	 Catch:{ IOException -> 0x01a7 }
    L_0x00c9:
        if (r0 == r2) goto L_0x00e4;
    L_0x00cb:
        r0 = (char) r0;	 Catch:{ IOException -> 0x01a7 }
        r1.append(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r1.length();	 Catch:{ IOException -> 0x01a7 }
        r3 = 4;
        if (r0 < r3) goto L_0x010e;
    L_0x00d6:
        r0 = "\r\n\r\n";
        r3 = r1.length();	 Catch:{ IOException -> 0x01a7 }
        r3 = r3 + -4;
        r0 = r1.indexOf(r0, r3);	 Catch:{ IOException -> 0x01a7 }
        if (r0 < 0) goto L_0x010e;
    L_0x00e4:
        r0 = r1.toString();	 Catch:{ IOException -> 0x01a7 }
        r1 = "Content-Length:";
        r3 = r0.indexOf(r1);	 Catch:{ IOException -> 0x01a7 }
        if (r3 < 0) goto L_0x016e;
    L_0x00f0:
        r1 = r1.length();	 Catch:{ IOException -> 0x01a7 }
        r1 = r1 + r3;
        r3 = "\r\n";
        r3 = r0.indexOf(r3, r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.substring(r1, r3);	 Catch:{ IOException -> 0x01a7 }
    L_0x00ff:
        r1 = 0;
        r1 = r0.charAt(r1);	 Catch:{ IOException -> 0x01a7 }
        r3 = 32;
        if (r1 != r3) goto L_0x0113;
    L_0x0108:
        r1 = 1;
        r0 = r0.substring(r1);	 Catch:{ IOException -> 0x01a7 }
        goto L_0x00ff;
    L_0x010e:
        r0 = r7.read();	 Catch:{ IOException -> 0x01a7 }
        goto L_0x00c9;
    L_0x0113:
        r1 = r0.length();	 Catch:{ IOException -> 0x01a7 }
        r1 = r1 + -1;
        r1 = r0.charAt(r1);	 Catch:{ IOException -> 0x01a7 }
        r3 = 32;
        if (r1 != r3) goto L_0x012d;
    L_0x0121:
        r1 = 0;
        r3 = r0.length();	 Catch:{ IOException -> 0x01a7 }
        r3 = r3 + -1;
        r0 = r0.substring(r1, r3);	 Catch:{ IOException -> 0x01a7 }
        goto L_0x0113;
    L_0x012d:
        r0 = java.lang.Integer.parseInt(r0);	 Catch:{ IOException -> 0x01a7 }
    L_0x0131:
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01a7 }
        r3.<init>();	 Catch:{ IOException -> 0x01a7 }
    L_0x0136:
        if (r0 == 0) goto L_0x013e;
    L_0x0138:
        r1 = r7.read();	 Catch:{ SocketTimeoutException -> 0x01a0 }
        if (r1 != r2) goto L_0x018e;
    L_0x013e:
        r6.close();	 Catch:{ IOException -> 0x01a7 }
        r0 = r3.toString();	 Catch:{ IOException -> 0x01a7 }
        r13.data = r0;	 Catch:{ IOException -> 0x01a7 }
        r0 = r13.data;	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.length();	 Catch:{ IOException -> 0x01a7 }
        r13.size = r0;	 Catch:{ IOException -> 0x01a7 }
        r0 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x01a7 }
        r1 = "POST response (";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.print(r5);	 Catch:{ IOException -> 0x01a7 }
        r1 = "):";
        r0.println(r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x01a7 }
        r1 = r13.data;	 Catch:{ IOException -> 0x01a7 }
        r0.println(r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = 1;
        r13.success = r0;	 Catch:{ IOException -> 0x01a7 }
        com.jirbo.adcolony.ADC.queue_event(r13);	 Catch:{ IOException -> 0x01a7 }
    L_0x016d:
        return;
    L_0x016e:
        r0 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x01a7 }
        r0.<init>();	 Catch:{ IOException -> 0x01a7 }
        r1 = "Missing Content-Length in response header (";
        r0 = r0.append(r1);	 Catch:{ IOException -> 0x01a7 }
        r1 = r13.url;	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.append(r1);	 Catch:{ IOException -> 0x01a7 }
        r1 = ").";
        r0 = r0.append(r1);	 Catch:{ IOException -> 0x01a7 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x01a7 }
        com.jirbo.adcolony.ADC.log_error(r0);	 Catch:{ IOException -> 0x01a7 }
        r0 = r2;
        goto L_0x0131;
    L_0x018e:
        r1 = (char) r1;
        r3.append(r1);	 Catch:{ SocketTimeoutException -> 0x01a0 }
        if (r0 <= 0) goto L_0x0136;
    L_0x0194:
        r0 = r0 + -1;
        if (r0 != 0) goto L_0x0136;
    L_0x0198:
        r1 = r7.available();	 Catch:{ SocketTimeoutException -> 0x01a0 }
        if (r1 <= 0) goto L_0x0136;
    L_0x019e:
        r0 = r2;
        goto L_0x0136;
    L_0x01a0:
        r1 = move-exception;
        r12 = r1;
        r1 = r0;
        r0 = r12;
        if (r1 <= 0) goto L_0x013e;
    L_0x01a6:
        throw r0;	 Catch:{ IOException -> 0x01a7 }
    L_0x01a7:
        r0 = move-exception;
        r1 = r4;
    L_0x01a9:
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r5 = "Download of ";
        r3 = r3.append(r5);
        r5 = r13.url;
        r3 = r3.append(r5);
        r5 = " failed:\n";
        r3 = r3.append(r5);
        r0 = r0.toString();
        r0 = r3.append(r0);
        r0 = r0.toString();
        com.jirbo.adcolony.ADC.log_debug(r0);
        if (r1 != r4) goto L_0x0394;
    L_0x01d1:
        r13.success = r11;
        com.jirbo.adcolony.ADC.queue_event(r13);
        goto L_0x016d;
    L_0x01d7:
        r1 = 0;
        r0 = new java.net.URL;	 Catch:{ IOException -> 0x026c }
        r3 = r13.url;	 Catch:{ IOException -> 0x026c }
        r0.<init>(r3);	 Catch:{ IOException -> 0x026c }
        r0 = r0.openConnection();	 Catch:{ IOException -> 0x026c }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x026c }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IOException -> 0x026c }
        r3 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
        r0.setReadTimeout(r3);	 Catch:{ IOException -> 0x026c }
        r3 = r13.third_party_tracking;	 Catch:{ IOException -> 0x026c }
        if (r3 == 0) goto L_0x01f4;
    L_0x01f0:
        r3 = 0;
        r0.setInstanceFollowRedirects(r3);	 Catch:{ IOException -> 0x026c }
    L_0x01f4:
        r3 = r13.file;	 Catch:{ IOException -> 0x026c }
        if (r3 == 0) goto L_0x0270;
    L_0x01f8:
        r1 = r13.controller;	 Catch:{ IOException -> 0x026c }
        if (r1 == 0) goto L_0x0209;
    L_0x01fc:
        r1 = r13.controller;	 Catch:{ IOException -> 0x026c }
        r1 = r1.storage;	 Catch:{ IOException -> 0x026c }
        if (r1 == 0) goto L_0x0209;
    L_0x0202:
        r1 = r13.controller;	 Catch:{ IOException -> 0x026c }
        r1 = r1.storage;	 Catch:{ IOException -> 0x026c }
        r1.validate_storage_paths();	 Catch:{ IOException -> 0x026c }
    L_0x0209:
        r1 = r13.file;	 Catch:{ IOException -> 0x026c }
        r3 = r1.getAbsolutePath();	 Catch:{ IOException -> 0x026c }
        r6 = new java.io.FileOutputStream;	 Catch:{ IOException -> 0x026c }
        r6.<init>(r3);	 Catch:{ IOException -> 0x026c }
        r7 = r0.getInputStream();	 Catch:{ IOException -> 0x026c }
        r1 = r0.getContentLength();	 Catch:{ IOException -> 0x026c }
        r0 = 0;
        r13.size = r0;	 Catch:{ IOException -> 0x026c }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r8 = new byte[r0];	 Catch:{ IOException -> 0x026c }
        r0 = 0;
        r9 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = r7.read(r8, r0, r9);	 Catch:{ IOException -> 0x026c }
    L_0x022a:
        if (r0 == r2) goto L_0x0244;
    L_0x022c:
        if (r1 <= 0) goto L_0x0232;
    L_0x022e:
        if (r0 <= r1) goto L_0x0231;
    L_0x0230:
        r0 = r1;
    L_0x0231:
        r1 = r1 - r0;
    L_0x0232:
        r9 = r13.size;	 Catch:{ IOException -> 0x026c }
        r9 = r9 + r0;
        r13.size = r9;	 Catch:{ IOException -> 0x026c }
        r9 = 0;
        r6.write(r8, r9, r0);	 Catch:{ IOException -> 0x026c }
        r0 = 0;
        r9 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = r7.read(r8, r0, r9);	 Catch:{ IOException -> 0x026c }
        if (r1 != 0) goto L_0x022a;
    L_0x0244:
        r7.close();	 Catch:{ IOException -> 0x026c }
        r6.flush();	 Catch:{ IOException -> 0x026c }
        r6.close();	 Catch:{ IOException -> 0x026c }
        r0 = com.jirbo.adcolony.ADCLog.debug;	 Catch:{ IOException -> 0x026c }
        r1 = "Downloaded ";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r1 = r13.url;	 Catch:{ IOException -> 0x026c }
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r1 = " to ";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r0.println(r3);	 Catch:{ IOException -> 0x026c }
    L_0x0264:
        r0 = 1;
        r13.success = r0;	 Catch:{ IOException -> 0x026c }
        com.jirbo.adcolony.ADC.queue_event(r13);	 Catch:{ IOException -> 0x026c }
        goto L_0x016d;
    L_0x026c:
        r0 = move-exception;
        r1 = r5;
        goto L_0x01a9;
    L_0x0270:
        r3 = r13.third_party_tracking;	 Catch:{ IOException -> 0x026c }
        if (r3 == 0) goto L_0x02a7;
    L_0x0274:
        r3 = r0.getResponseCode();	 Catch:{ IOException -> 0x026c }
        if (r3 <= 0) goto L_0x02a7;
    L_0x027a:
        r0 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r1 = "Got HTTP response ";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r0 = r0.print(r3);	 Catch:{ IOException -> 0x026c }
        r1 = " - counting as completed submission for 3rd party tracking.";
        r0.println(r1);	 Catch:{ IOException -> 0x026c }
        r0 = com.jirbo.adcolony.ADCLog.debug;	 Catch:{ IOException -> 0x026c }
        r1 = "Downloaded ";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r1 = r13.url;	 Catch:{ IOException -> 0x026c }
        r0.println(r1);	 Catch:{ IOException -> 0x026c }
        r0 = "";
        r13.data = r0;	 Catch:{ IOException -> 0x026c }
        r0 = 0;
        r13.size = r0;	 Catch:{ IOException -> 0x026c }
        r0 = 1;
        r13.success = r0;	 Catch:{ IOException -> 0x026c }
        com.jirbo.adcolony.ADC.queue_event(r13);	 Catch:{ IOException -> 0x026c }
        goto L_0x016d;
    L_0x02a7:
        r3 = r13.url;	 Catch:{ IOException -> 0x026c }
        r6 = "https://";
        r3 = r3.startsWith(r6);	 Catch:{ IOException -> 0x026c }
        if (r3 == 0) goto L_0x0380;
    L_0x02b1:
        r3 = android.os.Build.VERSION.SDK_INT;	 Catch:{ IOException -> 0x026c }
        r6 = 10;
        if (r3 < r6) goto L_0x0380;
    L_0x02b7:
        r1 = new java.net.URL;	 Catch:{ IOException -> 0x026c }
        r3 = r13.url;	 Catch:{ IOException -> 0x026c }
        r1.<init>(r3);	 Catch:{ IOException -> 0x026c }
        r1 = r1.openConnection();	 Catch:{ IOException -> 0x026c }
        r1 = (javax.net.ssl.HttpsURLConnection) r1;	 Catch:{ IOException -> 0x026c }
        r1 = (javax.net.ssl.HttpsURLConnection) r1;	 Catch:{ IOException -> 0x026c }
        r3 = 1;
        r13.use_ssl = r3;	 Catch:{ IOException -> 0x026c }
        r3 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r6 = "ADCDownload - use ssl!";
        r3.println(r6);	 Catch:{ IOException -> 0x026c }
        r3 = new com.jirbo.adcolony.ADCDownload$1;	 Catch:{ IOException -> 0x026c }
        r3.<init>();	 Catch:{ IOException -> 0x026c }
        r1.setHostnameVerifier(r3);	 Catch:{ IOException -> 0x026c }
        r3 = "SSL";
        r3 = javax.net.ssl.SSLContext.getInstance(r3);	 Catch:{ Exception -> 0x0373 }
        r6 = 0;
        r7 = 1;
        r7 = new javax.net.ssl.TrustManager[r7];	 Catch:{ Exception -> 0x0373 }
        r8 = 0;
        r9 = new com.jirbo.adcolony.ADCDownload$DefaultTrustManager;	 Catch:{ Exception -> 0x0373 }
        r10 = 0;
        r9.<init>();	 Catch:{ Exception -> 0x0373 }
        r7[r8] = r9;	 Catch:{ Exception -> 0x0373 }
        r8 = new java.security.SecureRandom;	 Catch:{ Exception -> 0x0373 }
        r8.<init>();	 Catch:{ Exception -> 0x0373 }
        r3.init(r6, r7, r8);	 Catch:{ Exception -> 0x0373 }
        javax.net.ssl.SSLContext.setDefault(r3);	 Catch:{ Exception -> 0x0373 }
        r3 = r3.getSocketFactory();	 Catch:{ Exception -> 0x0373 }
        javax.net.ssl.HttpsURLConnection.setDefaultSSLSocketFactory(r3);	 Catch:{ Exception -> 0x0373 }
    L_0x02fd:
        r3 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r6 = "ADCDownload - before pause";
        r3.println(r6);	 Catch:{ IOException -> 0x026c }
        r6 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        java.lang.Thread.sleep(r6);	 Catch:{ Exception -> 0x03b5 }
    L_0x0309:
        r3 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r6 = "ADCDownload - getInputStream";
        r3.println(r6);	 Catch:{ IOException -> 0x026c }
        r3 = r13.use_ssl;	 Catch:{ IOException -> 0x026c }
        if (r3 == 0) goto L_0x0385;
    L_0x0314:
        r0 = r1.getInputStream();	 Catch:{ IOException -> 0x026c }
        r3 = r0;
    L_0x0319:
        r6 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x026c }
        r6.<init>();	 Catch:{ IOException -> 0x026c }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r7 = new byte[r0];	 Catch:{ IOException -> 0x026c }
        r0 = 0;
        r1 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = r3.read(r7, r0, r1);	 Catch:{ IOException -> 0x026c }
        r1 = r0;
    L_0x032a:
        if (r1 == r2) goto L_0x0343;
    L_0x032c:
        r0 = r2;
    L_0x032d:
        r0 = r0 + 1;
        if (r0 >= r1) goto L_0x038b;
    L_0x0331:
        r8 = r7[r0];	 Catch:{ OutOfMemoryError -> 0x0338 }
        r8 = (char) r8;	 Catch:{ OutOfMemoryError -> 0x0338 }
        r6.append(r8);	 Catch:{ OutOfMemoryError -> 0x0338 }
        goto L_0x032d;
    L_0x0338:
        r0 = move-exception;
        r0 = com.jirbo.adcolony.ADCLog.error;	 Catch:{ IOException -> 0x026c }
        r1 = "Disabling AdColony due to OutOfMemoryError";
        r0.println(r1);	 Catch:{ IOException -> 0x026c }
        com.jirbo.adcolony.AdColony.disable();	 Catch:{ IOException -> 0x026c }
    L_0x0343:
        r3.close();	 Catch:{ IOException -> 0x026c }
        r0 = r6.toString();	 Catch:{ IOException -> 0x026c }
        r13.data = r0;	 Catch:{ IOException -> 0x026c }
        r0 = r13.data;	 Catch:{ IOException -> 0x026c }
        r0 = r0.length();	 Catch:{ IOException -> 0x026c }
        r13.size = r0;	 Catch:{ IOException -> 0x026c }
        r0 = r13.url;	 Catch:{ IOException -> 0x026c }
        r1 = "androidads20";
        r0 = r0.contains(r1);	 Catch:{ IOException -> 0x026c }
        if (r0 == 0) goto L_0x0364;
    L_0x035e:
        r0 = java.lang.System.currentTimeMillis();	 Catch:{ IOException -> 0x026c }
        last_config_ms = r0;	 Catch:{ IOException -> 0x026c }
    L_0x0364:
        r0 = com.jirbo.adcolony.ADCLog.debug;	 Catch:{ IOException -> 0x026c }
        r1 = "Downloaded ";
        r0 = r0.print(r1);	 Catch:{ IOException -> 0x026c }
        r1 = r13.url;	 Catch:{ IOException -> 0x026c }
        r0.println(r1);	 Catch:{ IOException -> 0x026c }
        goto L_0x0264;
    L_0x0373:
        r3 = move-exception;
        r6 = com.jirbo.adcolony.ADCLog.dev;	 Catch:{ IOException -> 0x026c }
        r7 = "ADCDownload - SSL Failure";
        r6.println(r7);	 Catch:{ IOException -> 0x026c }
        r3.printStackTrace();	 Catch:{ IOException -> 0x026c }
        goto L_0x02fd;
    L_0x0380:
        r3 = 0;
        r13.use_ssl = r3;	 Catch:{ IOException -> 0x026c }
        goto L_0x02fd;
    L_0x0385:
        r0 = r0.getInputStream();	 Catch:{ IOException -> 0x026c }
        r3 = r0;
        goto L_0x0319;
    L_0x038b:
        r0 = 0;
        r1 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = r3.read(r7, r0, r1);	 Catch:{ OutOfMemoryError -> 0x0338 }
        r1 = r0;
        goto L_0x032a;
    L_0x0394:
        r0 = r1 + 1;
        r0 = r0 * 10;
        r0 = r0 * 1000;
        r5 = (long) r0;
        java.lang.Thread.sleep(r5);	 Catch:{ InterruptedException -> 0x03b8 }
    L_0x039e:
        r0 = com.jirbo.adcolony.ADCLog.debug;
        r3 = "Trying again (";
        r0 = r0.print(r3);
        r3 = r1 + 1;
        r0 = r0.print(r3);
        r3 = "/3)";
        r0.println(r3);
        r5 = r1 + 1;
        goto L_0x0004;
    L_0x03b5:
        r3 = move-exception;
        goto L_0x0309;
    L_0x03b8:
        r0 = move-exception;
        goto L_0x039e;
        */
    }

    public void start() {
        ADCThreadPool.run(this);
    }

    ADCDownload with_info(Object obj) {
        this.info = obj;
        return this;
    }

    ADCDownload with_post_data(String str, String str2) {
        this.post_content_type = str;
        this.post_data = str2;
        return this;
    }
}