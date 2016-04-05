package com.google.android.gms.drive;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.c;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.drive.internal.p;
import com.google.android.gms.drive.internal.r;
import com.google.android.gms.drive.internal.t;
import com.google.android.gms.drive.internal.w;

public final class Drive
{
  public static final Api<Api.ApiOptions.NoOptions> API;
  public static final DriveApi DriveApi = new p();
  public static final Scope HE;
  public static final Scope HF;
  public static final Api<Drive.b> HG;
  public static final b HH = new t();
  public static final d HI = new w();
  public static final Scope SCOPE_APPFOLDER;
  public static final Scope SCOPE_FILE;
  public static final Api.c<r> yE = new Api.c();
  
  static
  {
    SCOPE_FILE = new Scope("https://www.googleapis.com/auth/drive.file");
    SCOPE_APPFOLDER = new Scope("https://www.googleapis.com/auth/drive.appdata");
    HE = new Scope("https://www.googleapis.com/auth/drive");
    HF = new Scope("https://www.googleapis.com/auth/drive.apps");
    API = new Api(new Drive.1(), yE, new Scope[0]);
    HG = new Api(new Drive.2(), yE, new Scope[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.Drive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */