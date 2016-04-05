package com.appyet.activity;

import android.content.Context;
import android.widget.ArrayAdapter;
import com.appyet.context.ApplicationContext;
import java.io.File;
import java.util.List;

final class l
  extends ArrayAdapter<File>
{
  private ApplicationContext b;
  
  public l(Context paramContext, int paramInt)
  {
    super(paramInt, 2130903098, localList);
    b = ((ApplicationContext)paramInt.getApplicationContext());
  }
  
  public final int getCount()
  {
    return super.getCount();
  }
  
  /* Error */
  public final android.view.View getView(int paramInt, android.view.View paramView, android.view.ViewGroup paramViewGroup)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull +264 -> 265
    //   4: aload_0
    //   5: getfield 27	com/appyet/activity/l:b	Lcom/appyet/context/ApplicationContext;
    //   8: ldc 40
    //   10: invokevirtual 44	com/appyet/context/ApplicationContext:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   13: checkcast 46	android/view/LayoutInflater
    //   16: ldc 14
    //   18: aconst_null
    //   19: invokevirtual 50	android/view/LayoutInflater:inflate	(ILandroid/view/ViewGroup;)Landroid/view/View;
    //   22: astore_3
    //   23: aload_3
    //   24: astore_2
    //   25: aload_0
    //   26: iload_1
    //   27: invokevirtual 54	com/appyet/activity/l:getItem	(I)Ljava/lang/Object;
    //   30: checkcast 56	java/io/File
    //   33: astore 4
    //   35: aload_2
    //   36: ldc 57
    //   38: invokevirtual 63	android/view/View:findViewById	(I)Landroid/view/View;
    //   41: checkcast 65	android/widget/ImageView
    //   44: astore_3
    //   45: aload_2
    //   46: ldc 66
    //   48: invokevirtual 63	android/view/View:findViewById	(I)Landroid/view/View;
    //   51: checkcast 68	android/widget/TextView
    //   54: astore 6
    //   56: aload_2
    //   57: ldc 69
    //   59: invokevirtual 63	android/view/View:findViewById	(I)Landroid/view/View;
    //   62: checkcast 68	android/widget/TextView
    //   65: astore 7
    //   67: aload_2
    //   68: ldc 70
    //   70: invokevirtual 63	android/view/View:findViewById	(I)Landroid/view/View;
    //   73: checkcast 68	android/widget/TextView
    //   76: astore 5
    //   78: aload 6
    //   80: aload 4
    //   82: invokevirtual 74	java/io/File:getName	()Ljava/lang/String;
    //   85: invokevirtual 78	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   88: aload 7
    //   90: aload_0
    //   91: getfield 27	com/appyet/activity/l:b	Lcom/appyet/context/ApplicationContext;
    //   94: new 80	java/util/Date
    //   97: dup
    //   98: aload 4
    //   100: invokevirtual 84	java/io/File:lastModified	()J
    //   103: invokespecial 87	java/util/Date:<init>	(J)V
    //   106: invokestatic 92	com/appyet/d/a:b	(Lcom/appyet/context/ApplicationContext;Ljava/util/Date;)Ljava/lang/String;
    //   109: invokevirtual 78	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   112: new 94	java/text/DecimalFormat
    //   115: dup
    //   116: ldc 96
    //   118: invokespecial 99	java/text/DecimalFormat:<init>	(Ljava/lang/String;)V
    //   121: astore 6
    //   123: aload 5
    //   125: new 101	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   132: ldc 106
    //   134: iconst_1
    //   135: anewarray 108	java/lang/Object
    //   138: dup
    //   139: iconst_0
    //   140: aload 6
    //   142: aload 4
    //   144: invokevirtual 111	java/io/File:length	()J
    //   147: l2d
    //   148: ldc2_w 112
    //   151: ddiv
    //   152: invokevirtual 117	java/text/DecimalFormat:format	(D)Ljava/lang/String;
    //   155: aastore
    //   156: invokestatic 122	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   159: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc -128
    //   164: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload_0
    //   168: getfield 13	com/appyet/activity/l:a	Lcom/appyet/activity/DownloadActivity;
    //   171: ldc -127
    //   173: invokevirtual 135	com/appyet/activity/DownloadActivity:getString	(I)Ljava/lang/String;
    //   176: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: invokevirtual 78	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   185: aload 4
    //   187: invokevirtual 141	java/io/File:getPath	()Ljava/lang/String;
    //   190: invokestatic 146	com/appyet/f/v:a	(Ljava/lang/String;)Ljava/lang/String;
    //   193: astore 4
    //   195: aload 4
    //   197: ifnull +55 -> 252
    //   200: aload 4
    //   202: ldc -108
    //   204: invokevirtual 152	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   207: ifeq +11 -> 218
    //   210: aload_3
    //   211: ldc -103
    //   213: invokevirtual 157	android/widget/ImageView:setImageResource	(I)V
    //   216: aload_2
    //   217: areturn
    //   218: aload 4
    //   220: ldc -97
    //   222: invokevirtual 152	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   225: ifeq +11 -> 236
    //   228: aload_3
    //   229: ldc -96
    //   231: invokevirtual 157	android/widget/ImageView:setImageResource	(I)V
    //   234: aload_2
    //   235: areturn
    //   236: aload 4
    //   238: ldc -94
    //   240: invokevirtual 152	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   243: ifeq +9 -> 252
    //   246: aload_3
    //   247: ldc -93
    //   249: invokevirtual 157	android/widget/ImageView:setImageResource	(I)V
    //   252: aload_2
    //   253: areturn
    //   254: astore_3
    //   255: aload_3
    //   256: invokestatic 168	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   259: aload_2
    //   260: areturn
    //   261: astore_3
    //   262: goto -7 -> 255
    //   265: goto -240 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	268	0	this	l
    //   0	268	1	paramInt	int
    //   0	268	2	paramView	android.view.View
    //   0	268	3	paramViewGroup	android.view.ViewGroup
    //   33	204	4	localObject1	Object
    //   76	48	5	localTextView1	android.widget.TextView
    //   54	87	6	localObject2	Object
    //   65	24	7	localTextView2	android.widget.TextView
    // Exception table:
    //   from	to	target	type
    //   4	23	254	java/lang/Exception
    //   25	195	261	java/lang/Exception
    //   200	216	261	java/lang/Exception
    //   218	234	261	java/lang/Exception
    //   236	252	261	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */