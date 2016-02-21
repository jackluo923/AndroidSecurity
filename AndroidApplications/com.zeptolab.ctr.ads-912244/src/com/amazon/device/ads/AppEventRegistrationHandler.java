package com.amazon.device.ads;

import android.content.Context;
import com.admarvel.android.ads.Constants;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class AppEventRegistrationHandler {
    protected static final String a = "AppEventsJsonFile";
    protected static final String b = "evtName";
    protected static final String c = "ts";
    protected static final long d = 1048576;
    protected static AppEventRegistrationHandler h;
    private static final String i;
    protected final Object e;
    protected final Set f;
    protected final Set g;

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ AppEvent a;

        AnonymousClass_1(AppEvent appEvent) {
            this.a = appEvent;
        }

        public void run() {
            AppEventRegistrationHandler.this.a(this.a);
        }
    }

    static {
        i = AppEventRegistrationHandler.class.getSimpleName();
        h = new AppEventRegistrationHandler();
    }

    protected AppEventRegistrationHandler() {
        this.e = new Object();
        this.f = Collections.synchronizedSet(new HashSet());
        this.g = Collections.synchronizedSet(new HashSet());
    }

    public static AppEventRegistrationHandler getInstance() {
        return h;
    }

    protected void a(AppEvent appEvent) {
        OutputStreamWriter outputStreamWriter;
        Throwable th;
        Context applicationContext = InternalAdRegistration.getInstance().getApplicationContext();
        if (applicationContext != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(b, appEvent.getEventName());
                jSONObject.put(c, appEvent.getTimestamp());
                Iterator it = appEvent.getPropertyEntries().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    jSONObject.put((String) entry.getKey(), entry.getValue());
                }
                this.f.add(jSONObject.toString());
                synchronized (this.e) {
                    String str = jSONObject.toString() + Constants.FORMATTER;
                    File file = new File(applicationContext.getFilesDir(), a);
                    if (file.length() + ((long) str.length()) > 1048576) {
                        Log.w(i, "Couldn't write the application event %s to the cache file. Maximum size limit reached.", new Object[]{appEvent.toString()});
                    } else {
                        OutputStreamWriter outputStreamWriter2 = null;
                        try {
                            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file, true));
                            try {
                                outputStreamWriter.write(str);
                                Log.d(i, "Added the application event %s to the cache file.", new Object[]{appEvent.toString()});
                                if (outputStreamWriter != null) {
                                    try {
                                        outputStreamWriter.close();
                                    } catch (IOException e) {
                                        Log.w(i, "Problem while closing application events file.");
                                    }
                                }
                            } catch (IOException e2) {
                                Log.w(i, "Couldn't write the application event %s to the file.", new Object[]{appEvent.toString()});
                                if (outputStreamWriter != null) {
                                    outputStreamWriter.close();
                                }
                            }
                        } catch (IOException e3) {
                            outputStreamWriter = outputStreamWriter2;
                            try {
                                Log.w(i, "Couldn't write the application event %s to the file.", new Object[]{appEvent.toString()});
                                if (outputStreamWriter != null) {
                                    try {
                                        outputStreamWriter.close();
                                    } catch (IOException e4) {
                                        Log.w(i, "Problem while closing application events file.");
                                    }
                                }
                            } catch (Throwable th2) {
                                outputStreamWriter2 = outputStreamWriter;
                                th = th2;
                                if (outputStreamWriter2 != null) {
                                    outputStreamWriter2.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (outputStreamWriter2 != null) {
                                try {
                                    outputStreamWriter2.close();
                                } catch (IOException e5) {
                                    Log.w(i, "Problem while closing application events file.");
                                }
                            }
                            throw th;
                        }
                    }
                }
            } catch (JSONException e6) {
                Log.w(i, "Internal error while persisting the application event %s.", new Object[]{appEvent.toString()});
            }
        }
    }

    public void addEventToAppEventsCacheFile(AppEvent appEvent) {
        ThreadUtils.executeRunnable(new AnonymousClass_1(appEvent));
    }

    public JSONArray getAppEventsJSONArray() {
        BufferedReader bufferedReader;
        Throwable th;
        JSONArray jSONArray = null;
        Context applicationContext = InternalAdRegistration.getInstance().getApplicationContext();
        if (applicationContext != null) {
            synchronized (this.e) {
                File file = new File(applicationContext.getFilesDir(), a);
                if (file.exists()) {
                    FileInputStream fileInputStream;
                    try {
                        JSONArray jSONArray2;
                        fileInputStream = new FileInputStream(file);
                        try {
                            bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                            jSONArray2 = null;
                        } catch (IOException e) {
                            bufferedReader = null;
                            Log.w(i, "Problem while reading the application events file.");
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return jSONArray;
                        } catch (Throwable th2) {
                            bufferedReader = null;
                            th = th2;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            throw th;
                        }
                        while (true) {
                            try {
                                String readLine = bufferedReader.readLine();
                                if (readLine != null) {
                                    JSONObject a = JSONUtils.a(readLine);
                                    if (a == null) {
                                        onAppEventsRegistered();
                                    } else {
                                        if (jSONArray2 == null) {
                                            jSONArray2 = new JSONArray();
                                        }
                                        jSONArray2.put(a);
                                        this.g.add(a.toString());
                                    }
                                } else {
                                    jSONArray = jSONArray2;
                                }
                                if (fileInputStream != null) {
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e2) {
                                        Log.w(i, "Problem while closing the application events file.");
                                    }
                                }
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e3) {
                                        Log.w(i, "Problem while closing the application events file.");
                                    }
                                }
                            } catch (IOException e4) {
                            }
                        }
                    } catch (IOException e5) {
                        bufferedReader = null;
                        fileInputStream = null;
                        try {
                            Log.w(i, "Problem while reading the application events file.");
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e6) {
                                    Log.w(i, "Problem while closing the application events file.");
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e7) {
                                    Log.w(i, "Problem while closing the application events file.");
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e8) {
                                    Log.w(i, "Problem while closing the application events file.");
                                }
                            }
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e9) {
                                    Log.w(i, "Problem while closing the application events file.");
                                }
                            }
                            throw th;
                        }
                        return jSONArray;
                    } catch (Throwable th4) {
                        fileInputStream = null;
                        th = th4;
                        bufferedReader = null;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                }
            }
        }
        return jSONArray;
    }

    public void onAppEventsRegistered() {
        BufferedWriter bufferedWriter;
        Throwable th;
        Context applicationContext = InternalAdRegistration.getInstance().getApplicationContext();
        if (applicationContext != null) {
            synchronized (this.e) {
                try {
                    this.f.removeAll(this.g);
                    if (this.f.isEmpty()) {
                        applicationContext.deleteFile(a);
                        this.g.clear();
                    } else {
                        StringBuilder stringBuilder = new StringBuilder();
                        synchronized (this.f) {
                            Iterator it = this.f.iterator();
                            while (it.hasNext()) {
                                stringBuilder.append((String) it.next()).append(Constants.FORMATTER);
                            }
                        }
                        File file = new File(applicationContext.getFilesDir(), a);
                        BufferedWriter bufferedWriter2 = null;
                        try {
                            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, false)));
                            try {
                                bufferedWriter.write(stringBuilder.toString());
                                this.f.clear();
                                this.g.clear();
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException e) {
                                        Log.w(i, "Problem while closing application events file.");
                                    }
                                }
                            } catch (IOException e2) {
                                Log.w(i, "Couldn't write the application event(s) to the file.");
                                if (bufferedWriter != null) {
                                    bufferedWriter.close();
                                }
                            }
                        } catch (IOException e3) {
                            bufferedWriter = bufferedWriter2;
                            try {
                                Log.w(i, "Couldn't write the application event(s) to the file.");
                                if (bufferedWriter != null) {
                                    try {
                                        bufferedWriter.close();
                                    } catch (IOException e4) {
                                        Log.w(i, "Problem while closing application events file.");
                                    }
                                }
                            } catch (Throwable th2) {
                                bufferedWriter2 = bufferedWriter;
                                th = th2;
                                if (bufferedWriter2 != null) {
                                    bufferedWriter2.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            if (bufferedWriter2 != null) {
                                try {
                                    bufferedWriter2.close();
                                } catch (IOException e5) {
                                    Log.w(i, "Problem while closing application events file.");
                                }
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                }
            }
        }
    }
}