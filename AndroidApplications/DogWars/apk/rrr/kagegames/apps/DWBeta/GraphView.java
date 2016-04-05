package kagegames.apps.DWBeta;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.hardware.SensorListener;
import android.view.View;

public class GraphView
  extends View
  implements SensorListener
{
  private Bitmap mBitmap;
  private Canvas mCanvas;
  private int[] mColors;
  private float mHeight;
  private float mLastMag;
  private float[] mLastValues;
  private float mLastX;
  private float mMaxX;
  private float[] mOrientationValues;
  private Paint mPaint;
  private Path mPath;
  private RectF mRect;
  private float[] mScale;
  private float mSpeed;
  private float mWidth;
  private float mYOffset;
  
  public GraphView(Context paramContext)
  {
    super(paramContext);
    Object localObject1 = new android/graphics/Paint;
    ((Paint)localObject1).<init>();
    mPaint = ((Paint)localObject1);
    localObject1 = new android/graphics/Canvas;
    ((Canvas)localObject1).<init>();
    mCanvas = ((Canvas)localObject1);
    localObject1 = new android/graphics/Path;
    ((Path)localObject1).<init>();
    mPath = ((Path)localObject1);
    localObject1 = new android/graphics/RectF;
    ((RectF)localObject1).<init>();
    mRect = ((RectF)localObject1);
    int i = 6;
    float[] arrayOfFloat1 = new float[i];
    mLastValues = arrayOfFloat1;
    int j = 3;
    float[] arrayOfFloat2 = new float[j];
    mOrientationValues = arrayOfFloat2;
    int k = 6;
    int[] arrayOfInt = new int[k];
    mColors = arrayOfInt;
    int m = 2;
    float[] arrayOfFloat3 = new float[m];
    mScale = arrayOfFloat3;
    float f1 = 1.0F;
    mSpeed = f1;
    Object localObject2 = mColors;
    int n = 0;
    int i1 = Color.argb(i3, i4, i2, i2);
    localObject2[n] = i1;
    localObject2 = mColors;
    n = 1;
    i1 = Color.argb(i3, i2, i5, i2);
    localObject2[n] = i1;
    localObject2 = mColors;
    n = 2;
    i1 = Color.argb(i3, i2, i2, i4);
    localObject2[n] = i1;
    localObject2 = mColors;
    n = 3;
    i1 = Color.argb(i3, i2, i4, i4);
    localObject2[n] = i1;
    localObject2 = mColors;
    n = 4;
    i1 = Color.argb(i3, i5, i2, i5);
    localObject2[n] = i1;
    localObject2 = mColors;
    n = 5;
    i1 = Color.argb(i3, i4, i4, i2);
    localObject2[n] = i1;
    localObject2 = mPaint;
    n = 1;
    ((Paint)localObject2).setFlags(n);
    localObject2 = mRect;
    float f2 = 0.5F;
    float f3 = 0.5F;
    ((RectF)localObject2).set(f5, f5, f2, f3);
    localObject2 = mPath;
    RectF localRectF = mRect;
    f3 = 0.0F;
    float f4 = 180.0F;
    ((Path)localObject2).arcTo(localRectF, f3, f4);
  }
  
  public void onAccuracyChanged(int paramInt1, int paramInt2) {}
  
  /* Error */
  protected void onDraw(Canvas paramCanvas)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: astore_2
    //   5: aload_2
    //   6: getfield 20	kagegames/apps/DWBeta/GraphView:mBitmap	Landroid/graphics/Bitmap;
    //   9: astore_2
    //   10: aload_2
    //   11: astore 8
    //   13: aload 8
    //   15: ifnull +417 -> 432
    //   18: aload_0
    //   19: astore_2
    //   20: aload_2
    //   21: getfield 186	kagegames/apps/DWBeta/GraphView:mPaint	Landroid/graphics/Paint;
    //   24: astore_2
    //   25: aload_2
    //   26: astore 12
    //   28: aload_0
    //   29: astore_2
    //   30: aload_2
    //   31: getfield 17	kagegames/apps/DWBeta/GraphView:mPath	Landroid/graphics/Path;
    //   34: astore_2
    //   35: aload_2
    //   36: astore 25
    //   38: ldc -101
    //   40: istore 24
    //   42: ldc -34
    //   44: istore 22
    //   46: aload_0
    //   47: astore_2
    //   48: aload_2
    //   49: getfield 185	kagegames/apps/DWBeta/GraphView:mLastX	F
    //   52: fstore_2
    //   53: fload_2
    //   54: fstore 8
    //   56: aload_0
    //   57: astore_2
    //   58: aload_2
    //   59: getfield 29	kagegames/apps/DWBeta/GraphView:mMaxX	F
    //   62: fstore_2
    //   63: fload_2
    //   64: fstore 9
    //   66: fload 8
    //   68: fload 9
    //   70: fcmpl
    //   71: istore 8
    //   73: iload 8
    //   75: iflt +208 -> 283
    //   78: fconst_0
    //   79: fstore 8
    //   81: fload 8
    //   83: fstore_2
    //   84: aload_0
    //   85: astore_3
    //   86: aload_3
    //   87: fload_2
    //   88: putfield 185	kagegames/apps/DWBeta/GraphView:mLastX	F
    //   91: aload_0
    //   92: astore_2
    //   93: aload_2
    //   94: getfield 58	kagegames/apps/DWBeta/GraphView:mCanvas	Landroid/graphics/Canvas;
    //   97: astore_2
    //   98: aload_2
    //   99: astore 7
    //   101: aload_0
    //   102: astore_2
    //   103: aload_2
    //   104: getfield 61	kagegames/apps/DWBeta/GraphView:mYOffset	F
    //   107: fstore_2
    //   108: fload_2
    //   109: fstore 9
    //   111: aload_0
    //   112: astore_2
    //   113: aload_2
    //   114: getfield 29	kagegames/apps/DWBeta/GraphView:mMaxX	F
    //   117: fstore_2
    //   118: fload_2
    //   119: fstore 10
    //   121: ldc 30
    //   123: fstore 8
    //   125: aload_0
    //   126: astore_2
    //   127: aload_2
    //   128: getfield 103	kagegames/apps/DWBeta/GraphView:mScale	[F
    //   131: astore_2
    //   132: aload_2
    //   133: astore 11
    //   135: iconst_0
    //   136: istore 13
    //   138: aload 11
    //   140: iload 13
    //   142: faload
    //   143: fstore 11
    //   145: fload 8
    //   147: fload 11
    //   149: fmul
    //   150: fstore 23
    //   152: ldc -65
    //   154: istore 8
    //   156: aload 12
    //   158: iload 8
    //   160: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   163: iconst_m1
    //   164: istore 8
    //   166: aload 7
    //   168: iload 8
    //   170: invokevirtual 165	android/graphics/Canvas:drawColor	(I)V
    //   173: fconst_0
    //   174: fstore 8
    //   176: fload 9
    //   178: fstore 11
    //   180: aload 7
    //   182: fload 8
    //   184: fload 9
    //   186: fload 10
    //   188: fload 11
    //   190: aload 12
    //   192: invokevirtual 105	android/graphics/Canvas:drawLine	(FFFFLandroid/graphics/Paint;)V
    //   195: fconst_0
    //   196: fstore 14
    //   198: fload 9
    //   200: fload 23
    //   202: fadd
    //   203: fstore 15
    //   205: fload 9
    //   207: fload 23
    //   209: fadd
    //   210: fstore 17
    //   212: aload 7
    //   214: astore 13
    //   216: fload 10
    //   218: fstore 16
    //   220: aload 12
    //   222: astore 18
    //   224: aload 13
    //   226: fload 14
    //   228: fload 15
    //   230: fload 16
    //   232: fload 17
    //   234: aload 18
    //   236: invokevirtual 105	android/graphics/Canvas:drawLine	(FFFFLandroid/graphics/Paint;)V
    //   239: fconst_0
    //   240: fstore 14
    //   242: fload 9
    //   244: fload 23
    //   246: fsub
    //   247: fstore 15
    //   249: fload 9
    //   251: fload 23
    //   253: fsub
    //   254: fstore 17
    //   256: aload 7
    //   258: astore 13
    //   260: fload 10
    //   262: fstore 16
    //   264: aload 12
    //   266: astore 18
    //   268: aload 13
    //   270: fload 14
    //   272: fload 15
    //   274: fload 16
    //   276: fload 17
    //   278: aload 18
    //   280: invokevirtual 105	android/graphics/Canvas:drawLine	(FFFFLandroid/graphics/Paint;)V
    //   283: aload_0
    //   284: astore_2
    //   285: aload_2
    //   286: getfield 20	kagegames/apps/DWBeta/GraphView:mBitmap	Landroid/graphics/Bitmap;
    //   289: astore_2
    //   290: aload_2
    //   291: astore 8
    //   293: fconst_0
    //   294: fstore 9
    //   296: fconst_0
    //   297: fstore 10
    //   299: aconst_null
    //   300: astore 11
    //   302: aload_1
    //   303: astore_2
    //   304: aload 8
    //   306: astore_3
    //   307: fload 9
    //   309: fstore 4
    //   311: fload 10
    //   313: fstore 5
    //   315: aload 11
    //   317: astore 6
    //   319: aload_2
    //   320: aload_3
    //   321: fload 4
    //   323: fload 5
    //   325: aload 6
    //   327: invokevirtual 173	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    //   330: aload_0
    //   331: astore_2
    //   332: aload_2
    //   333: getfield 137	kagegames/apps/DWBeta/GraphView:mOrientationValues	[F
    //   336: astore_2
    //   337: aload_2
    //   338: astore 26
    //   340: aload_0
    //   341: astore_2
    //   342: aload_2
    //   343: getfield 67	kagegames/apps/DWBeta/GraphView:mWidth	F
    //   346: fstore_2
    //   347: fload_2
    //   348: fstore 8
    //   350: aload_0
    //   351: astore_2
    //   352: aload_2
    //   353: getfield 141	kagegames/apps/DWBeta/GraphView:mHeight	F
    //   356: fstore_2
    //   357: fload_2
    //   358: fstore 9
    //   360: fload 8
    //   362: fload 9
    //   364: fcmpg
    //   365: istore 8
    //   367: iload 8
    //   369: ifge +296 -> 665
    //   372: aload_0
    //   373: astore_2
    //   374: aload_2
    //   375: getfield 67	kagegames/apps/DWBeta/GraphView:mWidth	F
    //   378: fstore_2
    //   379: fload_2
    //   380: fstore 8
    //   382: ldc 118
    //   384: fstore 9
    //   386: fload 8
    //   388: fload 9
    //   390: fmul
    //   391: fstore 28
    //   393: ldc -86
    //   395: fstore 8
    //   397: fload 28
    //   399: fload 8
    //   401: fsub
    //   402: fstore 27
    //   404: ldc 6
    //   406: fstore 8
    //   408: fload 28
    //   410: fload 8
    //   412: fmul
    //   413: fstore 29
    //   415: iconst_0
    //   416: istore 21
    //   418: iconst_3
    //   419: istore 8
    //   421: iload 21
    //   423: istore_2
    //   424: iload 8
    //   426: istore_3
    //   427: iload_2
    //   428: iload_3
    //   429: if_icmplt +6 -> 435
    //   432: aload_0
    //   433: monitorexit
    //   434: return
    //   435: iconst_1
    //   436: istore 8
    //   438: aload_1
    //   439: astore_2
    //   440: iload 8
    //   442: istore_3
    //   443: aload_2
    //   444: iload_3
    //   445: invokevirtual 51	android/graphics/Canvas:save	(I)I
    //   448: pop
    //   449: ldc 6
    //   451: fstore 8
    //   453: fload 8
    //   455: fload 27
    //   457: fmul
    //   458: fstore 8
    //   460: ldc 1
    //   462: fstore 9
    //   464: fload 8
    //   466: fload 9
    //   468: fadd
    //   469: fstore 8
    //   471: aload_1
    //   472: astore_2
    //   473: fload 29
    //   475: fstore_3
    //   476: fload 8
    //   478: fstore 4
    //   480: aload_2
    //   481: fload_3
    //   482: fload 4
    //   484: invokevirtual 145	android/graphics/Canvas:translate	(FF)V
    //   487: iconst_1
    //   488: istore 8
    //   490: aload_1
    //   491: astore_2
    //   492: iload 8
    //   494: istore_3
    //   495: aload_2
    //   496: iload_3
    //   497: invokevirtual 51	android/graphics/Canvas:save	(I)I
    //   500: pop
    //   501: ldc -101
    //   503: istore 8
    //   505: aload 12
    //   507: iload 8
    //   509: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   512: aload_1
    //   513: astore_2
    //   514: fload 27
    //   516: fstore_3
    //   517: fload 27
    //   519: fstore 4
    //   521: aload_2
    //   522: fload_3
    //   523: fload 4
    //   525: invokevirtual 74	android/graphics/Canvas:scale	(FF)V
    //   528: aload_0
    //   529: astore_2
    //   530: aload_2
    //   531: getfield 55	kagegames/apps/DWBeta/GraphView:mRect	Landroid/graphics/RectF;
    //   534: astore_2
    //   535: aload_2
    //   536: astore 8
    //   538: aload_1
    //   539: astore_2
    //   540: aload 8
    //   542: astore_3
    //   543: aload 12
    //   545: astore 4
    //   547: aload_2
    //   548: aload_3
    //   549: aload 4
    //   551: invokevirtual 68	android/graphics/Canvas:drawOval	(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    //   554: aload_1
    //   555: invokevirtual 32	android/graphics/Canvas:restore	()V
    //   558: ldc 115
    //   560: fstore 8
    //   562: fload 27
    //   564: fload 8
    //   566: fsub
    //   567: fstore 8
    //   569: ldc 115
    //   571: fstore 9
    //   573: fload 27
    //   575: fload 9
    //   577: fsub
    //   578: fstore 9
    //   580: aload_1
    //   581: astore_2
    //   582: fload 8
    //   584: fstore_3
    //   585: fload 9
    //   587: fstore 4
    //   589: aload_2
    //   590: fload_3
    //   591: fload 4
    //   593: invokevirtual 74	android/graphics/Canvas:scale	(FF)V
    //   596: ldc -34
    //   598: istore 8
    //   600: aload 12
    //   602: iload 8
    //   604: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   607: aload 26
    //   609: iload 21
    //   611: faload
    //   612: fstore 8
    //   614: fload 8
    //   616: fneg
    //   617: fstore 8
    //   619: aload_1
    //   620: astore_2
    //   621: fload 8
    //   623: fstore_3
    //   624: aload_2
    //   625: fload_3
    //   626: invokevirtual 171	android/graphics/Canvas:rotate	(F)V
    //   629: aload_1
    //   630: astore_2
    //   631: aload 25
    //   633: astore_3
    //   634: aload 12
    //   636: astore 4
    //   638: aload_2
    //   639: aload_3
    //   640: aload 4
    //   642: invokevirtual 78	android/graphics/Canvas:drawPath	(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    //   645: aload_1
    //   646: invokevirtual 32	android/graphics/Canvas:restore	()V
    //   649: fload 29
    //   651: fload 28
    //   653: fadd
    //   654: fstore 29
    //   656: iload 21
    //   658: iconst_1
    //   659: iadd
    //   660: istore 21
    //   662: goto -244 -> 418
    //   665: aload_0
    //   666: astore_2
    //   667: aload_2
    //   668: getfield 141	kagegames/apps/DWBeta/GraphView:mHeight	F
    //   671: fstore_2
    //   672: fload_2
    //   673: fstore 8
    //   675: ldc 118
    //   677: fstore 9
    //   679: fload 8
    //   681: fload 9
    //   683: fmul
    //   684: fstore 20
    //   686: ldc -86
    //   688: fstore 8
    //   690: fload 20
    //   692: fload 8
    //   694: fsub
    //   695: fstore 19
    //   697: ldc 6
    //   699: fstore 8
    //   701: fload 20
    //   703: fload 8
    //   705: fmul
    //   706: fstore 30
    //   708: iconst_0
    //   709: istore 21
    //   711: iconst_3
    //   712: istore 8
    //   714: iload 21
    //   716: istore_2
    //   717: iload 8
    //   719: istore_3
    //   720: iload_2
    //   721: iload_3
    //   722: if_icmpge -290 -> 432
    //   725: iconst_1
    //   726: istore 8
    //   728: aload_1
    //   729: astore_2
    //   730: iload 8
    //   732: istore_3
    //   733: aload_2
    //   734: iload_3
    //   735: invokevirtual 51	android/graphics/Canvas:save	(I)I
    //   738: pop
    //   739: aload_0
    //   740: astore_2
    //   741: aload_2
    //   742: getfield 67	kagegames/apps/DWBeta/GraphView:mWidth	F
    //   745: fstore_2
    //   746: fload_2
    //   747: fstore 8
    //   749: ldc 6
    //   751: fstore 9
    //   753: fload 9
    //   755: fload 19
    //   757: fmul
    //   758: fstore 9
    //   760: ldc 1
    //   762: fstore 10
    //   764: fload 9
    //   766: fload 10
    //   768: fadd
    //   769: fstore 9
    //   771: fload 8
    //   773: fload 9
    //   775: fsub
    //   776: fstore 8
    //   778: aload_1
    //   779: astore_2
    //   780: fload 8
    //   782: fstore_3
    //   783: fload 30
    //   785: fstore 4
    //   787: aload_2
    //   788: fload_3
    //   789: fload 4
    //   791: invokevirtual 145	android/graphics/Canvas:translate	(FF)V
    //   794: iconst_1
    //   795: istore 8
    //   797: aload_1
    //   798: astore_2
    //   799: iload 8
    //   801: istore_3
    //   802: aload_2
    //   803: iload_3
    //   804: invokevirtual 51	android/graphics/Canvas:save	(I)I
    //   807: pop
    //   808: ldc -101
    //   810: istore 8
    //   812: aload 12
    //   814: iload 8
    //   816: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   819: aload_1
    //   820: astore_2
    //   821: fload 19
    //   823: fstore_3
    //   824: fload 19
    //   826: fstore 4
    //   828: aload_2
    //   829: fload_3
    //   830: fload 4
    //   832: invokevirtual 74	android/graphics/Canvas:scale	(FF)V
    //   835: aload_0
    //   836: astore_2
    //   837: aload_2
    //   838: getfield 55	kagegames/apps/DWBeta/GraphView:mRect	Landroid/graphics/RectF;
    //   841: astore_2
    //   842: aload_2
    //   843: astore 8
    //   845: aload_1
    //   846: astore_2
    //   847: aload 8
    //   849: astore_3
    //   850: aload 12
    //   852: astore 4
    //   854: aload_2
    //   855: aload_3
    //   856: aload 4
    //   858: invokevirtual 68	android/graphics/Canvas:drawOval	(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    //   861: aload_1
    //   862: invokevirtual 32	android/graphics/Canvas:restore	()V
    //   865: ldc 115
    //   867: fstore 8
    //   869: fload 19
    //   871: fload 8
    //   873: fsub
    //   874: fstore 8
    //   876: ldc 115
    //   878: fstore 9
    //   880: fload 19
    //   882: fload 9
    //   884: fsub
    //   885: fstore 9
    //   887: aload_1
    //   888: astore_2
    //   889: fload 8
    //   891: fstore_3
    //   892: fload 9
    //   894: fstore 4
    //   896: aload_2
    //   897: fload_3
    //   898: fload 4
    //   900: invokevirtual 74	android/graphics/Canvas:scale	(FF)V
    //   903: ldc -34
    //   905: istore 8
    //   907: aload 12
    //   909: iload 8
    //   911: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   914: aload 26
    //   916: iload 21
    //   918: faload
    //   919: fstore 8
    //   921: fload 8
    //   923: fneg
    //   924: fstore 8
    //   926: aload_1
    //   927: astore_2
    //   928: fload 8
    //   930: fstore_3
    //   931: aload_2
    //   932: fload_3
    //   933: invokevirtual 171	android/graphics/Canvas:rotate	(F)V
    //   936: aload_1
    //   937: astore_2
    //   938: aload 25
    //   940: astore_3
    //   941: aload 12
    //   943: astore 4
    //   945: aload_2
    //   946: aload_3
    //   947: aload 4
    //   949: invokevirtual 78	android/graphics/Canvas:drawPath	(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    //   952: aload_1
    //   953: invokevirtual 32	android/graphics/Canvas:restore	()V
    //   956: fload 30
    //   958: fload 20
    //   960: fadd
    //   961: fstore 30
    //   963: iload 21
    //   965: iconst_1
    //   966: iadd
    //   967: istore 21
    //   969: goto -258 -> 711
    //   972: astore 8
    //   974: aload_0
    //   975: monitorexit
    //   976: aload 8
    //   978: athrow
    //   979: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	980	0	this	GraphView
    //   0	980	1	paramCanvas	Canvas
    //   4	45	2	localObject1	Object
    //   52	2	2	f1	float
    //   57	2	2	localGraphView1	GraphView
    //   62	26	2	f2	float
    //   92	12	2	localObject2	Object
    //   107	2	2	f3	float
    //   112	2	2	localGraphView2	GraphView
    //   117	2	2	f4	float
    //   126	217	2	localObject3	Object
    //   346	2	2	f5	float
    //   351	2	2	localGraphView3	GraphView
    //   356	2	2	f6	float
    //   373	2	2	localGraphView4	GraphView
    //   378	52	2	f7	float
    //   439	229	2	localObject4	Object
    //   671	52	2	f8	float
    //   729	13	2	localObject5	Object
    //   745	2	2	f9	float
    //   779	167	2	localObject6	Object
    //   85	360	3	localObject7	Object
    //   475	48	3	f10	float
    //   542	7	3	localObject8	Object
    //   584	42	3	f11	float
    //   633	102	3	localObject9	Object
    //   782	48	3	f12	float
    //   849	7	3	localObject10	Object
    //   891	42	3	f13	float
    //   940	7	3	localObject11	Object
    //   309	215	4	f14	float
    //   545	5	4	localObject12	Object
    //   587	5	4	f15	float
    //   636	5	4	localObject13	Object
    //   785	46	4	f16	float
    //   852	5	4	localObject14	Object
    //   894	5	4	f17	float
    //   943	5	4	localObject15	Object
    //   313	11	5	f18	float
    //   317	9	6	localObject16	Object
    //   99	158	7	localObject17	Object
    //   11	3	8	localObject18	Object
    //   54	13	8	f19	float
    //   71	3	8	bool1	boolean
    //   79	67	8	f20	float
    //   154	15	8	i	int
    //   174	9	8	f21	float
    //   291	14	8	localObject19	Object
    //   348	13	8	f22	float
    //   365	3	8	bool2	boolean
    //   380	31	8	f23	float
    //   419	22	8	j	int
    //   451	26	8	f24	float
    //   488	20	8	f25	float
    //   536	5	8	localObject20	Object
    //   560	23	8	f26	float
    //   598	5	8	k	int
    //   612	92	8	f27	float
    //   712	19	8	localObject21	Object
    //   747	34	8	f28	float
    //   795	20	8	f29	float
    //   843	5	8	localObject22	Object
    //   867	23	8	f30	float
    //   905	5	8	m	int
    //   919	10	8	f31	float
    //   972	5	8	localObject23	Object
    //   64	829	9	f32	float
    //   119	648	10	f33	float
    //   133	6	11	localObject24	Object
    //   143	46	11	f34	float
    //   300	16	11	localObject25	Object
    //   26	916	12	localObject26	Object
    //   136	5	13	n	int
    //   214	55	13	localObject27	Object
    //   196	75	14	f35	float
    //   203	70	15	f36	float
    //   218	57	16	f37	float
    //   210	67	17	f38	float
    //   222	57	18	localObject28	Object
    //   695	186	19	f39	float
    //   684	275	20	f40	float
    //   416	552	21	f41	float
    //   44	1	22	i1	int
    //   150	102	23	f42	float
    //   40	1	24	i2	int
    //   36	903	25	localObject29	Object
    //   338	577	26	localObject30	Object
    //   402	172	27	f43	float
    //   391	261	28	f44	float
    //   413	242	29	f45	float
    //   706	256	30	f46	float
    // Exception table:
    //   from	to	target	type
    //   5	10	972	finally
    //   20	25	972	finally
    //   30	35	972	finally
    //   48	53	972	finally
    //   58	63	972	finally
    //   86	91	972	finally
    //   93	98	972	finally
    //   103	108	972	finally
    //   113	118	972	finally
    //   127	132	972	finally
    //   138	145	972	finally
    //   156	163	972	finally
    //   166	173	972	finally
    //   180	195	972	finally
    //   224	239	972	finally
    //   268	283	972	finally
    //   285	290	972	finally
    //   319	330	972	finally
    //   332	337	972	finally
    //   342	347	972	finally
    //   352	357	972	finally
    //   374	379	972	finally
    //   432	434	972	finally
    //   443	449	972	finally
    //   480	487	972	finally
    //   495	501	972	finally
    //   505	512	972	finally
    //   521	528	972	finally
    //   530	535	972	finally
    //   547	554	972	finally
    //   589	596	972	finally
    //   600	607	972	finally
    //   624	629	972	finally
    //   638	645	972	finally
    //   667	672	972	finally
    //   733	739	972	finally
    //   741	746	972	finally
    //   787	794	972	finally
    //   802	808	972	finally
    //   812	819	972	finally
    //   828	835	972	finally
    //   837	842	972	finally
    //   854	861	972	finally
    //   896	903	972	finally
    //   907	914	972	finally
    //   931	936	972	finally
    //   945	952	972	finally
    //   974	976	972	finally
  }
  
  /* Error */
  public void onSensorChanged(int paramInt, float[] paramArrayOfFloat)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield 20	kagegames/apps/DWBeta/GraphView:mBitmap	Landroid/graphics/Bitmap;
    //   7: astore 4
    //   9: aload 4
    //   11: ifnull +230 -> 241
    //   14: aload_0
    //   15: getfield 58	kagegames/apps/DWBeta/GraphView:mCanvas	Landroid/graphics/Canvas;
    //   18: astore_3
    //   19: aload_0
    //   20: getfield 186	kagegames/apps/DWBeta/GraphView:mPaint	Landroid/graphics/Paint;
    //   23: astore 8
    //   25: aload_0
    //   26: getfield 126	kagegames/apps/DWBeta/GraphView:mSpeed	F
    //   29: fstore 9
    //   31: aload_0
    //   32: getfield 185	kagegames/apps/DWBeta/GraphView:mLastX	F
    //   35: fstore 4
    //   37: fload 4
    //   39: fload 9
    //   41: fadd
    //   42: fstore 6
    //   44: iconst_0
    //   45: istore 11
    //   47: iconst_2
    //   48: istore 4
    //   50: iload_1
    //   51: iload 4
    //   53: if_icmpne +184 -> 237
    //   56: iconst_0
    //   57: istore 4
    //   59: aload_2
    //   60: iload 4
    //   62: faload
    //   63: fstore 4
    //   65: fload 4
    //   67: f2d
    //   68: dstore 4
    //   70: iconst_0
    //   71: istore 14
    //   73: aload_2
    //   74: iload 14
    //   76: faload
    //   77: fstore 14
    //   79: fload 14
    //   81: f2d
    //   82: dstore 14
    //   84: dload 4
    //   86: dload 14
    //   88: dmul
    //   89: dstore 4
    //   91: dload 4
    //   93: invokestatic 11	java/lang/Math:sqrt	(D)D
    //   96: dstore 4
    //   98: dload 4
    //   100: d2f
    //   101: fstore 13
    //   103: fload 13
    //   105: invokestatic 54	java/lang/Math:abs	(F)F
    //   108: fstore 4
    //   110: ldc 115
    //   112: fstore 5
    //   114: aload_0
    //   115: getfield 125	kagegames/apps/DWBeta/GraphView:mLastMag	F
    //   118: fstore 14
    //   120: fload 14
    //   122: invokestatic 54	java/lang/Math:abs	(F)F
    //   125: fstore 14
    //   127: fload 5
    //   129: fload 14
    //   131: fmul
    //   132: fstore 5
    //   134: fload 4
    //   136: fload 5
    //   138: fcmpl
    //   139: istore 4
    //   141: iload 4
    //   143: ifle +75 -> 218
    //   146: ldc 37
    //   148: astore 4
    //   150: new 127	java/lang/StringBuilder
    //   153: astore 5
    //   155: ldc -120
    //   157: astore 14
    //   159: aload 5
    //   161: aload 14
    //   163: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   166: aload 5
    //   168: fload 13
    //   170: invokevirtual 91	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   173: astore 5
    //   175: ldc 66
    //   177: astore 14
    //   179: aload 5
    //   181: aload 14
    //   183: invokevirtual 154	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: astore 5
    //   188: aload_0
    //   189: getfield 125	kagegames/apps/DWBeta/GraphView:mLastMag	F
    //   192: fstore 14
    //   194: aload 5
    //   196: fload 14
    //   198: invokevirtual 91	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   201: astore 5
    //   203: aload 5
    //   205: invokevirtual 3	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   208: astore 5
    //   210: aload 4
    //   212: aload 5
    //   214: invokestatic 44	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   217: pop
    //   218: iconst_0
    //   219: istore 10
    //   221: iconst_3
    //   222: istore 4
    //   224: iload 10
    //   226: iload 4
    //   228: if_icmplt +16 -> 244
    //   231: aload_0
    //   232: fload 13
    //   234: putfield 125	kagegames/apps/DWBeta/GraphView:mLastMag	F
    //   237: aload_0
    //   238: invokevirtual 207	kagegames/apps/DWBeta/GraphView:invalidate	()V
    //   241: aload_0
    //   242: monitorexit
    //   243: return
    //   244: iload 11
    //   246: iconst_3
    //   247: imul
    //   248: istore 4
    //   250: iload 10
    //   252: iconst_0
    //   253: iadd
    //   254: istore 12
    //   256: aload_0
    //   257: getfield 61	kagegames/apps/DWBeta/GraphView:mYOffset	F
    //   260: fstore 4
    //   262: aload_2
    //   263: iload 10
    //   265: faload
    //   266: fstore 5
    //   268: aload_0
    //   269: getfield 103	kagegames/apps/DWBeta/GraphView:mScale	[F
    //   272: astore 14
    //   274: aload 14
    //   276: iload 11
    //   278: faload
    //   279: fstore 14
    //   281: fload 5
    //   283: fload 14
    //   285: fmul
    //   286: fstore 5
    //   288: fload 4
    //   290: fload 5
    //   292: fadd
    //   293: fstore 7
    //   295: aload_0
    //   296: getfield 16	kagegames/apps/DWBeta/GraphView:mColors	[I
    //   299: astore 4
    //   301: aload 4
    //   303: iload 12
    //   305: iaload
    //   306: istore 4
    //   308: aload 8
    //   310: iload 4
    //   312: invokevirtual 150	android/graphics/Paint:setColor	(I)V
    //   315: aload_0
    //   316: getfield 185	kagegames/apps/DWBeta/GraphView:mLastX	F
    //   319: fstore 4
    //   321: aload_0
    //   322: getfield 52	kagegames/apps/DWBeta/GraphView:mLastValues	[F
    //   325: astore 5
    //   327: aload 5
    //   329: iload 12
    //   331: faload
    //   332: fstore 5
    //   334: aload_3
    //   335: fload 4
    //   337: fload 5
    //   339: fload 6
    //   341: fload 7
    //   343: aload 8
    //   345: invokevirtual 105	android/graphics/Canvas:drawLine	(FFFFLandroid/graphics/Paint;)V
    //   348: aload_0
    //   349: getfield 52	kagegames/apps/DWBeta/GraphView:mLastValues	[F
    //   352: astore 4
    //   354: aload 4
    //   356: iload 12
    //   358: fload 7
    //   360: fastore
    //   361: iload 10
    //   363: iconst_1
    //   364: iadd
    //   365: istore 10
    //   367: goto -146 -> 221
    //   370: astore 4
    //   372: aload_0
    //   373: monitorexit
    //   374: aload 4
    //   376: athrow
    //   377: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	378	0	this	GraphView
    //   0	378	1	paramInt	int
    //   0	378	2	paramArrayOfFloat	float[]
    //   18	317	3	localCanvas	Canvas
    //   7	3	4	localBitmap	Bitmap
    //   35	3	4	f1	float
    //   48	13	4	i	int
    //   63	3	4	f2	float
    //   68	31	4	d1	double
    //   108	27	4	f3	float
    //   139	3	4	bool	boolean
    //   148	63	4	str1	String
    //   222	27	4	j	int
    //   260	29	4	f4	float
    //   299	3	4	arrayOfInt	int[]
    //   306	5	4	k	int
    //   319	17	4	f5	float
    //   352	3	4	arrayOfFloat1	float[]
    //   370	5	4	localObject1	Object
    //   112	25	5	f6	float
    //   153	60	5	localObject2	Object
    //   266	25	5	f7	float
    //   325	3	5	arrayOfFloat2	float[]
    //   332	6	5	f8	float
    //   42	298	6	f9	float
    //   293	66	7	f10	float
    //   23	321	8	localPaint	Paint
    //   29	11	9	f11	float
    //   219	147	10	m	int
    //   45	232	11	n	int
    //   254	103	12	i1	int
    //   101	132	13	f12	float
    //   71	4	14	i2	int
    //   77	3	14	f13	float
    //   82	5	14	d2	double
    //   118	12	14	f14	float
    //   157	25	14	str2	String
    //   192	5	14	f15	float
    //   272	3	14	arrayOfFloat3	float[]
    //   279	5	14	f16	float
    // Exception table:
    //   from	to	target	type
    //   3	9	370	finally
    //   14	19	370	finally
    //   25	31	370	finally
    //   59	65	370	finally
    //   73	79	370	finally
    //   91	96	370	finally
    //   103	108	370	finally
    //   114	120	370	finally
    //   146	150	370	finally
    //   155	159	370	finally
    //   166	173	370	finally
    //   175	179	370	finally
    //   188	194	370	finally
    //   203	208	370	finally
    //   210	218	370	finally
    //   231	237	370	finally
    //   241	243	370	finally
    //   256	262	370	finally
    //   268	274	370	finally
    //   295	301	370	finally
    //   308	315	370	finally
    //   321	327	370	finally
    //   334	348	370	finally
    //   354	361	370	finally
    //   372	374	370	finally
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f8 = 0.5F;
    Object localObject = Bitmap.Config.RGB_565;
    localObject = Bitmap.createBitmap(paramInt1, paramInt2, (Bitmap.Config)localObject);
    mBitmap = ((Bitmap)localObject);
    localObject = mCanvas;
    Bitmap localBitmap = mBitmap;
    ((Canvas)localObject).setBitmap(localBitmap);
    localObject = mCanvas;
    int j = -1;
    ((Canvas)localObject).drawColor(j);
    float f1 = paramInt2;
    f1 *= f8;
    mYOffset = f1;
    float[] arrayOfFloat = mScale;
    j = 0;
    float f6 = paramInt2;
    f6 *= f8;
    float f7 = 0.050986F;
    f6 *= f7;
    f6 = -f6;
    arrayOfFloat[j] = f6;
    arrayOfFloat = mScale;
    j = 1;
    f6 = paramInt2;
    f6 *= f8;
    f7 = 0.016667F;
    f6 *= f7;
    f6 = -f6;
    arrayOfFloat[j] = f6;
    float f2 = paramInt1;
    mWidth = f2;
    f2 = paramInt2;
    mHeight = f2;
    f2 = mWidth;
    float f5 = mHeight;
    boolean bool = f2 < f5;
    float f3;
    if (bool) {
      f3 = paramInt1;
    }
    float f4;
    for (mMaxX = f3;; mMaxX = f4)
    {
      f3 = mMaxX;
      mLastX = f3;
      super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
      int i = 50;
      i = paramInt1 - i;
      f4 = i;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.GraphView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */