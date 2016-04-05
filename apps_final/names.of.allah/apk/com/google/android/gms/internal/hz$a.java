package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.HashMap;

public class hz$a<I, O>
  implements SafeParcelable
{
  public static final ia CREATOR = new ia();
  protected final int GY;
  protected final boolean GZ;
  protected final int Ha;
  protected final boolean Hb;
  protected final String Hc;
  protected final int Hd;
  protected final Class<? extends hz> He;
  protected final String Hf;
  private ic Hg;
  private hz.b<I, O> Hh;
  private final int xJ;
  
  hz$a(int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, int paramInt4, String paramString2, hu paramhu)
  {
    xJ = paramInt1;
    GY = paramInt2;
    GZ = paramBoolean1;
    Ha = paramInt3;
    Hb = paramBoolean2;
    Hc = paramString1;
    Hd = paramInt4;
    if (paramString2 == null) {
      He = null;
    }
    for (Hf = null; paramhu == null; Hf = paramString2)
    {
      Hh = null;
      return;
      He = if.class;
    }
    Hh = paramhu.fx();
  }
  
  protected hz$a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2, String paramString, int paramInt3, Class<? extends hz> paramClass, hz.b<I, O> paramb)
  {
    xJ = 1;
    GY = paramInt1;
    GZ = paramBoolean1;
    Ha = paramInt2;
    Hb = paramBoolean2;
    Hc = paramString;
    Hd = paramInt3;
    He = paramClass;
    if (paramClass == null) {}
    for (Hf = null;; Hf = paramClass.getCanonicalName())
    {
      Hh = paramb;
      return;
    }
  }
  
  public static a a(String paramString, int paramInt, hz.b<?, ?> paramb, boolean paramBoolean)
  {
    return new a(paramb.fz(), paramBoolean, paramb.fA(), false, paramString, paramInt, null, paramb);
  }
  
  public static <T extends hz> a<T, T> a(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, false, 11, false, paramString, paramInt, paramClass, null);
  }
  
  public static <T extends hz> a<ArrayList<T>, ArrayList<T>> b(String paramString, int paramInt, Class<T> paramClass)
  {
    return new a(11, true, 11, true, paramString, paramInt, paramClass, null);
  }
  
  public static a<Integer, Integer> g(String paramString, int paramInt)
  {
    return new a(0, false, 0, false, paramString, paramInt, null, null);
  }
  
  public static a<Double, Double> h(String paramString, int paramInt)
  {
    return new a(4, false, 4, false, paramString, paramInt, null, null);
  }
  
  public static a<Boolean, Boolean> i(String paramString, int paramInt)
  {
    return new a(6, false, 6, false, paramString, paramInt, null, null);
  }
  
  public static a<String, String> j(String paramString, int paramInt)
  {
    return new a(7, false, 7, false, paramString, paramInt, null, null);
  }
  
  public static a<ArrayList<String>, ArrayList<String>> k(String paramString, int paramInt)
  {
    return new a(7, true, 7, true, paramString, paramInt, null, null);
  }
  
  public void a(ic paramic)
  {
    Hg = paramic;
  }
  
  public int describeContents()
  {
    ia localia = CREATOR;
    return 0;
  }
  
  public int fA()
  {
    return Ha;
  }
  
  public a<I, O> fE()
  {
    return new a(xJ, GY, GZ, Ha, Hb, Hc, Hd, Hf, fM());
  }
  
  public boolean fF()
  {
    return GZ;
  }
  
  public boolean fG()
  {
    return Hb;
  }
  
  public String fH()
  {
    return Hc;
  }
  
  public int fI()
  {
    return Hd;
  }
  
  public Class<? extends hz> fJ()
  {
    return He;
  }
  
  String fK()
  {
    if (Hf == null) {
      return null;
    }
    return Hf;
  }
  
  public boolean fL()
  {
    return Hh != null;
  }
  
  hu fM()
  {
    if (Hh == null) {
      return null;
    }
    return hu.a(Hh);
  }
  
  public HashMap<String, a<?, ?>> fN()
  {
    hn.f(Hf);
    hn.f(Hg);
    return Hg.aJ(Hf);
  }
  
  public int fz()
  {
    return GY;
  }
  
  public I g(O paramO)
  {
    return (I)Hh.g(paramO);
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("Field\n");
    localStringBuilder1.append("            versionCode=").append(xJ).append('\n');
    localStringBuilder1.append("                 typeIn=").append(GY).append('\n');
    localStringBuilder1.append("            typeInArray=").append(GZ).append('\n');
    localStringBuilder1.append("                typeOut=").append(Ha).append('\n');
    localStringBuilder1.append("           typeOutArray=").append(Hb).append('\n');
    localStringBuilder1.append("        outputFieldName=").append(Hc).append('\n');
    localStringBuilder1.append("      safeParcelFieldId=").append(Hd).append('\n');
    localStringBuilder1.append("       concreteTypeName=").append(fK()).append('\n');
    if (fJ() != null) {
      localStringBuilder1.append("     concreteType.class=").append(fJ().getCanonicalName()).append('\n');
    }
    StringBuilder localStringBuilder2 = localStringBuilder1.append("          converterName=");
    if (Hh == null) {}
    for (String str = "null";; str = Hh.getClass().getCanonicalName())
    {
      localStringBuilder2.append(str).append('\n');
      return localStringBuilder1.toString();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ia localia = CREATOR;
    ia.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */